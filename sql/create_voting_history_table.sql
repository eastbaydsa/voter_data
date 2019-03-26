CREATE TABLE precincts(
   ID SERIAL PRIMARY KEY,
   CountyCode            INT     NOT NULL,
   PrecinctId            INT     NOT NULL,
   ExtractDate            DATE     NOT NULL,
   District        VARCHAR(100),
   DistrictName        VARCHAR(100),
   DistrictTypeCode        VARCHAR(100),
   PrecinctNumber        VARCHAR(100),
   PrecinctName        VARCHAR(100)
);