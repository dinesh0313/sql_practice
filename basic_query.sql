
/*CREATE TABLE std (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade VARCHAR(5),
    EnrollmentDate DATE
);

INSERT INTO std (FirstName, LastName, Age, Grade, EnrollmentDate)
VALUES 
('John', 'Doe', 15, '10th', '2023-09-01'),
('Jane', 'Smith', 16, '11th', '2022-09-01'),
('Mike', 'Brown', 14, '9th', '2023-09-01'),
('Emily', 'Davis', 17, '12th', '2021-09-01');



select * from std

select FirstName from std where Age>15;

update std set FirstName ="mansi" where age=15;

select * from std;

delete from std where age=15;

select * from std;

select count(*) as totalcount from std;

select * from std where EnrollmentDate > '2021-09-01';



