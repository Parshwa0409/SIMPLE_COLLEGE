USE SIMPLE_COLLEGE;

CREATE TABLE IF NOT EXISTS UserTypes(
    ID int,
    Type varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO UserTypes VALUES(1,"Principal");
INSERT INTO UserTypes VALUES(2,"Dean Of Academics");
INSERT INTO UserTypes VALUES(3,"HOD");
INSERT INTO UserTypes VALUES(4,"Teacher");
INSERT INTO UserTypes VALUES(5,"Non Teaching Staff");
INSERT INTO UserTypes VALUES(6,"Student");