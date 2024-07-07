-- Preliminary, given code

create database Fitness_Center_db;

use Fitness_Center_db;

CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task 1:

insert into Members (name, age)
values ('Albert', '25'),
('Bertha', '33'),
('Carlos', '29'),
('Darius', '41'),
('Jane Doe', '36'),
('John Smith', '47');


insert into WorkoutSessions (member_id, session_date, session_time, activity)
values ('5', '2023-12-17', '08:30', 'Swimming laps'),
('6', '2024-01-15', '12:30', 'Running');

-- select*from WorkoutSessions;
-- select*from Members

-- Task 2:

update WorkoutSessions
set session_time = '18:00'
where session_id = 3;

-- select*from WorkoutSessions;
-- select*from Members

 -- Task 3: 

update WorkoutSessions
set member_id = '3'
where member_id = '6';

delete from Members 
where id = '6';
delete from WorkoutSessions
where member_id = '3';

select*from WorkoutSessions;
select*from Members