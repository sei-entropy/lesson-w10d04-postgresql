-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it

DROP TABLE IF EXISTS televisions;
-- Create a televisions table


--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url

CREATE TABLE televisions (
  id SERIAL PRIMARY KEY,
  model_name INT NOT NULL,
  screen_size INT NOT NULL,
  resolution VARCHAR NOT NULL,
  price INT ,
  release_date DATE ,
  photo_url VARCHAR
);


-- Insert 4 televisions into the tv_models table
INSERT INTO televisions (model_name, screen_size, resolution ,price ,release_date ,photo_url ) VALUES ('anything', 200, 'anything',3000,20/2/2020,'anything');


-- Select all entries from the tv_models table

SELECT * FROM televisions ;
-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
