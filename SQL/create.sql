use swapsavvy;

CREATE TABLE User (
    user_ID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DOB DATE,
    age INT,
    gender VARCHAR(10),
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(32),
    Country VARCHAR(100),
    State VARCHAR(100),
    City VARCHAR(100),
    Zip_Code VARCHAR(20),
    Street VARCHAR(100),
    Apartment VARCHAR(50),
    nickname VARCHAR(50),
    user_password VARCHAR(255) NOT NULL,
    bio TEXT,
    profile_picture BLOB,
    university VARCHAR(100),
    major VARCHAR(100),
    admission_year INT,
    year_of_study INT
);

CREATE TABLE Moderator (
    moderator_ID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(32),
    moderator_password VARCHAR(255) NOT NULL,
    profile_picture BLOB,
    moderator_role VARCHAR(50),
    permission_level INT
);

CREATE TABLE Request (
    request_ID INT PRIMARY KEY,
    user_ID INT NOT NULL,
    title VARCHAR(255),
    request_description TEXT,
    category VARCHAR(100),
    request_status VARCHAR(50),
    priority INT,
    creation_date DATE,
    expiry_date DATE,
    request_value DECIMAL(10, 2),
    completion_date DATE,
    FOREIGN KEY (user_ID) REFERENCES User(user_ID)
);

CREATE TABLE Review (
    review_ID INT PRIMARY KEY,
    user_ID INT NOT NULL,
    rating INT,
    review_comment TEXT,
    creation_date DATE,
    FOREIGN KEY (user_ID) REFERENCES User(user_ID)
);

CREATE TABLE Report (
    report_ID INT PRIMARY KEY,
    user_ID INT NOT NULL,
    report_type VARCHAR(100),
    report_comment TEXT,
    attachments BLOB,
    report_status VARCHAR(50),
    creation_date DATE,
    resolving_date DATE,
    resolution_notes TEXT,
    FOREIGN KEY (user_ID) REFERENCES User(user_ID)
);

CREATE TABLE Message (
    message_ID INT PRIMARY KEY,
    user_ID INT NOT NULL,
    content TEXT,
    message_type VARCHAR(50),
    creation_date DATE,
    read_status VARCHAR(20),
    is_deleted BOOLEAN,
    FOREIGN KEY (user_ID) REFERENCES User(user_ID)
);

CREATE TABLE Resource (
    resource_ID INT PRIMARY KEY,
    user_ID INT NOT NULL,
    title VARCHAR(255),
    category VARCHAR(100),
    resource_description TEXT,
    availability_status VARCHAR(50),
    location VARCHAR(100),
    resource_condition VARCHAR(50),
    resource_value DECIMAL(10, 2),
    creation_date DATE,
    is_active BOOLEAN,
    FOREIGN KEY (user_ID) REFERENCES User(user_ID)
);

CREATE TABLE Skill (
    skill_ID INT PRIMARY KEY,
    user_ID INT NOT NULL,
    title VARCHAR(100),
    category VARCHAR(100),
    skill_description TEXT,
    proficiency_level VARCHAR(50),
    experience INT,
    creation_date DATE,
    is_active BOOLEAN,
    FOREIGN KEY (user_ID) REFERENCES User(user_ID)
);

CREATE TABLE Service (
    service_ID INT PRIMARY KEY,
    user_ID INT NOT NULL,
    title VARCHAR(100),
    category VARCHAR(100),
    service_description TEXT,
    proficiency_level VARCHAR(50),
    experience INT,
    price_per_hour DECIMAL(10, 2),
    location VARCHAR(100),
    creation_date DATE,
    is_active BOOLEAN,
    FOREIGN KEY (user_ID) REFERENCES User(user_ID)
);

CREATE TABLE Certificate (
    certificate_ID INT PRIMARY KEY,
    user_ID INT NOT NULL,
    title VARCHAR(100),
    category VARCHAR(100),
    issuing_organization VARCHAR(100),
    issue_date DATE,
    expiration_date DATE,
    certification_level VARCHAR(50),
    certification_URL VARCHAR(255),
    certificate_description TEXT,
    certificate_file BLOB,
    creation_date DATE,
    is_active BOOLEAN,
    FOREIGN KEY (user_ID) REFERENCES User(user_ID)
);

CREATE TABLE Notification (
    notification_ID INT PRIMARY KEY,
    sender_ID INT NOT NULL, -- Generic FK pointing to various entity IDs
    sender_type VARCHAR(50) NOT NULL, -- Specifies the type of sender (e.g., 'Message', 'Report', etc.)
    message TEXT,
    read_status VARCHAR(20),
    creation_date DATE,
    priority INT,
    action_URL VARCHAR(255)
);


CREATE TABLE CertificateModeration (
    certificate_ID INT NOT NULL,
    moderator_ID INT NOT NULL,
    PRIMARY KEY (certificate_ID, moderator_ID),
    FOREIGN KEY (certificate_ID) REFERENCES Certificate(certificate_ID),
    FOREIGN KEY (moderator_ID) REFERENCES Moderator(moderator_ID)
);

CREATE TABLE SkillModeration (
    skill_ID INT NOT NULL,
    moderator_ID INT NOT NULL,
    PRIMARY KEY (skill_ID, moderator_ID),
    FOREIGN KEY (skill_ID) REFERENCES Skill(skill_ID),
    FOREIGN KEY (moderator_ID) REFERENCES Moderator(moderator_ID)
);

CREATE TABLE ServiceModeration (
    service_ID INT NOT NULL,
    moderator_ID INT NOT NULL,
    PRIMARY KEY (service_ID, moderator_ID),
    FOREIGN KEY (service_ID) REFERENCES Service(service_ID),
    FOREIGN KEY (moderator_ID) REFERENCES Moderator(moderator_ID)
);

CREATE TABLE ResourceModeration (
    resource_ID INT NOT NULL,
    moderator_ID INT NOT NULL,
    PRIMARY KEY (resource_ID, moderator_ID),
    FOREIGN KEY (resource_ID) REFERENCES Resource(resource_ID),
    FOREIGN KEY (moderator_ID) REFERENCES Moderator(moderator_ID)
);

CREATE TABLE ReportModeration (
    report_ID INT NOT NULL,
    moderator_ID INT NOT NULL,
    PRIMARY KEY (report_ID, moderator_ID),
    FOREIGN KEY (report_ID) REFERENCES Report(report_ID),
    FOREIGN KEY (moderator_ID) REFERENCES Moderator(moderator_ID)
);

CREATE TABLE ReviewModeration (
    review_ID INT NOT NULL,
    moderator_ID INT NOT NULL,
    PRIMARY KEY (review_ID, moderator_ID),
    FOREIGN KEY (review_ID) REFERENCES Review(review_ID),
    FOREIGN KEY (moderator_ID) REFERENCES Moderator(moderator_ID)
);

CREATE TABLE RequestModeration (
    request_ID INT NOT NULL,
    moderator_ID INT NOT NULL,
    PRIMARY KEY (request_ID, moderator_ID),
    FOREIGN KEY (request_ID) REFERENCES Request(request_ID),
    FOREIGN KEY (moderator_ID) REFERENCES Moderator(moderator_ID)
);

CREATE TABLE UserModeration (
    user_ID INT NOT NULL,
    moderator_ID INT NOT NULL,
    PRIMARY KEY (user_ID, moderator_ID),
    FOREIGN KEY (user_ID) REFERENCES User(user_ID),
    FOREIGN KEY (moderator_ID) REFERENCES Moderator(moderator_ID)
);
