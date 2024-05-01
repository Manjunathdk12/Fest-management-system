-- Populate organizer table
use event_management;
INSERT INTO organizer (user_name, email, password, org_type)
VALUES
('Club Organizer', 'club_organizer@example.com', 'password1', 1),
('External Org Organizer', 'ext_org_organizer@example.com', 'password2', 2),
('PESU Management', 'pesu_management@example.com', 'password3', 3);

-- Populate student table
INSERT INTO student (user_name, email, password)
VALUES
('Student A', 'studenta@example.com', 'password1'),
('Student B', 'studentb@example.com', 'password2'),
('Student C', 'studentc@example.com', 'password3');

-- Populate event table
INSERT INTO event (org_id, event_name, description, start_time, end_time, place, date)
VALUES
(1, 'Music Festival', 'A grand music festival featuring various artists', '2024-04-28 18:00:00', '2024-04-28 23:00:00', 'City Park', '2024-04-28'),
(2, 'Technology Expo', 'An expo showcasing the latest in technology', '2024-05-15 10:00:00', '2024-05-15 18:00:00', 'Convention Center', '2024-05-15'),
(3, 'Art Exhibition', 'An exhibition of modern art', '2024-06-05 12:00:00', '2024-06-05 17:00:00', 'Museum', '2024-06-05');

-- Populate ticket table
INSERT INTO ticket (event_id, type, cost, no_of_seats)
VALUES
(1, 'Gold', 50.00, 100),
(1, 'Silver', 30.00, 150),
(1, 'Platinum', 80.00, 50),
(2, 'Gold', 60.00, 100),
(2, 'Silver', 40.00, 150),
(2, 'Platinum', 100.00, 50),
(3, 'Gold', 70.00, 100),
(3, 'Silver', 50.00, 150),
(3, 'Platinum', 110.00, 50);

-- Populate sales table
INSERT INTO sales (cust_id, event_id, ticket_id, ticket_type, no_of_tickets)
VALUES
(1, 1, 1, 'Gold', 2),
(2, 2, 4, 'Gold', 1),
(3, 3, 8, 'Platinum', 3);

-- Populate discount table
INSERT INTO discount (ticket_id, type, new_val)
VALUES
(1, 1, 40.00), -- Discount on Gold tickets for Event 1
(4, 2, 50.00), -- Discount on Gold tickets for Event 2
(8, 3, 100.00); -- Discount on Platinum tickets for Event 3

-- Populate club table
INSERT INTO club (org_id, name, clubName, department, faculty)
VALUES
(1, 'Music Club', 'Musicians United', 'Arts', 'Humanities');

-- Populate extOrganization table
INSERT INTO extOrganization (org_id, name, contactPerson, contactPhone, department)
VALUES
(2, 'Tech Corp', 'John Doe', '123-456-7890', 'Technology');

-- Populate pesuManagement table
INSERT INTO pesuManagement (org_id, name, department)
VALUES
(3, 'PESU Events', 'Events Management');