-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
SELECT title, publication_date FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'China' OR authors.nationality = 'United Kingdom';

-- Find out how many books Albert Camus wrote.
SELECT COUNT(title) AS books, name AS author FROM authors JOIN books ON authors.id = books.author_id WHERE name = 'Albert Camus' GROUP BY name;

-- Find out how many books were written by US authors.
SELECT COUNT(title) AS books, name AS authors FROM authors JOIN books ON authors.id = books.author_id WHERE nationality = 'United States of America' GROUP BY name;

-- Find all books written after 1930 by authors from Argentina.
SELECT COUNT(title) AS books, name AS authors FROM authors JOIN books ON authors.id = books.author_id WHERE nationality = 'Argentina' AND publication_date > 1930 GROUP BY name;

-- Find all books written before 1980 by authors not from the US.
SELECT COUNT(title) AS books, name AS authors FROM authors JOIN books ON authors.id = books.author_id WHERE nationality != 'United States of America' AND publication_date < 1980 GROUP BY name;

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE name LIKE 'J%';

-- Find all books whose titles contain 'the'.
SELECT * FROM books WHERE title LIKE '%the%';

-- Find all authors who have written books with that start with the letter 'N'.
SELECT name FROM authors JOIN books ON authors.id = books.author_id WHERE title LIKE 'N%';