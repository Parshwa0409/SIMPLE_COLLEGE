USE SIMPLE_COLLEGE;

CREATE TABLE IF NOT EXISTS Courses(
    ID varchar(9),
    Name varchar(255) NOT NULL,
    DepartmentID varchar(6),
    PRIMARY KEY (ID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);

INSERT INTO Courses VALUES("20CSE71","Mobile Application Development","CSE");
INSERT INTO Courses VALUES("20CSE72","Software Testing","CSE");

INSERT INTO Courses VALUES("20ISE71","Android Application Development","ISE");
INSERT INTO Courses VALUES("20ISE72","Software Testing","ISE");

INSERT INTO Courses VALUES("20AIML71","Data Mining & Machine Learning","AIML");
INSERT INTO Courses VALUES("20AIML72","Working with Tableau","AIML");