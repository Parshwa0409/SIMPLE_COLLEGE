USE SIMPLE_COLLEGE;

CREATE TABLE IF NOT EXISTS Users(
    ID varchar(16),
    Name varchar(255) NOT NULL,
    PhoneNumber varchar(12),
    Email varchar(255),
    UserType int,
    PRIMARY KEY(ID),
    FOREIGN KEY (UserType) REFERENCES UserTypes(ID)
);

-- STUDENT
INSERT INTO Users VALUES("1NH20CS151","PARSHWA BHARATESH PATIL","8197462988","parshwapatil9@gmail.com",6);
INSERT INTO Users VALUES("1NH20CS125","MANIKANTA PARAMESWARAPPA","8449662584","m.parameswarappa@gmail.com",6);
INSERT INTO Users VALUES("1NH20CS145","NISHANTH L","7889551234","419nishanth_l@gmail.com",6);

INSERT INTO Users VALUES("1NH20IS006","ABHISHEK ESAPNOR","6361334588","abhi_esap@gmail.com",6);
INSERT INTO Users VALUES("1NH20IS120","LISHA RANGANATH","9954647878","l.dancer@gmail.com",6);

INSERT INTO Users VALUES("1NH20AI036","JEEVAN C B","8494665544","jcb@gmail.com",6);


-- TEACHER
INSERT INTO Users VALUES("T_NH_FL1131","Teacher 1","9458586431","t_1@gmail.com",4);
INSERT INTO Users VALUES("T_NH_FL0409","Teacher 2","7064589744","t_2@gmail.com",4);
INSERT INTO Users VALUES("T_NH_FL0511","Teacher 3","9956879722","t_3@gmail.com",4);

-- HOD
INSERT INTO Users VALUES("NH_CSE","Dr. HOD CSE","94458586431","nhce_cse_hod@gmail.com",3);
INSERT INTO Users VALUES("NH_ISE","Dr. HOD ISE","94458586431","nhce_ise_hod@gmail.com",3);
INSERT INTO Users VALUES("NH_AIML","Dr. HOD AIML","94458586431","nhce_aiml_hod@gmail.com",3);
