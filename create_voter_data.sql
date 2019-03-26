CREATE TABLE precincts(
   ID INT PRIMARY KEY     NOT NULL,
   CountyCode            INT     NOT NULL,
   PrecinctId            INT     NOT NULL,
   District        VARCHAR(50),
   DistrictName        VARCHAR(50),
   DistrictTypeCode        VARCHAR(50),
   PrecinctNumber        VARCHAR(50),
   PrecinctName        VARCHAR(50),
);