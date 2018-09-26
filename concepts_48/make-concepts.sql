-- This file makes all materialized views in this subfolder
-- Note that this may take a large amount of time and hard drive space

\echo 'Beginning to create materialized views for MIMIC database.'


\echo 'Directory 1 of 2: firstday (48 hours)'
-- data which is extracted from a patient's first ICU stay
\i firstday/blood-gas-first-day.sql
\i firstday/blood-gas-first-day-arterial.sql
\i firstday/gcs-first-day.sql
\i firstday/labs-first-day.sql
\i firstday/urine-output-first-day.sql
\i firstday/ventilation-first-day.sql
\i firstday/vitals-first-day.sql

-- Severity of illness scores (requires many views from above)
\echo 'Directory 2 of 2: severityscores (48 hours)'
\i severityscores/sofa.sql
\i severityscores/saps.sql
\i severityscores/sapsii.sql

\echo 'Finished loading materialized views.'
