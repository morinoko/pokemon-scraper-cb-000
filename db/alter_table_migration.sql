ALTER TABLE pokemon ADD COLUMN hp INTEGER;
UPDATE TABLE pokemon SET hp = 60 WHERE hp IS NULL;