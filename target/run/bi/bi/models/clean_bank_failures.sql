
  create or replace   view lightdash_db.bi.clean_bank_failures
  
   as (
    SELECT
    State,
    COUNT(*) AS total_failures,
    SUM("Assets ($mil.)" ) AS total_assets
FROM
    lightdash_db.bi.base_bank_failures
GROUP BY
    State
  );

