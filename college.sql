-- COLLEGE DATABASE

USE SIMPLE_COLLEGE;

CREATE TABLE IF NOT EXISTS Colleges(
    ID varchar(4),
    Name varchar(255) NOT NULL,
    Address varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO Colleges VALUES("1NH","New Horizon College of Engineering","Bangalore - 560103");