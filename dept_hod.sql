USE SIMPLE_COLLEGE;

CREATE TABLE IF NOT EXISTS DepartmentHOD(
    HOD varchar(16) UNIQUE, 
    DeptID varchar(6),
    FOREIGN KEY (HOD) REFERENCES Users(ID),
    FOREIGN KEY (DeptID) REFERENCES Departments(ID)
);


INSERT INTO DepartmentHOD VALUES ("NH_CSE","CSE");
INSERT INTO DepartmentHOD VALUES ("NH_ISE","ISE");
INSERT INTO DepartmentHOD VALUES ("NH_AIML","AIML");