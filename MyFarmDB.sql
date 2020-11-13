CREATE DATABASE FarmDB

GO

USE FarmDB

CREATE TABLE Owners
(
CVR INT NOT NULL,
Email VARCHAR(255),
PRIMARY KEY (CVR)
);

CREATE TABLE OwnerPhones
(
CVR INT NOT NULL,
Phone INT NOT NULL,
FOREIGN KEY (CVR) REFERENCES Owners(CVR)
);

CREATE TABLE OwnerNames
(
CVR INT NOT NULL,
FirstName VARCHAR(255),
LastName VARCHAR(255),
FOREIGN KEY (CVR) REFERENCES Owners(CVR)
);

CREATE TABLE OwnerAddresses
(
CVR INT,
No INT NOT NULL,
StreetName VARCHAR(255) NOT NULL,
Postcode INT NOT NULL,
City VARCHAR(255) NOT NULL,
FOREIGN KEY (CVR) REFERENCES Owners(CVR)
);






CREATE TABLE Farms
(
PNumber INT,
OwnerCVR INT,
Name VARCHAR(255),
PRIMARY KEY (PNumber),
FOREIGN KEY (OwnerCVR) REFERENCES Owners(CVR),
);

CREATE TABLE ChrNos
(
PNumber INT,
ChrNo INT NOT NULL,
PRIMARY KEY (ChrNo),
FOREIGN KEY (PNumber) REFERENCES Farms(PNumber)
);

CREATE TABLE FarmAddresses
(
PNumber INT,
No INT NOT NULL,
StreetName VARCHAR(255) NOT NULL,
Postcode INT NOT NULL,
City VARCHAR(255) NOT NULL,
FOREIGN KEY (PNumber) REFERENCES Farms(PNumber)
);









CREATE TABLE Stalls
(
No INT NOT NULL,
PNumber INT,
PRIMARY KEY (No),
FOREIGN KEY (PNumber) REFERENCES Farms(PNumber)
);








CREATE TABLE Boxes
(
No INT NOT NULL,
StallNo INT,
Outdoor BIT,
Type VARCHAR(255),
PRIMARY KEY (No),
FOREIGN KEY (StallNo) REFERENCES Stalls(No)
);








CREATE TABLE States
(
ID INT NOT NULL,
Severity VARCHAR(255),
PRIMARY KEY (ID)
)








CREATE TABLE SmartUnits
(
SerialNumber INT NOT NULL,
Type VARCHAR(255),
IpAddress VARCHAR(255),
MacAddress VARCHAR(255),
PRIMARY KEY (SerialNumber)
)



CREATE TABLE Earmarks
(
ID INT NOT NULL,
Color VARCHAR(255),
ChrNo INT,
PRIMARY KEY (ID)
)

CREATE TABLE Animals
(
Earmark INT NOT NULL,
Sex VARCHAR(255),
Age INT,
Birth DATE,
Death DATE,
PRIMARY KEY (Earmark),
FOREIGN KEY (Earmark) REFERENCES Earmarks(ID)
)

CREATE TABLE Produces
(
AnimalEarmark INT NOT NULL,
MotherEarmark INT,
FatherEarmark INT,
PRIMARY KEY (AnimalEarmark),
FOREIGN KEY (AnimalEarmark) REFERENCES Animals(Earmark),
FOREIGN KEY (MotherEarmark) REFERENCES Animals(Earmark),
FOREIGN KEY (FatherEarmark) REFERENCES Animals(Earmark)
)

CREATE TABLE AnimalBoxRelations
(
AnimalEarmark INT,
BoxNo INT,
MoveInTime DATETIME,
MoveOutTime DATETIME,
FOREIGN KEY (AnimalEarmark) REFERENCES Animals(Earmark),
FOREIGN KEY (BoxNo) REFERENCES Boxes(No)
)











CREATE TABLE StallSmartUnitRelations
(
StallNo INT NOT NULL,
SmartUnitSerialNumber INT NOT NULL,
PRIMARY KEY (StallNo, SmartUnitSerialNumber),
FOREIGN KEY (StallNo) REFERENCES Stalls(No),
FOREIGN KEY (SmartUnitSerialNumber) REFERENCES SmartUnits(SerialNumber)
)

CREATE TABLE SmartUnitStateRelations
(
SmartUnitSerialNumber INT NOT NULL,
StateID INT NOT NULL,
Time DATETIME,
PRIMARY KEY (StateID, SmartUnitSerialNumber),
FOREIGN KEY (SmartUnitSerialNumber) REFERENCES SmartUnits(SerialNumber),
FOREIGN KEY (StateID) REFERENCES States(ID)
)

CREATE TABLE SmartUnitBoxRelations
(
SmartUnitSerialNumber INT NOT NULL,
BoxNo INT NOT NULL,
Time DATETIME,
Value DECIMAL,
PRIMARY KEY (BoxNo, SmartUnitSerialNumber),
FOREIGN KEY (SmartUnitSerialNumber) REFERENCES SmartUnits(SerialNumber),
FOREIGN KEY (BoxNo) REFERENCES Boxes(No)
)