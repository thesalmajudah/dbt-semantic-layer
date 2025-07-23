
  create or replace   view lightdash_db.bi.base_bank_failures
  
   as (
    SELECT *
FROM bank_failures
  );

