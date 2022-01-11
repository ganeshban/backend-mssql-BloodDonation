
Create table tblMediaData
(
SN bigint primary key,
OriginalFileName nVarchar(50),
Extention nVarchar(20),
FileDate datetime,
Filedata image,
UploadDateTime datetime,
DescText nVarchar(100)
)