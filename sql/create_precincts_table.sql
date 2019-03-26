CREATE TABLE precincts(
   ID SERIAL PRIMARY KEY,
   CountyCode            INT     NOT NULL,
   PrecinctId            INT     NOT NULL,
   ExtractDate            DATE     NOT NULL,
   District        VARCHAR(100)     NOT NULL,
   DistrictName        VARCHAR(100)     NOT NULL,
   DistrictTypeCode        VARCHAR(100)     NOT NULL,
   PrecinctNumber        VARCHAR(100)     NOT NULL,
   PrecinctName        VARCHAR(100)     NOT NULL
);