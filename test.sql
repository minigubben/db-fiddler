-- Always keep BEGIN and ROLLBACK as this will prevent the changes from being saved to the database allowing the script to be run multiple times.
BEGIN; -- Begin a transaction

-- Create
CREATE TABLE FRUITS (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  color TEXT NOT NULL
);

-- Insert
INSERT INTO FRUITS(name, color) VALUES ('Banana', 'Yellow');
INSERT INTO FRUITS(name, color) VALUES ('Kiwi', 'Green');
INSERT INTO FRUITS(name, color) VALUES ('Orange', 'Orange');

-- Fetch 
SELECT * FROM FRUITS WHERE color = 'Yellow';


ROLLBACK; -- Rollback the transaction