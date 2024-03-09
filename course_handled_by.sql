USE SIMPLE_COLLEGE;

CREATE TABLE IF NOT EXISTS CourseHandledBy(
    TeacherID varchar(16),
    CourseID varchar(9),
    FOREIGN KEY (TeacherID) REFERENCES Users(ID),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID)
);

INSERT INTO CourseHandledBy VALUES("T_NH_FL1131","20CSE71");
INSERT INTO CourseHandledBy VALUES("T_NH_FL1131","20ISE71");

INSERT INTO CourseHandledBy VALUES("T_NH_FL0409","20CSE72");
INSERT INTO CourseHandledBy VALUES("T_NH_FL0409","20ISE72");

INSERT INTO CourseHandledBy VALUES("T_NH_FL0511","20AIML71");
INSERT INTO CourseHandledBy VALUES("T_NH_FL0511","20AIML72");

-- GET THE COURSE HANDLED LIST WITH COURSE NAME, COURSE CODE & TEACHER NAME

/*
SELECT 
    Users.Name AS TeacherName,
    Courses.ID AS CourseCode,
    Courses.Name AS CourseName,
    Courses.DepartmentID AS Department 
FROM CourseHandledBy 
    INNER JOIN Courses ON CourseID=Courses.ID
    INNER JOIN Users ON TeacherID=Users.ID;
*/


-- GET RELATION BETWEEN STUDENT, TEACHER,
-- CAN STOP AT SECOND JOIN, FURTHER QUERY IS DONE TO GET COURSE DETAILS TOO.
/*
SELECT 
    CourseHandledBY.CourseID,
    Courses.Name AS CourseName, 
    CourseEnrolledBy.StudentID AS USN, 
    Users.name AS TeacherName 
FROM CourseEnrolledBy 
    INNER JOIN CourseHandledBy ON CourseEnrolledBy.CourseID=CourseHandledBy.CourseID
    INNER JOIN  Users ON CourseHandledBy.TeacherID=Users.ID  
    INNER JOIN Courses ON CourseHandledBY.CourseID = Courses.ID;
*/