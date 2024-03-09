-- TEACHER & COURSES HANDLED BY THEM
CREATE VIEW AS TeacherCourses
SELECT 
    TeacherID,
    Name,
    Email,
    CourseID 
FROM CourseHandledBy 
    INNER JOIN Users ON TeacherID=Users.ID;

-- STUDENTS & COURSES ENROLLED BY THEM
CREATE VIEW AS StudentCourses
SELECT 
    StudentID,
    Name,
    CourseID 
FROM CourseEnrolledBy 
    INNER JOIN Users ON StudentID=Users.ID
ORDER BY StudentID, Name, CourseID;

-- STUDENT WITH THEIR DETAILS & WHICH DEPARTMENT THEY BELONG TOO
CREATE VIEW AS StudentDepartmentDetails
SELECT 
    StudentID,
    Name,
    Email,
    DeptID 
FROM DepartmentStudents 
    INNER JOIN Users ON Users.ID=StudentID;

-- RELATION BETWEEN STUDENT & TEACHERS THROUGH THE CoursesEnrolledBy STUDENTS;
CREATE VIEW AS StudentToughtBy 
SELECT      
    CourseEnrolledBy.StudentID AS USN,   
    Users.name AS TeacherName,  
    Courses.Name AS CourseName,         
    CourseHandledBY.CourseID    
FROM CourseEnrolledBy      
    INNER JOIN CourseHandledBy ON CourseEnrolledBy.CourseID=CourseHandledBy.CourseID     
    INNER JOIN  Users ON CourseHandledBy.TeacherID=Users.ID       
    INNER JOIN Courses ON CourseHandledBY.CourseID = Courses.ID 
ORDER BY CourseID,USN;

-- TOTAL MARKS OF STUDENTS
CREATE VIEW TotalMarks AS  
SELECT 
    StudentID, 
    Name, 
    Sum(Marks) AS Total 
FROM MarksScored 
    INNER JOIN Users on Users.ID=StudentID  
GROUP BY StudentID 
ORDER BY Total;

