Create Database DBBLGrp


Create table tblAddressSteate
(
Sn int primary key,
StateName nVarchar(100),
Brif nvarchar(10)
)



Create table tblAddressDistrict
(
Sn int primary key,
DistrictName nVarchar(100),
Brif nvarchar(10),
StateID int references tblAddressSteate(SN)
)



Create table tblAddressMetro
(
Sn int primary key,
MetroName nVarchar(100),
Brif nvarchar(10),
DistID int references tblAddressDistrict(SN)
)


Create Table TblAddressList
(
SN Bigint primary key,
Area nVarchar(100),
Ward int,
MetroID int references tblAddressMetro(SN)
)



Create Table tblLoginUser
(
SN bigint primary key,
UserName nVarchar(100),
UserPassword nVarchar(30),
)



Create Table tblCorporateUser
(
SN int primary key,
OrgName nVarchar(500),
OrgAddID bigint references tblAddressList(SN),
LoginID bigint references tblLoginUser(SN)
)



Create Table tblUserInformation
(
SN bigint primary key,
ID nvarchar(20),
FName nvarchar(100),
MName nvarchar(100),
LName nvarchar(100),
PAddressID bigint references TblAddressList(SN),
BirthPlace nVarchar(100),
DateOfBirth nVarchar(10),
DateOfJoin nVarchar(10),
BloodGroup nVarchar(2),
PrimaryPhone nvarchar(25),
PrimaryEmail nVarchar(50),
LoginID bigint references tblLoginUser(SN)
)



Create Table tblContactField
(
SN int primary key,
FieldName nVarchar(50),
)




Create Table tblContactData
(
SN Bigint Primary key,
userID bigint references tblUserInformation(SN),
ContactFieldID int references tblContactField(SN),
ContactValue nvarchar(100),
isVerified bit,

)



Create Table TblDonationProgramme
(
SN Bigint primary key,
programmeBy int,
ProgrammeArea nvarchar(100),
Note nVarchar(1000),
StartDateTime datetime,
EndDateTime datetime
)



Create Table tblBloodDonationHistory
(
SN bigint primary key,
userID bigint references tblUserInformation(SN),
DonetDate nVarchar(10),
Area nVarchar(100),
)



