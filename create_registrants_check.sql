
CREATE TABLE registrants_check AS (

  WITH info_check AS (
    SELECT id,
      "DOB",
      DATE_PART('year', now()::date) - DATE_PART('year', "DOB"::date) as age,
      "PartyCode",
      "Email",
      "Phone1Area",
      "PlaceOfBirth"
    FROM registrants
  ) SELECT id, age,
      CASE
        WHEN age >= 18 AND age <= 25 THEN '18_to_25'
        WHEN age >= 26 AND age <= 30 THEN '26_to_30'
        WHEN age >= 31 AND age <= 35 THEN '31_to_35'
        WHEN age >= 36 AND age <= 40 THEN '36_to_40'
        WHEN age >= 41 AND age <= 45 THEN '41_to_45'
        WHEN age >= 46 AND age <= 50 THEN '46_to_50'
        WHEN age >= 51 AND age <= 55 THEN '51_to_55'
        WHEN age >= 56 AND age <= 60 THEN '56_to_60'
        WHEN age >= 61 AND age <= 65 THEN '61_to_65'
        WHEN age >= 66 AND age <= 70 THEN '66_to_70'
        WHEN age >= 71 AND age <= 75 THEN '71_to_75'
        WHEN age >= 76 AND age <= 80 THEN '76_to_80'
        WHEN age >= 81 THEN '81+'
      ELSE NULL
    END AS age_bin,
    CASE WHEN "PartyCode" IN ('REP', 'LIB', 'AI', 'REF', 'CNP') THEN 1 ELSE 0 END AS party_dnc,
    CASE WHEN "Email" IS NOT NULL THEN 1 ELSE 0 END AS has_email,
    CASE WHEN "Phone1Area" IS NOT NULL THEN 1 ELSE 0 END AS has_phone,
    CASE WHEN "PlaceOfBirth" <> 'CA' THEN 1 ELSE 0 END AS born_out_of_ca
  FROM info_check

)
