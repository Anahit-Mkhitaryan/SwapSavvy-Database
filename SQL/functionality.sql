-- 1. Find All Open Requests by Priority

SELECT request_ID, title, category, priority, creation_date, expiry_date
FROM Request
WHERE request_status = 'Open'
ORDER BY priority DESC;

-- 2. List Reviews for a Specific User

SELECT r.review_ID, r.rating, r.review_comment, r.creation_date
FROM Review r
WHERE r.user_ID = 2;

-- 3. Find all resources, skills, services, etc., moderated by a specific moderator

SELECT rm.resource_ID AS moderated_item, 'Resource' AS type
FROM ResourceModeration rm
WHERE rm.moderator_ID = 1
UNION
SELECT sm.skill_ID AS moderated_item, 'Skill' AS type
FROM SkillModeration sm
WHERE sm.moderator_ID = 1
UNION
SELECT sem.service_ID AS moderated_item, 'Service' AS type
FROM ServiceModeration sem
WHERE sem.moderator_ID = 1;


-- 4. Find Most Frequently Used Notification Types

SELECT sender_type, COUNT(*) AS notification_count
FROM Notification
GROUP BY sender_type
ORDER BY notification_count DESC;


-- 5. Retrieve User Details with Their Active Resources

SELECT u.user_ID, u.FirstName, u.LastName, r.title AS resource_title, r.category
FROM User u
JOIN Resource r ON u.user_ID = r.user_ID
WHERE r.is_active = TRUE;


-- 6. Find Overdue Requests

SELECT request_ID, title, category, creation_date, expiry_date
FROM Request
WHERE expiry_date < CURDATE() AND request_status <> 'Completed';


-- 7. Show Users with Certifications Expiring Soon

SELECT u.user_ID, u.FirstName, u.LastName, c.title AS certification_title, c.expiration_date
FROM User u
JOIN Certificate c ON u.user_ID = c.user_ID
WHERE c.expiration_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);


-- 8. Calculate Average Rating for a User's Reviews

SELECT AVG(r.rating) AS average_rating
FROM Review r
WHERE r.user_ID = 2;


-- 9. Find Resources with High Value

SELECT r.resource_ID, r.title, r.category, r.resource_value
FROM Resource r
WHERE r.resource_value > 1000
ORDER BY r.resource_value DESC;


-- 10. Most Active Users Across Resources, Skills, and Services

SELECT 
    u.user_ID AS user_ID,
    CONCAT(u.FirstName, ' ', u.LastName) AS full_name,
    COUNT(DISTINCT r.resource_ID) AS total_resources,
    COUNT(DISTINCT sk.skill_ID) AS total_skills,
    COUNT(DISTINCT sr.service_ID) AS total_services,
    SUM(r.resource_value) AS total_resource_value
FROM 
    User u
LEFT JOIN 
    Resource r ON u.user_ID = r.user_ID AND r.is_active = TRUE
LEFT JOIN 
    Skill sk ON u.user_ID = sk.user_ID AND sk.is_active = TRUE
LEFT JOIN 
    Service sr ON u.user_ID = sr.user_ID AND sr.is_active = TRUE
GROUP BY 
    u.user_ID, u.FirstName, u.LastName
HAVING 
    COUNT(DISTINCT r.resource_ID) > 0 OR 
    COUNT(DISTINCT sk.skill_ID) > 0 OR 
    COUNT(DISTINCT sr.service_ID) > 0
ORDER BY 
    total_resources DESC, total_services DESC, total_skills DESC, total_resource_value DESC;


-- Functions

-- 1. Function to Calculate Average Rating for a User

DELIMITER $$

CREATE FUNCTION GetAverageRating(userID INT)
RETURNS DECIMAL(5, 2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE avg_rating DECIMAL(5, 2);

    SELECT AVG(r.rating) INTO avg_rating
    FROM Review r
    WHERE r.user_ID = userID;

    RETURN avg_rating;
END $$

DELIMITER ;
-- DROP FUNCTION function_name;


-- test 
SELECT GetAverageRating(2) AS average_rating;


-- 2. Function to Count Active Resources for a User

DELIMITER $$

CREATE FUNCTION CountActiveResources(userID INT)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE active_count INT;

    SELECT COUNT(*) INTO active_count
    FROM Resource
    WHERE user_ID = userID AND is_active = TRUE;

    RETURN active_count;
END $$

DELIMITER ;

-- test
SELECT CountActiveResources(5) AS total_active_resources;

-- 3. Function to Calculate Total Resource Value for a User

DELIMITER $$

CREATE FUNCTION GetTotalResourceValue(userID INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total_value DECIMAL(10, 2);

    SELECT SUM(resource_value) INTO total_value
    FROM Resource
    WHERE user_ID = userID AND is_active = TRUE;

    IF total_value IS NULL THEN
        RETURN 0.00; 
    END IF;

    RETURN total_value;
END $$

DELIMITER ;

-- test
SELECT GetTotalResourceValue(5) AS total_resource_value;


-- Views

-- 1. View for User Activity (Requests, Reviews, and Services)

CREATE VIEW UserActivity AS
SELECT 
    u.user_ID,
    CONCAT(u.FirstName, ' ', u.LastName) AS full_name,
    COUNT(DISTINCT r.request_ID) AS total_requests,
    COUNT(DISTINCT rev.review_ID) AS total_reviews,
    COUNT(DISTINCT s.service_ID) AS total_services
FROM 
    User u
LEFT JOIN 
    Request r ON u.user_ID = r.user_ID
LEFT JOIN 
    Review rev ON u.user_ID = rev.user_ID
LEFT JOIN 
    Service s ON u.user_ID = s.user_ID
GROUP BY 
    u.user_ID, u.FirstName, u.LastName;

-- test
SELECT * FROM UserActivity
WHERE user_ID = 3;


-- 2. View for Active Resources and Their Total Value

CREATE VIEW ActiveResourceValue AS
SELECT 
    u.user_ID,
    CONCAT(u.FirstName, ' ', u.LastName) AS full_name,
    COUNT(r.resource_ID) AS total_active_resources,
    SUM(r.resource_value) AS total_resource_value
FROM 
    User u
JOIN 
    Resource r ON u.user_ID = r.user_ID
WHERE 
    r.is_active = TRUE
GROUP BY 
    u.user_ID, u.FirstName, u.LastName;
    
-- test
SELECT * FROM ActiveResourceValue
WHERE user_ID = 2;

    
-- 3. View for Service Statistics by Category

CREATE VIEW ServiceStatistics AS
SELECT 
    s.category,
    COUNT(s.service_ID) AS total_services,
    AVG(s.price_per_hour) AS average_price
FROM 
    service s
WHERE 
    s.is_active = TRUE
GROUP BY 
    s.category;
    
-- test
SELECT * FROM ServiceStatistics
WHERE category = 'Design';


-- Indexing

-- 1
CREATE INDEX idx_notification_sender ON Notification (sender_ID, sender_type);

-- test query
SELECT * FROM Notification
WHERE sender_ID = 1 AND sender_type = 'Message';


-- 2
CREATE INDEX idx_request_user ON Request (user_ID);

-- test query
SELECT * FROM Request
WHERE user_ID = 2;


-- 3
CREATE INDEX idx_resource_value ON Resource (resource_value);

-- test query
SELECT * FROM Resource
WHERE resource_value > 1000
ORDER BY resource_value DESC;


-- Triggers

-- 1. Trigger to Prevent Adding a User Whose Age is Greater Than 26

DELIMITER $$

CREATE TRIGGER prevent_user_above_26
BEFORE INSERT ON User
FOR EACH ROW
BEGIN
    DECLARE calculated_age INT;
    
    -- Calculate the age from the DOB (Date of Birth)
    SET calculated_age = TIMESTAMPDIFF(YEAR, NEW.DOB, CURDATE());

    -- If the calculated age is greater than 26, prevent the insert
    IF calculated_age > 26 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot add user with age greater than 26';
    END IF;
END $$

DELIMITER ;

-- Test

INSERT INTO User (user_ID, FirstName, LastName, DOB, email)
VALUES (16, 'Mike', 'Wazovski', '1990-01-01', 'john.doe@example.com');



-- 2. Trigger to Prevent Deleting Requests with Status 'On Progress

DELIMITER $$

CREATE TRIGGER prevent_delete_on_progress
BEFORE DELETE ON Request
FOR EACH ROW
BEGIN
    IF OLD.request_status = 'On Progress' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete request while it is "On Progress"';
    END IF;
END $$

DELIMITER ;

-- test
INSERT INTO Request (request_ID, user_ID, title, request_description, request_status, priority, creation_date, expiry_date, request_value, completion_date)
VALUES (17, 2, 'Web Development', 'Develop a new website for the client', 'On Progress', 1, '2024-01-01', '2024-06-01', 2000.00, NULL);

DELETE FROM Request WHERE request_ID = 17;


-- 3. Trigger for Validating sender_type and sender_ID Compatibility

DELIMITER $$

CREATE TRIGGER check_sender_type_and_sender_ID
BEFORE INSERT ON Notification
FOR EACH ROW
BEGIN
    -- Check if sender_type is valid
    IF NEW.sender_type NOT IN ('Message', 'Report', 'Review', 'Request') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid sender_type';
    END IF;

    -- Check if the sender_ID exists in the corresponding table based on sender_type
    IF NEW.sender_type = 'Message' THEN
        -- Check if sender_ID exists in the Message table
        IF NOT EXISTS (SELECT 1 FROM Message WHERE message_ID = NEW.sender_ID) THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid sender_ID for Message type';
        END IF;
        
    ELSEIF NEW.sender_type = 'Report' THEN
        -- Check if sender_ID exists in the Report table
        IF NOT EXISTS (SELECT 1 FROM Report WHERE report_ID = NEW.sender_ID) THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid sender_ID for Report type';
        END IF;
        
    ELSEIF NEW.sender_type = 'Review' THEN
        -- Check if sender_ID exists in the Review table
        IF NOT EXISTS (SELECT 1 FROM Review WHERE review_ID = NEW.sender_ID) THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid sender_ID for Review type';
        END IF;
        
    ELSEIF NEW.sender_type = 'Request' THEN
        -- Check if sender_ID exists in the Request table
        IF NOT EXISTS (SELECT 1 FROM Request WHERE request_ID = NEW.sender_ID) THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid sender_ID for Request type';
        END IF;
    END IF;
END $$

DELIMITER ;


-- test : inserting an invalid notification
INSERT INTO Notification (notification_ID, sender_ID, sender_type, message, read_status, creation_date, priority, action_URL)
VALUES (2, 999, 'Message', 'Invalid sender ID', 'Unread', '2024-01-01', 1, 'https://example.com/messages/999');




