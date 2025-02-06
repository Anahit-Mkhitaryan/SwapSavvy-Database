INSERT INTO User (user_ID, FirstName, LastName, DOB, age, gender, email, phone_number, Country, State, City, Zip_Code, Street, Apartment, nickname, user_password, bio, profile_picture, university, major, admission_year, year_of_study) 
VALUES 
(1, 'John', 'Doe', '1995-05-21', 29, 'Male', 'john.doe@example.com', '1234567890', 'USA', 'California', 'Los Angeles', '90001', '123 Elm St', 'Apt 5B', 'johndoe', 'password123', 'A software developer', NULL, 'MIT', 'Computer Science', 2013, 4),
(2, 'Jane', 'Smith', '1993-08-13', 31, 'Female', 'jane.smith@example.com', '1234567891', 'USA', 'Texas', 'Dallas', '75001', '456 Oak St', 'Apt 3C', 'janesmith', 'password123', 'A graphic designer', NULL, 'Harvard', 'Design', 2012, 4),
(3, 'Mike', 'Johnson', '1989-02-15', 35, 'Male', 'mike.johnson@example.com', '1234567892', 'Canada', 'Ontario', 'Toronto', 'M5A 1A1', '789 Pine St', 'Apt 2D', 'mikej', 'password123', 'An entrepreneur', NULL, 'U of T', 'Business', 2007, 8),
(4, 'Emily', 'Davis', '1992-07-22', 32, 'Female', 'emily.davis@example.com', '1234567893', 'UK', 'London', 'London', 'EC1A 1AA', '101 Maple St', 'Apt 10E', 'emilyd', 'password123', 'A digital marketer', NULL, 'Oxford', 'Marketing', 2010, 6),
(5, 'Tom', 'Wilson', '1990-01-11', 34, 'Male', 'tom.wilson@example.com', '1234567894', 'Australia', 'Queensland', 'Brisbane', '4000', '202 Birch St', 'Apt 8F', 'tomw', 'password123', 'A lawyer', NULL, 'UQ', 'Law', 2008, 7),
(6, 'Sarah', 'Brown', '1987-12-25', 37, 'Female', 'sarah.brown@example.com', '1234567895', 'USA', 'Florida', 'Miami', '33101', '303 Cedar St', 'Apt 7G', 'sarahb', 'password123', 'A financial analyst', NULL, 'Stanford', 'Finance', 2005, 9),
(7, 'David', 'Miller', '1996-03-05', 28, 'Male', 'david.miller@example.com', '1234567896', 'Germany', 'Berlin', 'Berlin', '10115', '404 Ash St', 'Apt 6H', 'davidm', 'password123', 'A software engineer', NULL, 'TU Berlin', 'Software Engineering', 2014, 3),
(8, 'Linda', 'Martinez', '1994-04-19', 30, 'Female', 'linda.martinez@example.com', '1234567897', 'Mexico', 'CDMX', 'Mexico City', '01000', '505 Fir St', 'Apt 4I', 'lindam', 'password123', 'A photographer', NULL, 'UNAM', 'Art', 2012, 5),
(9, 'James', 'Garcia', '1988-10-07', 36, 'Male', 'james.garcia@example.com', '1234567898', 'USA', 'New York', 'New York', '10001', '606 Spruce St', 'Apt 9J', 'jamesg', 'password123', 'A content creator', NULL, 'Columbia', 'Media Studies', 2006, 10),
(10, 'Olivia', 'Martinez', '1991-09-23', 33, 'Female', 'olivia.martinez@example.com', '1234567899', 'USA', 'Texas', 'Austin', '73301', '707 Walnut St', 'Apt 2K', 'oliviam', 'password123', 'A product manager', NULL, 'UT Austin', 'Business', 2011, 5),
(11, 'Daniel', 'Lee', '1995-06-17', 29, 'Male', 'daniel.lee@example.com', '1234567900', 'Canada', 'British Columbia', 'Vancouver', 'V6B 1A1', '808 Maple St', 'Apt 1L', 'daniel', 'password123', 'A marketing specialist', NULL, 'UBC', 'Marketing', 2013, 4),
(12, 'Sophia', 'Lopez', '1993-11-08', 31, 'Female', 'sophia.lopez@example.com', '1234567901', 'Spain', 'Madrid', 'Madrid', '28001', '909 Birch St', 'Apt 3M', 'sophial', 'password123', 'A nurse', NULL, 'Madrid U', 'Nursing', 2011, 6),
(13, 'Benjamin', 'Harris', '1985-02-28', 39, 'Male', 'benjamin.harris@example.com', '1234567902', 'USA', 'California', 'San Francisco', '94110', '1010 Pine St', 'Apt 4N', 'benjaminh', 'password123', 'A teacher', NULL, 'UCLA', 'Education', 2003, 11),
(14, 'Charlotte', 'Clark', '1992-09-11', 32, 'Female', 'charlotte.clark@example.com', '1234567903', 'UK', 'Manchester', 'Manchester', 'M1 1AA', '111 Ash St', 'Apt 5O', 'charlottec', 'password123', 'A journalist', NULL, 'Manchester', 'Journalism', 2010, 6),
(15, 'Henry', 'Walker', '1986-01-09', 38, 'Male', 'henry.walker@example.com', '1234567904', 'USA', 'Nevada', 'Las Vegas', '89101', '1210 Oak St', 'Apt 2P', 'henryw', 'password123', 'A chef', NULL, 'UNLV', 'Culinary Arts', 2004, 8);

INSERT INTO Moderator (moderator_ID, FirstName, LastName, email, phone_number, moderator_password, profile_picture, moderator_role, permission_level) 
VALUES 
(1, 'Alice', 'Wright', 'alice.wright@example.com', '9876543210', 'modpassword123', NULL, 'Senior Moderator', 5),
(2, 'John', 'Taylor', 'john.taylor@example.com', '9876543211', 'modpassword123', NULL, 'Moderator', 3),
(3, 'Rebecca', 'Johnson', 'rebecca.johnson@example.com', '9876543212', 'modpassword123', NULL, 'Junior Moderator', 2),
(4, 'Michael', 'Davis', 'michael.davis@example.com', '9876543213', 'modpassword123', NULL, 'Senior Moderator', 5),
(5, 'Emily', 'Williams', 'emily.williams@example.com', '9876543214', 'modpassword123', NULL, 'Moderator', 4),
(6, 'Daniel', 'Moore', 'daniel.moore@example.com', '9876543215', 'modpassword123', NULL, 'Junior Moderator', 2),
(7, 'Sophia', 'Taylor', 'sophia.taylor@example.com', '9876543216', 'modpassword123', NULL, 'Moderator', 3),
(8, 'James', 'Anderson', 'james.anderson@example.com', '9876543217', 'modpassword123', NULL, 'Senior Moderator', 5),
(9, 'Olivia', 'Jackson', 'olivia.jackson@example.com', '9876543218', 'modpassword123', NULL, 'Junior Moderator', 2),
(10, 'William', 'Harris', 'william.harris@example.com', '9876543219', 'modpassword123', NULL, 'Moderator', 3),
(11, 'Charlotte', 'Martin', 'charlotte.martin@example.com', '9876543220', 'modpassword123', NULL, 'Senior Moderator', 5),
(12, 'Henry', 'Moore', 'henry.moore@example.com', '9876543221', 'modpassword123', NULL, 'Moderator', 4),
(13, 'Isabella', 'Roberts', 'isabella.roberts@example.com', '9876543222', 'modpassword123', NULL, 'Junior Moderator', 2),
(14, 'Daniel', 'Walker', 'daniel.walker@example.com', '9876543223', 'modpassword123', NULL, 'Senior Moderator', 5),
(15, 'Megan', 'Perez', 'megan.perez@example.com', '9876543224', 'modpassword123', NULL, 'Moderator', 3);

INSERT INTO Request (request_ID, user_ID, title, request_description, category, request_status, priority, creation_date, expiry_date, request_value, completion_date) 
VALUES 
(1, 1, 'Software Development', 'Request for software development services.', 'Development', 'Pending', 1, '2024-01-15', '2024-02-15', 2000.00, NULL),
(2, 2, 'Logo Design', 'Need a new logo for my startup.', 'Design', 'Completed', 2, '2024-01-20', '2024-02-10', 500.00, '2024-02-08'),
(3, 3, 'Business Consultation', 'Request for business growth consultation.', 'Consultation', 'Pending', 3, '2024-01-25', '2024-02-25', 1500.00, NULL),
(4, 4, 'SEO Services', 'Request for SEO optimization of website.', 'SEO', 'In Progress', 1, '2024-02-01', '2024-03-01', 1200.00, NULL),
(5, 5, 'Website Redesign', 'Request for redesigning an outdated website.', 'Design', 'Completed', 2, '2024-02-05', '2024-02-25', 800.00, '2024-02-22'),
(6, 6, 'Content Writing', 'Request for content writing for blogs.', 'Writing', 'Pending', 3, '2024-02-10', '2024-03-10', 400.00, NULL),
(7, 7, 'App Development', 'Request for mobile app development.', 'Development', 'In Progress', 1, '2024-02-12', '2024-03-12', 3000.00, NULL),
(8, 8, 'Photography', 'Request for professional photography services for an event.', 'Photography', 'Completed', 2, '2024-02-15', '2024-03-01', 1000.00, '2024-02-28'),
(9, 9, 'Market Research', 'Request for conducting a market research study.', 'Consultation', 'Pending', 3, '2024-02-18', '2024-03-18', 700.00, NULL),
(10, 10, 'Translation Services', 'Request for translation of documents from English to Spanish.', 'Translation', 'Completed', 2, '2024-02-20', '2024-03-10', 300.00, '2024-03-05'),
(11, 11, 'E-commerce Setup', 'Request for setting up an online store.', 'Development', 'In Progress', 1, '2024-02-25', '2024-03-25', 2500.00, NULL),
(12, 12, 'Interior Design', 'Request for interior design consultation.', 'Design', 'Pending', 3, '2024-03-01', '2024-04-01', 1500.00, NULL),
(13, 13, 'Social Media Management', 'Request for managing social media profiles.', 'Marketing', 'Completed', 2, '2024-03-05', '2024-03-25', 600.00, '2024-03-20'),
(14, 14, 'Branding Strategy', 'Request for developing a complete branding strategy.', 'Consultation', 'Pending', 3, '2024-03-10', '2024-04-10', 1800.00, NULL),
(15, 15, 'Product Photography', 'Request for product photography for e-commerce website.', 'Photography', 'In Progress', 1, '2024-03-12', '2024-04-12', 1200.00, NULL);

INSERT INTO Review (review_ID, user_ID, rating, review_comment, creation_date) 
VALUES 
(1, 1, 5, 'Excellent service, highly recommended!', '2024-02-10'),
(2, 2, 4, 'Good logo design, but took longer than expected.', '2024-02-12'),
(3, 3, 5, 'The consultation was very insightful and helpful.', '2024-02-14'),
(4, 4, 3, 'The SEO work was average, needed more attention to detail.', '2024-02-16'),
(5, 5, 4, 'Website redesign was good, but could use more customization options.', '2024-02-18'),
(6, 6, 5, 'Content writing was great and on time.', '2024-02-20'),
(7, 7, 5, 'App development exceeded expectations, very satisfied.', '2024-02-22'),
(8, 8, 4, 'Photography was good, but a bit rushed.', '2024-02-24'),
(9, 9, 5, 'Market research was thorough and provided valuable insights.', '2024-02-26'),
(10, 10, 5, 'Translation was accurate and timely.', '2024-02-28'),
(11, 11, 5, 'E-commerce store setup was flawless, very happy with the result.', '2024-03-02'),
(12, 12, 4, 'Interior design consultation was useful but could have included more options.', '2024-03-04'),
(13, 13, 5, 'Social media management has been excellent, engagement has increased.', '2024-03-06'),
(14, 14, 3, 'Branding strategy was good but lacked innovation.', '2024-03-08'),
(15, 15, 5, 'Product photography was top-notch, really enhanced our listings.', '2024-03-10');

INSERT INTO Report (report_ID, user_ID, report_type, report_comment, attachments, report_status, creation_date, resolving_date, resolution_notes) 
VALUES 
(1, 1, 'Spam', 'Received unsolicited promotional messages.', NULL, 'Resolved', '2024-01-01', '2024-01-03', 'Issue resolved by blocking the sender.'),
(2, 2, 'Harassment', 'Received repeated aggressive messages from a user.', NULL, 'Unresolved', '2024-01-05', NULL, NULL),
(3, 3, 'Scam', 'Exposed to a fraudulent service offering.', NULL, 'Resolved', '2024-01-07', '2024-01-10', 'Investigation completed and account flagged.'),
(4, 4, 'Spam', 'Received phishing emails.', NULL, 'Resolved', '2024-01-10', '2024-01-12', 'Email marked as spam and account blocked.'),
(5, 5, 'Harassment', 'User was sending abusive messages.', NULL, 'Unresolved', '2024-01-15', NULL, NULL),
(6, 6, 'Spam', 'Multiple spam messages received on social media.', NULL, 'Resolved', '2024-01-20', '2024-01-23', 'Account flagged and reporting tools enabled.'),
(7, 7, 'Scam', 'Fake job offer email received.', NULL, 'Resolved', '2024-01-22', '2024-01-25', 'User was informed and account protection measures were applied.'),
(8, 8, 'Harassment', 'Trolling in comment section.', NULL, 'Resolved', '2024-01-25', '2024-01-27', 'Troll account banned and comment section moderated.'),
(9, 9, 'Scam', 'Investment scam email received.', NULL, 'Resolved', '2024-02-01', '2024-02-03', 'Refund processed for affected users.'),
(10, 10, 'Spam', 'Irrelevant promotional messages sent to inbox.', NULL, 'Resolved', '2024-02-05', '2024-02-07', 'Promotions filter activated.'),
(11, 11, 'Harassment', 'Offensive comments posted on profile.', NULL, 'Unresolved', '2024-02-08', NULL, NULL),
(12, 12, 'Scam', 'Fake account offering fake products.', NULL, 'Resolved', '2024-02-12', '2024-02-15', 'Fake account banned and scam alert issued.'),
(13, 13, 'Spam', 'Spam text messages from unknown number.', NULL, 'Unresolved', '2024-02-18', NULL, NULL),
(14, 14, 'Harassment', 'Cyberbullying on social media platform.', NULL, 'Resolved', '2024-02-20', '2024-02-23', 'User was reported and blocked from the platform.'),
(15, 15, 'Scam', 'Fake support team trying to steal login credentials.', NULL, 'Resolved', '2024-02-25', '2024-02-28', 'Credentials reset and two-factor authentication enabled.');

INSERT INTO Message (message_ID, user_ID, content, message_type, creation_date, read_status, is_deleted) 
VALUES 
(1, 1, 'Hello, I am interested in your project.', 'Inquiry', '2024-01-01', 'Read', FALSE),
(2, 2, 'Please review my proposal for logo design.', 'Proposal', '2024-01-05', 'Unread', FALSE),
(3, 3, 'I have some questions about the terms of service.', 'Inquiry', '2024-01-07', 'Read', FALSE),
(4, 4, 'Attached is my portfolio for your review.', 'Submission', '2024-01-10', 'Unread', FALSE),
(5, 5, 'Following up on our previous conversation.', 'Follow-up', '2024-01-12', 'Read', FALSE),
(6, 6, 'Looking forward to your feedback on the content.', 'Follow-up', '2024-01-15', 'Unread', FALSE),
(7, 7, 'I’m excited about the upcoming project!', 'Inquiry', '2024-01-18', 'Read', FALSE),
(8, 8, 'Please provide the final feedback on my submission.', 'Follow-up', '2024-01-20', 'Unread', FALSE),
(9, 9, 'Sending over the requested files for review.', 'Submission', '2024-01-22', 'Read', FALSE),
(10, 10, 'Can you please update me on the progress?', 'Inquiry', '2024-01-25', 'Unread', FALSE),
(11, 11, 'Here’s the updated version of my work.', 'Submission', '2024-01-28', 'Read', FALSE),
(12, 12, 'Is there any feedback on the branding strategy?', 'Follow-up', '2024-02-01', 'Unread', FALSE),
(13, 13, 'This is the final report for your review.', 'Submission', '2024-02-03', 'Read', FALSE),
(14, 14, 'Would love to hear your thoughts on the design.', 'Inquiry', '2024-02-06', 'Unread', FALSE),
(15, 15, 'Let’s discuss the next steps for the project.', 'Follow-up', '2024-02-10', 'Read', FALSE);

INSERT INTO Resource (resource_ID, user_ID, title, category, resource_description, availability_status, location, resource_condition, resource_value, creation_date, is_active) 
VALUES 
(1, 1, 'Laptop', 'Electronics', 'High-end laptop for coding.', 'Available', 'California', 'New', 1200.00, '2024-01-01', TRUE),
(2, 2, 'Camera', 'Photography', 'DSLR camera for professional photography.', 'Available', 'Texas', 'Used', 800.00, '2024-01-05', TRUE),
(3, 3, 'Office Chair', 'Furniture', 'Ergonomic chair for office use.', 'Unavailable', 'Ontario', 'New', 150.00, '2024-01-07', FALSE),
(4, 4, 'Projector', 'Electronics', 'HD projector for presentations.', 'Available', 'London', 'Used', 600.00, '2024-01-10', TRUE),
(5, 5, 'Drone', 'Electronics', 'Professional drone for aerial photography.', 'Available', 'Australia', 'New', 1200.00, '2024-01-12', TRUE),
(6, 6, 'Whiteboard', 'Office Supplies', 'Large whiteboard for brainstorming sessions.', 'Available', 'Florida', 'New', 200.00, '2024-01-15', TRUE),
(7, 7, 'Smartphone', 'Electronics', 'Latest model smartphone.', 'Unavailable', 'Berlin', 'Used', 700.00, '2024-01-18', FALSE),
(8, 8, 'Microwave', 'Appliances', 'Compact microwave for office kitchen.', 'Available', 'Mexico', 'New', 100.00, '2024-01-20', TRUE),
(9, 9, 'Desk', 'Furniture', 'Standing desk for ergonomic working.', 'Available', 'New York', 'New', 350.00, '2024-01-22', TRUE),
(10, 10, 'Headphones', 'Electronics', 'Noise-canceling headphones for work.', 'Unavailable', 'California', 'Used', 250.00, '2024-01-25', FALSE),
(11, 11, 'Camera Lens', 'Photography', 'Wide-angle camera lens for professional shoots.', 'Available', 'Vancouver', 'New', 500.00, '2024-01-28', TRUE),
(12, 12, 'Laptop Stand', 'Office Supplies', 'Adjustable laptop stand for desks.', 'Available', 'Madrid', 'New', 50.00, '2024-02-01', TRUE),
(13, 13, 'Printer', 'Electronics', 'High-speed printer for office use.', 'Available', 'San Francisco', 'Used', 150.00, '2024-02-03', TRUE),
(14, 14, 'Refrigerator', 'Appliances', 'Mini fridge for office use.', 'Unavailable', 'Manchester', 'New', 180.00, '2024-02-05', FALSE),
(15, 15, 'Smartwatch', 'Electronics', 'Fitness tracking smartwatch.', 'Available', 'Nevada', 'New', 300.00, '2024-02-10', TRUE);

INSERT INTO Skill (skill_ID, user_ID, title, category, skill_description, proficiency_level, experience, creation_date, is_active) 
VALUES 
(1, 1, 'Python Programming', 'Development', 'Expert in Python for data science and web development.', 'Advanced', 5, '2024-01-01', TRUE),
(2, 2, 'Graphic Design', 'Design', 'Experienced in Adobe Photoshop and Illustrator.', 'Advanced', 4, '2024-01-05', TRUE),
(3, 3, 'Business Strategy', 'Consulting', 'Expert in strategic planning and business development.', 'Expert', 7, '2024-01-07', TRUE),
(4, 4, 'SEO Optimization', 'Marketing', 'Experienced in on-page and off-page SEO strategies.', 'Intermediate', 3, '2024-01-10', TRUE),
(5, 5, 'Web Development', 'Development', 'Proficient in HTML, CSS, and JavaScript.', 'Advanced', 4, '2024-01-12', TRUE),
(6, 6, 'Content Writing', 'Writing', 'Skilled in writing blogs, articles, and marketing content.', 'Advanced', 5, '2024-01-15', TRUE),
(7, 7, 'App Development', 'Development', 'Experienced in building mobile apps with React Native.', 'Advanced', 4, '2024-01-18', TRUE),
(8, 8, 'Photography', 'Photography', 'Expert in product and event photography.', 'Advanced', 5, '2024-01-20', TRUE),
(9, 9, 'Market Research', 'Consulting', 'Skilled in conducting market research and analysis.', 'Intermediate', 3, '2024-01-22', TRUE),
(10, 10, 'Translation', 'Language', 'Fluent in English, Spanish, and French for document translation.', 'Expert', 6, '2024-01-25', TRUE),
(11, 11, 'Project Management', 'Management', 'Experienced in managing teams and client projects.', 'Advanced', 5, '2024-01-28', TRUE),
(12, 12, 'Interior Design', 'Design', 'Skilled in creating modern and functional living spaces.', 'Intermediate', 3, '2024-02-01', TRUE),
(13, 13, 'Social Media Management', 'Marketing', 'Skilled in managing and growing social media platforms.', 'Advanced', 4, '2024-02-03', TRUE),
(14, 14, 'Branding', 'Marketing', 'Experienced in developing branding strategies for businesses.', 'Advanced', 5, '2024-02-05', TRUE),
(15, 15, 'Cooking', 'Culinary Arts', 'Professional chef with experience in multiple cuisines.', 'Expert', 6, '2024-02-10', TRUE);

INSERT INTO Service (service_ID, user_ID, title, category, service_description, proficiency_level, experience, price_per_hour, location, creation_date, is_active) 
VALUES 
(1, 1, 'Web Development', 'Development', 'Building custom websites for clients.', 'Advanced', 5, 50.00, 'California', '2024-01-01', TRUE),
(2, 2, 'Logo Design', 'Design', 'Creating custom logos for businesses and individuals.', 'Advanced', 4, 40.00, 'Texas', '2024-01-05', TRUE),
(3, 3, 'Business Consulting', 'Consulting', 'Helping businesses grow through strategic planning.', 'Expert', 7, 100.00, 'Ontario', '2024-01-07', TRUE),
(4, 4, 'SEO Optimization', 'Marketing', 'Optimizing websites for better search engine ranking.', 'Intermediate', 3, 30.00, 'London', '2024-01-10', TRUE),
(5, 5, 'App Development', 'Development', 'Building mobile apps for Android and iOS.', 'Advanced', 4, 70.00, 'Australia', '2024-01-12', TRUE),
(6, 6, 'Content Writing', 'Writing', 'Writing articles, blogs, and social media content.', 'Advanced', 5, 25.00, 'Florida', '2024-01-15', TRUE),
(7, 7, 'Photography', 'Photography', 'Event and product photography for all occasions.', 'Advanced', 5, 50.00, 'Berlin', '2024-01-18', TRUE),
(8, 8, 'Translation', 'Language', 'Professional translation services for documents.', 'Expert', 6, 40.00, 'Mexico', '2024-01-20', TRUE),
(9, 9, 'Market Research', 'Consulting', 'Conducting thorough market analysis for businesses.', 'Intermediate', 3, 35.00, 'New York', '2024-01-22', TRUE),
(10, 10, 'Event Planning', 'Management', 'Planning and organizing events and conferences.', 'Advanced', 4, 60.00, 'California', '2024-01-25', TRUE),
(11, 11, 'Project Management', 'Management', 'Managing and leading client projects to completion.', 'Advanced', 5, 75.00, 'Vancouver', '2024-01-28', TRUE),
(12, 12, 'Interior Design', 'Design', 'Creating stylish and functional interiors for homes.', 'Intermediate', 3, 45.00, 'Madrid', '2024-02-01', TRUE),
(13, 13, 'Social Media Management', 'Marketing', 'Managing and growing social media accounts for businesses.', 'Advanced', 4, 30.00, 'San Francisco', '2024-02-03', TRUE),
(14, 14, 'Brand Strategy', 'Marketing', 'Developing brand strategies and marketing campaigns.', 'Advanced', 5, 90.00, 'Manchester', '2024-02-05', TRUE),
(15, 15, 'Catering', 'Culinary Arts', 'Providing catering services for events and parties.', 'Expert', 6, 150.00, 'Nevada', '2024-02-10', TRUE);

INSERT INTO Certificate (certificate_ID, user_ID, title, category, issuing_organization, issue_date, expiration_date, certification_level, certification_URL, certificate_description, certificate_file, creation_date, is_active) 
VALUES 
(1, 1, 'Certified Python Developer', 'Development', 'Python Institute', '2023-05-10', '2025-05-10', 'Advanced', 'https://pythoninstitute.org', 'Certificate for proficiency in Python programming.', NULL, '2024-01-01', TRUE),
(2, 2, 'Graphic Design Expert', 'Design', 'Adobe', '2023-06-15', '2025-06-15', 'Advanced', 'https://adobe.com', 'Certificate for advanced skills in graphic design.', NULL, '2024-01-05', TRUE),
(3, 3, 'Business Strategy Certification', 'Consulting', 'Harvard Business School', '2023-07-20', '2025-07-20', 'Expert', 'https://hbs.edu', 'Certified in advanced business strategy development.', NULL, '2024-01-07', TRUE),
(4, 4, 'SEO Specialist Certification', 'Marketing', 'Google', '2023-08-10', '2025-08-10', 'Intermediate', 'https://google.com', 'Certification for search engine optimization knowledge.', NULL, '2024-01-10', TRUE),
(5, 5, 'Certified Web Developer', 'Development', 'FreeCodeCamp', '2023-09-01', '2025-09-01', 'Advanced', 'https://freecodecamp.org', 'Certificate in full-stack web development.', NULL, '2024-01-12', TRUE),
(6, 6, 'Content Writing Certification', 'Writing', 'Content Writers Association', '2023-10-05', '2025-10-05', 'Advanced', 'https://contentwriters.com', 'Certified content writer with a focus on SEO writing.', NULL, '2024-01-15', TRUE),
(7, 7, 'Certified Mobile App Developer', 'Development', 'Udacity', '2023-11-15', '2025-11-15', 'Advanced', 'https://udacity.com', 'Certification for mobile app development with React Native.', NULL, '2024-01-18', TRUE),
(8, 8, 'Photography Certification', 'Photography', 'National Photography Institute', '2023-12-01', '2025-12-01', 'Advanced', 'https://photographyinstitute.org', 'Certified photographer with advanced editing skills.', NULL, '2024-01-20', TRUE),
(9, 9, 'Certified Market Researcher', 'Consulting', 'Market Research Institute', '2023-12-15', '2025-12-15', 'Intermediate', 'https://marketresearch.org', 'Certificate in market analysis and consumer behavior research.', NULL, '2024-01-22', TRUE),
(10, 10, 'Certified Translator', 'Language', 'American Translators Association', '2023-12-30', '2025-12-30', 'Expert', 'https://atanet.org', 'Certification for translation in English and Spanish.', NULL, '2024-01-25', TRUE),
(11, 11, 'Certified Project Manager', 'Management', 'PMI', '2024-01-01', '2026-01-01', 'Advanced', 'https://pmi.org', 'Certification in project management practices and methodologies.', NULL, '2024-01-28', TRUE),
(12, 12, 'Interior Design Certification', 'Design', 'Interior Designers Association', '2024-02-01', '2026-02-01', 'Intermediate', 'https://interiordesigners.com', 'Certification for interior design with a focus on residential projects.', NULL, '2024-02-03', TRUE),
(13, 13, 'Certified Social Media Manager', 'Marketing', 'Social Media Examiner', '2024-02-15', '2026-02-15', 'Advanced', 'https://socialmediaexaminer.com', 'Certification for managing and growing social media profiles for businesses.', NULL, '2024-02-06', TRUE),
(14, 14, 'Brand Strategy Certification', 'Marketing', 'Branding Institute', '2024-03-01', '2026-03-01', 'Advanced', 'https://brandinginstitute.com', 'Certification for developing effective brand strategies.', NULL, '2024-02-10', TRUE),
(15, 15, 'Culinary Arts Certification', 'Culinary', 'Culinary Institute of America', '2024-03-10', '2026-03-10', 'Expert', 'https://culinary.edu', 'Certification for advanced culinary skills and restaurant management.', NULL, '2024-02-12', TRUE);

INSERT INTO Notification (notification_ID, sender_ID, sender_type, message, read_status, creation_date, priority, action_URL)
VALUES 
(1, 1, 'Request', 'Your request for a web development project has been submitted successfully.', 'Unread', '2024-01-01', 1, 'https://swapsavvy.com/requests/1'),
(2, 1, 'Report', 'Your report has been marked as resolved by the admin team.', 'Read', '2024-01-05', 2, 'https://swapsavvy.com/reports/1'),
(3, 1, 'Review', 'A new review has been posted for your project.', 'Unread', '2024-01-07', 1, 'https://swapsavvy.com/reviews/1'),
(4, 1, 'Message', 'You have received a new message from a user about your service.', 'Unread', '2024-01-10', 3, 'https://swapsavvy.com/messages/1'),
(5, 2, 'Request', 'Your request for an SEO service has been completed.', 'Read', '2024-01-12', 2, 'https://swapsavvy.com/requests/2'),
(6, 2, 'Report', 'A report you submitted has been marked for review.', 'Unread', '2024-01-15', 2, 'https://swapsavvy.com/reports/2'),
(7, 2, 'Review', 'Your review has been responded to by the service provider.', 'Read', '2024-01-18', 3, 'https://swapsavvy.com/reviews/2'),
(8, 3, 'Message', 'You have a new message about your design proposal.', 'Unread', '2024-01-20', 1, 'https://swapsavvy.com/messages/3'),
(9, 3, 'Request', 'Your photography service request has been marked as completed.', 'Read', '2024-01-22', 2, 'https://swapsavvy.com/requests/3'),
(10, 3, 'Report', 'Your scam report has been reviewed and flagged for action.', 'Unread', '2024-01-25', 1, 'https://swapsavvy.com/reports/3'),
(11, 4, 'Review', 'A new review has been posted for your photography service.', 'Read', '2024-01-28', 2, 'https://swapsavvy.com/reviews/4'),
(12, 4, 'Message', 'You have received feedback on your market research request.', 'Unread', '2024-02-01', 3, 'https://swapsavvy.com/messages/4'),
(13, 5, 'Request', 'Your request for project management services is in progress.', 'Read', '2024-02-03', 1, 'https://swapsavvy.com/requests/5'),
(14, 5, 'Report', 'Your report has been marked for resolution.', 'Unread', '2024-02-05', 1, 'https://swapsavvy.com/reports/5'),
(15, 5, 'Review', 'Your review for a recent project has been approved.', 'Read', '2024-02-10', 2, 'https://swapsavvy.com/reviews/5');


INSERT INTO CertificateModeration (certificate_ID, moderator_ID) 
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO SkillModeration (skill_ID, moderator_ID) 
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO ServiceModeration (service_ID, moderator_ID) 
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO ResourceModeration (resource_ID, moderator_ID) 
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO ReportModeration (report_ID, moderator_ID) 
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO ReviewModeration (review_ID, moderator_ID) 
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO RequestModeration (request_ID, moderator_ID) 
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

INSERT INTO UserModeration (user_ID, moderator_ID) 
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);
