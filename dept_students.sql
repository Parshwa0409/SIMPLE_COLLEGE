USE SIMPLE_COLLEGE;

-- UNIQUE BECAUSE ONE STUDENT BELONGS TO ONE BRANCH
CREATE TABLE IF NOT EXISTS DepartmentStudents(
    StudentID varchar(16) UNIQUE, 
    DeptID varchar(6),
    FOREIGN KEY (StudentID) REFERENCES Users(ID),
    FOREIGN KEY (DeptID) REFERENCES Departments(ID)
);

INSERT INTO DepartmentStudents VALUES("1NH20CS151","CSE");
INSERT INTO DepartmentStudents VALUES("1NH20CS125","CSE");
INSERT INTO DepartmentStudents VALUES("1NH20CS145","CSE");
INSERT INTO DepartmentStudents VALUES("1NH20IS006","ISE");
INSERT INTO DepartmentStudents VALUES("1NH20IS120","ISE");
INSERT INTO DepartmentStudents VALUES("1NH20AI036","AIML");

-- GET STUDENTS OF SPECIFIC BRANCH, Select * from DepartmentStudents where DeptID=<ID>;
-- INNER JOIN WITH "Users" & "DepatmentStudents" TABLE & FILTER PARTICULAR BRANCH THAT WE NEED GIVES DETAILS OF ALL THE STUDENTS IN A PARTICULAR BRANCH.