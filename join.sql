
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Class VARCHAR(10) NOT NULL,
    Age INT NOT NULL
);

INSERT INTO Students (Name, Class, Age)
VALUES
('jaya', '10', 15),
('shreya', '11', 16),
('jay', '9', 14),
('heer', '12', 17);


CREATE TABLE Marks (
    MarkID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT NOT NULL,
    Subject VARCHAR(50) NOT NULL,
    Marks INT NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Marks (StudentID, Subject, Marks)
VALUES
(1, 'Mathematics', 90),
(1, 'Science', 85),
(2, 'Mathematics', 88),
(3, 'Science', 78),
(5, 'Science', 80); -- Note: StudentID 5 is not in Students table for testing JOINs

/*SELECT Students.StudentID, Students.Name, Marks.Subject, Marks.Marks
FROM Students
INNER JOIN Marks
ON Students.StudentID = Marks.StudentID;*/

SELECT Students.StudentID,Students.Name,Marks.Subject,Marks.Marks
FROM Students 
INNER JOIN Marks
ON Students.StudentID = Marks.StudentID;

SELECT Students.StudentID, Students.Name, Marks.Subject, Marks.Marks
FROM Students
LEFT JOIN Marks
ON Students.StudentID = Marks.StudentID;

SELECT Students.StudentID, Students.Name, Marks.Subject, Marks.Marks
FROM Students
RIGHT JOIN Marks
ON Students.StudentID = Marks.StudentID;

SELECT Students.StudentID, Students.Name, Marks.Subject, Marks.Marks
FROM Students
FULL OUTER JOIN Marks
ON Students.StudentID = Marks.StudentID;

