-- create the filtered table on land_use_codes. 
-- DROP TABLE  "s3"."gold_real_estate_intender".mls_listings_recent_filter_land_use_codes;
CREATE TABLE "s3"."gold_real_estate_intender".mls_listings_recent_filter_land_use_codes AS
SELECT 
    p.land_use_code,
    m.*
FROM "s3"."gold_real_estate_intender".mls_listings_recent m
JOIN "olympus"."bronze_corelogic"."property_basic2" p
    ON m.clip = p.clip
WHERE p.land_use_code IN (
    '111', -- COOPERATIVE
    '112', -- CONDOMINIUM
    '199', -- TIME SHARE CONDO
    '100', -- RESIDENTIAL (NEC)
    '102', -- TOWNHOUSE/ROWHOUSE
    '109', -- CABIN
    '135', -- MOBILE HOME LOT
    '137', -- MOBILE HOME
    '138', -- MANUFACTURED HOME
    '148', -- PUD
    '160', -- RURAL HOMESITE
    '163'  -- SFR
);

select * from  "s3"."gold_real_estate_intender".mls_listings_recent_filter_land_use_codes limit 10; 
