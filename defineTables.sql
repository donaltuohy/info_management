CREATE TABLE County(
    ID INTEGER not null,
    Name VARCHAR(20) not null,
    PRIMARY KEY (ID)
);

CREATE TABLE Board_Member(
    PPS NUMBER(9,0) not null,
    County_ID INTEGER not null,
    Name VARCHAR2(20) not null,
    Phone_no INTEGER not null,
    Address VARCHAR2(50) not null
    PRIMARY KEY (PPS),
    FOREIGN KEY (County_ID) REFERENCES County(ID),
    CONSTRAINT check_PPS CHECK (PPS < 1000000000)
);

CREATE TABLE Division(
    ID INTEGER not null,
    Name VARCHAR(30) not null,
    County_ID INTEGER not null,
    PRIMARY KEY (Division_ID),
    FOREIGN KEY (County_ID) REFERENCES County(ID)
);

CREATE TABLE Team(
    ID INTEGER not null,
    Division_ID INTEGER not null,
    Manager_ID INTEGER not null, 
    Name VARCHAR(20) not null,
    Town VARCHAR(20),
    PRIMARY KEY (ID),
    FOREIGN KEY (Division_ID) REFERENCES Division(ID),
    FOREIGN KEY (Manager_ID) REFERENCES Manager(ID)
);

CREATE TABLE Pitch(
    ID INTEGER not null,
    Name VARCHAR(20) not null,
    County_ID INTEGER not null,
    Address VARCHAR(50) not null,
    PRIMARY KEY(ID),
    FOREIGN KEY (County_ID) REFERENCES County(ID)
);

CREATE TABLE Match(
    ID INTEGER not null,
    Match_date VARCHAR(8) not null,
    Match_time VARCHAR(5) not null,
    Team_1_ID INTEGER not null,
    Team_2_ID INTEGER not null,
    Pitch_ID INTEGER not null,
    PRIMARY KEY (ID),
    FOREIGN KEY (Team_1_ID) REFERENCES Team(ID),
    FOREIGN KEY (Team_2_ID) REFERENCES Team(ID),
    FOREIGN KEY (Pitch_ID) REFERENCES Pitch(ID)
);

CREATE TABLE Manager(
    ID INTEGER not null,
    Name VARCHAR(20) not null,
    Address VARCHAR(50),
    Phone_no INTEGER,
    PRIMARY KEY (PPS),
    CONSTRAINT check_PPS CHECK (PPS < 1000000000)
);

CREATE TABLE Player(
    PPS NUMBER(9,0) not null,
    Name VARCHAR(20) not null,
    Team_ID INTEGER not null,
    Phone_no INTEGER,
    Address VARCHAR(50),
    PRIMARY KEY (PPS),
    FOREIGN KEY (Team_ID) REFERENCES Team(ID)
    CONSTRAINT check_PPS CHECK (PPS < 1000000000));
);


