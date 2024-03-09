USE SIMPLE_COLLEGE;

CREATE TABLE IF NOT EXISTS Departments(
    ID varchar(6),
    Name varchar(255) NOT NULL,
    CollegeID varchar(4),
    PRIMARY KEY (ID),
    FOREIGN KEY (CollegeID) REFERENCES Colleges(ID)
);

INSERT INTO Departments VALUES("CSE","Computer Science & Enggineering","1NH");
INSERT INTO Departments VALUES("ISE","Information Science & Enggineering","1NH");
INSERT INTO Departments VALUES("AIML","Artificail Intelligence & Machine Learning","1NH");


