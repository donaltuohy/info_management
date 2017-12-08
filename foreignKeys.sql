--Board Member
ALTER TABLE Board_Member
ADD CONSTRAINT FK_County_Board FOREIGN KEY (County_ID) 
    REFERENCES County(ID)
    ON DELETE set null;

--Division
ALTER TABLE Division
ADD CONSTRAINT FK_County_Division FOREIGN KEY (County_ID) 
    REFERENCES County(ID)
    ON DELETE set null;

--Club Table
ALTER TABLE Club
ADD CONSTRAINT FK_County_Club FOREIGN KEY (County_ID)
    REFERENCES County(ID)
    ON DELETE set null;

--Team Table
ALTER TABLE Team
ADD CONSTRAINT FK_Divsion_Team FOREIGN KEY (Division_ID) 
    REFERENCES Division(ID)
    ON DELETE set null;

--Team Table
ALTER TABLE Team
ADD CONSTRAINT FK_Club_Team FOREIGN KEY (Club_ID) 
    REFERENCES Club(ID)
    ON DELETE set null;

--Team Table
ALTER TABLE Team
ADD CONSTRAINT FK_Manager_Team FOREIGN KEY (Manager_ID) 
    REFERENCES Manager(ID)
    ON DELETE set null;

--Team Table
ALTER TABLE Team
ADD CONSTRAINT FK_Captain_Team FOREIGN KEY (Captain_PPS) 
    REFERENCES Captain(PPS)
    ON DELETE set null;

--Match Table
ALTER TABLE Match
ADD CONSTRAINT FK_Team1_Match FOREIGN KEY (Team_1_ID)
    REFERENCES Team(ID)
    ON DELETE cascade;

--Match Table
ALTER TABLE Match
ADD CONSTRAINT FK_Team2_Match FOREIGN KEY (Team_2_ID)
    REFERENCES Team(ID)
    ON DELETE cascade;

--Match Table
ALTER TABLE Match
ADD CONSTRAINT FK_Pitch_Match FOREIGN KEY (Pitch_ID) 
    REFERENCES Pitch(ID)
    ON DELETE NO ACTION;

--Player Table
ALTER TABLE
ADD CONSTRAINT FK_Team_Player FOREIGN KEY (Team_ID) 
    REFERENCES Team(ID)
    ON DELETE set null;