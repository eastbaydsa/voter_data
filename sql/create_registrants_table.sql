CREATE TABLE voting_history(
   ID SERIAL PRIMARY KEY,
   CountyCode            INT     NOT NULL,
   ExtractDate            DATE     NOT NULL,
   LastName        VARCHAR(100)     NOT NULL,
   FirstName        VARCHAR(100)     NOT NULL,
   MiddleName        VARCHAR(100),
   Suffix        VARCHAR(100),
   AddressNumber            INT,
   HouseFractionNumber        VARCHAR(100),
   AddressNumberSuffix        VARCHAR(100),
   StreetDirPrefix        VARCHAR(100),
   StreetName        VARCHAR(100),
   StreetType        VARCHAR(100),
   StreetDirSuffix        VARCHAR(100),
   UnitType        VARCHAR(100),
   UnitNumber        VARCHAR(100),
   City        VARCHAR(100)     NOT NULL,
   State        VARCHAR(100)     NOT NULL,
   Zip        VARCHAR(100)     NOT NULL,




   ElectionType        VARCHAR(100)     NOT NULL,
   ElectionTypeDesc        VARCHAR(100)     NOT NULL,
   ElectionDate            DATE     NOT NULL,
   Method        VARCHAR(100)     NOT NULL,
   RegistrantID            INT     NOT NULL
);