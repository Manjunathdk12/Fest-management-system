create database event_management;

CREATE TABLE organizer (
    org_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    org_type INT
);

CREATE TABLE student (
    cust_id INT  AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE event (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    org_id INT,
    event_name VARCHAR(255),
    description TEXT,
    start_time DATETIME,
    end_time DATETIME,
    place VARCHAR(255),
    date DATE,
    FOREIGN KEY (org_id) REFERENCES organizer(org_id)
);

CREATE TABLE ticket (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT,
    type VARCHAR(255),
    cost DECIMAL(10, 2),
    no_of_seats INT,
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id VARCHAR(255),
    event_id INT,
    ticket_id INT,
    ticket_type VARCHAR(255),
    no_of_tickets INT,
    FOREIGN KEY (event_id) REFERENCES event(event_id),
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);

CREATE TABLE discount (
    ticket_id INT,
    type INT,
    new_val DECIMAL(10, 2),
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);

CREATE TABLE club (
    org_id INT PRIMARY KEY,
    name VARCHAR(255),
    clubName VARCHAR(255),
    department VARCHAR(255),
    faculty VARCHAR(255),
    FOREIGN KEY (org_id) REFERENCES organizer(org_id)
);

CREATE TABLE extOrganization (
    org_id INT PRIMARY KEY,
    name VARCHAR(255),
    contactPerson VARCHAR(255),
    contactPhone VARCHAR(255),
    department VARCHAR(255),
    FOREIGN KEY (org_id) REFERENCES organizer(org_id)
);

CREATE TABLE pesuManagement (
    org_id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    FOREIGN KEY (org_id) REFERENCES organizer(org_id)
);
