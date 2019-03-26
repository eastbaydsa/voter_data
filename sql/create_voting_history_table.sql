CREATE TABLE voting_history(
   ID SERIAL PRIMARY KEY,
   CountyCode            INT     NOT NULL,
   ExtractDate            DATE     NOT NULL,
   ElectionType        VARCHAR(100)     NOT NULL,
   ElectionTypeDesc        VARCHAR(100)     NOT NULL,
   ElectionDate            DATE     NOT NULL,
   ElectionName        VARCHAR(100)     NOT NULL,
   Method        VARCHAR(100)     NOT NULL,
   RegistrantID            INT     NOT NULL
);