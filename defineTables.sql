--County Table
CREATE TABLE County(
    ID INTEGER not null,
    Name VARCHAR(20) not null,
    PRIMARY KEY (ID)
);

--Board Member Table
CREATE TABLE Board_Member(
    PPS NUMBER(9,0) not null,
    County_ID INTEGER not null,
    F_Name VARCHAR(20) not null,
    L_Name VARCHAR(20) not null,
    Phone_no NUMBER(10,0) not null,
    Address VARCHAR2(50) not null,
    PRIMARY KEY (PPS),
    CONSTRAINT check_PPS CHECK (PPS < 1000000000)
);

--Division Table
CREATE TABLE Division(
    ID INTEGER not null,
    Name VARCHAR(30) not null,
    County_ID INTEGER not null,
    PRIMARY KEY (ID)
);

--Club Table
CREATE TABLE Club(
    ID INTEGER not null,
    County_ID INTEGER not null,
    Name VARCHAR(20) not null,
    Town VARCHAR(20) not null,
    PRIMARY KEY (ID)
)

--Team Table
CREATE TABLE Team(
    ID INTEGER not null,
    Division_ID INTEGER not null,
    Club_ID INTEGER not null,
    Manager_ID INTEGER not null,
    Captain_PPS NUMBER(9,0) not null,
    Points INTEGER not null,
    Won INTEGER  not null,
    Drawn INTEGER not null,
    Lost INTEGER not null,
    Score_For INTEGER not null,
    Score_Against INTEGER not null,
    PRIMARY KEY (ID)
);

--Pitch Table
CREATE TABLE Pitch(
    ID INTEGER not null,
    Name VARCHAR(20) not null,
    Address VARCHAR(50) not null,
    PRIMARY KEY(ID)
);

--Match Table
CREATE TABLE Match(
    ID INTEGER not null,
    Match_date DATE not null,
    Match_time VARCHAR(5) not null,  --"16:20" --"23.00"
    Team_1_ID INTEGER not null,
    Team_2_ID INTEGER not null,
    Pitch_ID INTEGER not null,
    Score1 INTEGER not null,
    Score2 INTEGER not null,
    PRIMARY KEY (ID)
);

--Manager Table
CREATE TABLE Manager(
    ID INTEGER not null,
    Name VARCHAR(20) not null,
    Address VARCHAR(50),
    Phone_no INTEGER,
    PRIMARY KEY (PPS),
    CONSTRAINT check_PPS CHECK (PPS < 1000000000)
);

--Player Table
CREATE TABLE Player(
    PPS NUMBER(9,0) not null,
    F_Name VARCHAR(20) not null,
    L_Name VARCHAR(20) not null,
    Phone_no NUMBER(10,0),
    Address VARCHAR(50),
    PRIMARY KEY (PPS),
    CONSTRAINT check_PPS CHECK (PPS < 1000000000)
);


