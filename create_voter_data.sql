CREATE TABLE precincts(
   ID INT PRIMARY KEY     NOT NULL,
   CountyCode            INT     NOT NULL,
   PrecinctId            INT     NOT NULL,
   District        VARCHAR(100),
   DistrictName        VARCHAR(100),
   DistrictTypeCode        VARCHAR(100),
   PrecinctNumber        VARCHAR(100),
   PrecinctName        VARCHAR(100)
);