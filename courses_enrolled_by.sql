USE SIMPLE_COLLEGE;

DROP TABLE CourseEnrolledBY;

-- DUPLICATE RECORDS NOT POSSIBLE THEREFORE COMPOSITE PRIMARY KEY.

CREATE TABLE IF NOT EXISTS CourseEnrolledBy(
    StudentID varchar(16),
    CourseID varchar(9),
    PRIMARY KEY (StudentID,CourseID),
    FOREIGN KEY (StudentID) REFERENCES Users(ID),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID)
);

INSERT INTO CourseEnrolledBy VALUES("1NH20CS151","20CSE71");
INSERT INTO CourseEnrolledBy VALUES("1NH20CS151","20CSE72");
INSERT INTO CourseEnrolledBy VALUES("1NH20CS125","20CSE71");
INSERT INTO CourseEnrolledBy VALUES("1NH20CS125","20CSE72");
INSERT INTO CourseEnrolledBy VALUES("1NH20CS145","20CSE71");
INSERT INTO CourseEnrolledBy VALUES("1NH20CS145","20CSE72");

INSERT INTO CourseEnrolledBy VALUES("1NH20IS006","20ISE71");
INSERT INTO CourseEnrolledBy VALUES("1NH20IS006","20ISE72");

INSERT INTO CourseEnrolledBy VALUES("1NH20IS120","20ISE71");
INSERT INTO CourseEnrolledBy VALUES("1NH20IS120","20ISE72");

INSERT INTO CourseEnrolledBy VALUES("1NH20AI036","20AIML71");
INSERT INTO CourseEnrolledBy VALUES("1NH20AI036","20AIML72");

/*
SELECT 
    StudentID AS USN,
    Users.Name AS StudentName,
    Courses.ID AS CourseCode,
    Courses.Name AS CourseName,
    Courses.DepartmentID AS Department 
FROM CourseEnrolled 
    inner join Courses on CourseID=Courses.ID
    inner join Users on StudentID=Users.ID;
*/