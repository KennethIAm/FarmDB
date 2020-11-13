USE FarmDB

INSERT INTO Owners (CVR, Email) VALUES (48330269, 'McDonald@McDonalds.com')

INSERT INTO OwnerPhones (CVR, Phone) VALUES (48330269, 37281949)
INSERT INTO OwnerPhones (CVR, Phone) VALUES (48330269, 37281949)

INSERT INTO OwnerNames (CVR, FirstName, LastName) VALUES (48330269, 'Donald', 'McDonald')

INSERT INTO OwnerAddresses (CVR, No, StreetName, Postcode, City) VALUES (48330269, 23, 'Donald Avenue', 2530, 'Donaldsville')

INSERT INTO Farms (PNumber, OwnerCVR, Name) VALUES (24382942, 48330269, 'Donaldfarm')

INSERT INTO ChrNos (PNumber, ChrNo) VALUES (24382942, 348975)
INSERT INTO ChrNos (PNumber, ChrNo) VALUES (24382942, 344879)

INSERT INTO FarmAddresses (PNumber, No, StreetName, Postcode, City) VALUES (24382942, 29, 'Ronald McStreet', 2530, 'Donaldsville')

INSERT INTO Stalls (No, PNumber) VALUES (1, 24382942)
INSERT INTO Stalls (No, PNumber) VALUES (2, 24382942)
INSERT INTO Stalls (No, PNumber) VALUES (3, 24382942)

INSERT INTO Boxes (No, StallNo, Outdoor, Type) VALUES (1, 1, 1, 'Bad')
INSERT INTO Boxes (No, StallNo, Outdoor, Type) VALUES (2, 1, 1, 'Bad')
INSERT INTO Boxes (No, StallNo, Outdoor, Type) VALUES (3, 2, 2, 'Bad')
INSERT INTO Boxes (No, StallNo, Outdoor, Type) VALUES (4, 2, 1, 'Good')
INSERT INTO Boxes (No, StallNo, Outdoor, Type) VALUES (5, 3, 2, 'Good')
INSERT INTO Boxes (No, StallNo, Outdoor, Type) VALUES (6, 3, 1, 'Bad')

INSERT INTO States (ID, Severity) VALUES (1, 'Good')
INSERT INTO States (ID, Severity) VALUES (2, 'Not bad')
INSERT INTO States (ID, Severity) VALUES (3, 'Meh')
INSERT INTO States (ID, Severity) VALUES (4, 'Sorta bad')
INSERT INTO States (ID, Severity) VALUES (5, 'Bad')

INSERT INTO SmartUnits (SerialNumber, Type, IpAddress, MacAddress) VALUES (324574, 'Bad', '172.168.30.2', '1d:b5:d1:ab:16:9c')

INSERT INTO Earmarks (ID, Color, ChrNo) VALUES (1, 'Green', 348975)
INSERT INTO Earmarks (ID, Color, ChrNo) VALUES (2, 'Yellow', 344879)
INSERT INTO Earmarks (ID, Color, ChrNo) VALUES (3, 'Red', 348975)

INSERT INTO Animals (Earmark, Sex, Age, Birth, Death) VALUES (1, 'Female', 4, '2016-03-11', '2020-11-13')
INSERT INTO Animals (Earmark, Sex, Age, Birth, Death) VALUES (2, 'Male', 3, '2016-12-12', NULL)
INSERT INTO Animals (Earmark, Sex, Age, Birth, Death) VALUES (3, 'Female', 1, '2019-03-11', NULL)

INSERT INTO Produces (AnimalEarmark, MotherEarmark, FatherEarmark) VALUES (3, 1, 2)

INSERT INTO AnimalBoxRelations (AnimalEarmark, BoxNo, MoveInTime, MoveOutTime) VALUES (1, 1, '2020-11-13 8:17:34', '2020-11-13 8:17:52')
INSERT INTO AnimalBoxRelations (AnimalEarmark, BoxNo, MoveInTime, MoveOutTime) VALUES (2, 2, '2020-11-13 8:17:37', '2020-11-13 8:19:22')
INSERT INTO AnimalBoxRelations (AnimalEarmark, BoxNo, MoveInTime, MoveOutTime) VALUES (2, 2, '2020-11-13 8:34:34', '2020-11-13 8:34:55')
INSERT INTO AnimalBoxRelations (AnimalEarmark, BoxNo, MoveInTime, MoveOutTime) VALUES (3, 1, '2020-11-13 8:41:39', '2020-11-13 8:47:59')
INSERT INTO AnimalBoxRelations (AnimalEarmark, BoxNo, MoveInTime, MoveOutTime) VALUES (3, 1, '2020-11-13 8:57:34', '2020-11-13 8:59:12')

INSERT INTO StallSmartUnitRelations (StallNo, SmartUnitSerialNumber) VALUES (1, 324574)

INSERT INTO SmartUnitStateRelations (SmartUnitSerialNumber, StateID, Time) VALUES (324574, 1, '2020-11-13 5:52:44')

INSERT INTO SmartUnitBoxRelations (SmartUnitSerialNumber, BoxNo, Time, Value) VALUES (324574, 1, '2020-11-13 4:32:34', '99.95')