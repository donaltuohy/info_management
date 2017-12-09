CREATE OR REPLACE TRIGGER addPointsToTeam
    AFTER UPDATE ON Match
    FOR EACH ROW
BEGIN
    if :new.Score1 != 0 THEN
    UPDATE TEAM T1
    SET T1.Score_For = T1.Score_For + :new.Score1
    WHERE T1.ID = :new.Team_1_ID;

    UPDATE TEAM T11
    SET T11.Score_Against = T11.Score_Against + :new.Score2
    WHERE T11.ID = :new.Team_1_ID;
    
    UPDATE TEAM T2
    SET T2.Score_For = T2.Score_For + :new.Score2
    WHERE T2.ID = :new.Team_2_ID;

    UPDATE TEAM T22
    SET T22.Score_Against = T22.Score_Against + :new.Score1
    WHERE T22.ID = :new.Team_2_ID;

    endif;
END; 
    