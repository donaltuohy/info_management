--County(County ID, Name)
INSERT INTO County Values(1, 'Wicklow')
INSERT INTO County Values(2, 'Dublin')
INSERT INTO County Values(3, 'Kildare')
INSERT INTO County Values(4, 'Carlow')
INSERT INTO County Values(5, 'Cork')
INSERT INTO County Values(6, 'Meath')
INSERT INTO County Values(7, 'Mayo')

--Board_Member(PPS Number, County ID, Name, Phone Number, Address)
INSERT INTO Board_Member Values(100000000, 1, 'John', 'Smith', 0871234567, '1 main road, Kilmac, Wicklow')
INSERT INTO Board_Member Values(100000001, 2, 'April', 'Long', 0871234267, '10 left road, Dalkey, Dublin')
INSERT INTO Board_Member Values(100000002, 3, 'Dan', 'Tilley', 0871524567, '63 Dark lane, Leixslip, Kildare')
INSERT INTO Board_Member Values(100000003, 4, 'Paul', 'Freehy', 0871238267, 'Number 6, Borris, Carlow')
INSERT INTO Board_Member Values(100000004, 5, 'Andrew', 'Byrne', 0861234567, 'Howardshore, Ballyhea, Cork')
INSERT INTO Board_Member Values(100000005, 6, 'Damien',  'Rice', 0871234907, 'Damiens Castle, Trim, Meath')
INSERT INTO Board_Member Values(100000006, 7, 'Dermot',  'Kennedy', 0871239007, 'Eoins Den, Westport, Mayo')

--Division(ID, Name, County ID)
INSERT INTO Division Values(1, 'Senior', 1)
INSERT INTO Division Values(2, 'Intermediate', 1)
INSERT INTO Division Values(3, 'Junior', 1)
INSERT INTO Division Values(4, 'Senior', 2)
INSERT INTO Division Values(5, 'Senior', 3)
INSERT INTO Division Values(6, 'Intermediate', 3)

--Club(ID, County ID, Name, Town)
INSERT INTO Team Values(1, 1, 'Rathnew GAA', 'Rathnew')
INSERT INTO Team Values(2, 1, 'St. Patricks GAA', 'Wicklow Town')
INSERT INTO Team Values(3, 1, 'Kilmacanogue GAA', 'Kilmacanogue')
INSERT INTO Team Values(4, 1, 'Kiltegan GAA', 'Kiltegan')
INSERT INTO Team Values(5, 1, 'Laragh GAA', 'Laragh')
INSERT INTO Team Values(6, 1, 'Kilcoole GAA', 'Kilcoole')
INSERT INTO Team Values(7, 2, 'St. Vincents GAA', 'Marino')
INSERT INTO Team Values(8, 2, 'Cuala GAA', 'Dalkey')


--Team(ID, Division ID, Club ID, Manager ID, Points, Won, Drawn, Lost, Score_For, Score_Against)
INSERT INTO Team Values(1, 1, 1, 4, 0, 0, 0, 0, 0, 0)
INSERT INTO Team Values(2, 1, 2, 2, 0, 0, 0, 0, 0, 0)
INSERT INTO Team Values(3, 1, 3, 9, 0, 0, 0, 0, 0, 0)
INSERT INTO Team Values(4, 2, 3, 1, 0, 0, 0, 0, 0, 0)
INSERT INTO Team Values(5, 2, 4, 5, 0, 0, 0, 0, 0, 0)
INSERT INTO Team Values(6, 3, 5, 8, 0, 0, 0, 0, 0, 0)
INSERT INTO Team Values(7, 3, 6, 6, 0, 0, 0, 0, 0, 0)
INSERT INTO Team Values(8, 4, 7, 7, 0, 0, 0, 0, 0, 0)
INSERT INTO Team Values(9, 4, 8, 3, 0, 0, 0, 0, 0, 0)

--Pitch(ID, Name, Address)
INSERT INTO Pitch Values(1, 'Fitzimons Park', 'Quill Road, Kilmacanogue, Wicklow')
INSERT INTO Pitch Values(2, 'Parc Ui Greystones', 'Killcarrig, Greystones, Wicklow')
INSERT INTO Pitch Values(3, 'Caraguna Stadium', 'Blackrock GAA Grounds, Dublin')
INSERT INTO Pitch Values(4, 'Cork Pitch', 'Charleville, Cork')
INSERT INTO Pitch Values(5, 'Wesport Stadium', 'Quayside, Westport, Mayo')
INSERT INTO Pitch Values(6, 'Coolkenno Park', 'Coolkenno, Wicklow')

--Match(ID, Match Date, Match Time, First Team ID, Second Team ID, Pitch ID)
INSERT INTO match Values(1, '01/09/17', "16:00", 3, 2, 2, 0, 0)
INSERT INTO match Values(2, '12/09/17', "14:00", 3, 1, 1, 0, 0)
INSERT INTO match Values(3, '25/10/17', "12:00", 4, 3, 6, 0, 0)
INSERT INTO match Values(4, '03/08/17', "11:00", 6, 7, 2, 0, 0)
INSERT INTO match Values(5, '10/09/17', "10:00", 7, 6, 1, 0, 0)
INSERT INTO match Values(6, '10/09/17', "13:00", 9, 8, 3, 0, 0)

--Manager(Manager ID, Name, Address, Phone_no)
INSERT INTO Manager Values(1, 'Gerry', 'Tuohy', 'Ardmore Heights, Bray, Wicklow', 0876573050)
INSERT INTO Manager Values(2, 'Paul', 'Daly', 'Blessigton Road, Wicklow', 0865435555)
INSERT INTO Manager Values(3, 'Niall', 'King', 'Main Road, Dublin', 0876543212)
INSERT INTO Manager Values(4, 'John', 'Kennedy', 'Not main Road, Tallaght, Dublin', 0876432121)
INSERT INTO Manager Values(5, 'Eoin', 'Rea', 'Hollywood, Wicklow', 0823412022)
INSERT INTO Manager Values(6, 'Edward' , 'Rafferty', 'Avalon, Westport, Wicklow', 0884325566)
INSERT INTO Manager Values(7, 'Nicola', 'Sturgeon', 'Edingburgh Road, Westport, Wicklow', 0841231231)
INSERT INTO Manager Values(8, 'Kenny',  'Koldrick', '1 Dalkey Road, Dalkey, Dublin')
INSERT INTO Manager Values(9, 'Ste', 'Long', '2nd place, Charleville, Cork', 0848889299)

--Player(PPS NUMBER, Name, Team_ID, Phone number, Address)
INSERT INTO Player Values(100100100, 'Donal Tuohy', 3, 0876672989, 'Killough Upper, Kilmacanogue, Wicklow')
INSERT INTO Player Values(200100100, 'Eoin Tuohy', 3, 08721493322, 'Killough Upper, Kilmacanogue, Wicklow')
INSERT INTO Player Values(300100100, 'Marcus Rafferty', 3, 0870870871, 'Kilbarrack Road, Kilmacanogue, Wicklow')
INSERT INTO Player Values(400100100, 'Cian Rafferty', 3, 0856676234, 'Kilbarrack Road, Kilmacanogue, Wicklow')
INSERT INTO Player Values(500100100, 'Marc Lennon', 4, 0853421212, '1 Main Street, Rathnew, Wicklow')
INSERT INTO Player Values(600100100, 'John Star', 4, 0843128429, '2 Main Street, Rathnew, Wicklow')
INSERT INTO Player Values(700100100, 'Gerry McCartney', 4, 0838254682, '3 Main Street, Rathnew, Wicklow')