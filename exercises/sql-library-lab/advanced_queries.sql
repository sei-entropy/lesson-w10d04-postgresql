-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause
OK I WILL TRY MY BEST.
-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON authors.name = 'George R.R. Martin';
-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors ON authors.name = 'Milan Kundera';
-- Find all books written by an author from China or the UK.
SELECT * FROM books LEFT JOIN authors ON authors.nationality = 'United Kingdom' OR authors.nationality = 'China';
-- Find out how many books Albert Camus wrote.
postgres=# SELECT COUNT(*) FROM books JOIN authors ON authors.name = 'Albert Camus';
-- Find out how many books were written by US authors.
SELECT COUNT(*) FROM books JOIN authors ON authors.nationality = 'United States of America';
-- Find all books written after 1930 by authors from Argentina.
SELECT title AS book_name FROM books JOIN authors ON books.publication_date > 1930 AND authors.nationality='Argentina';
-- Find all books written before 1980 by authors not from the US.
SELECT title AS book_name FROM books JOIN authors ON books.publication_date < 1980 AND authors.nationality != 'United States of America';
-- Find all authors whose names start with 'J'.

-- Find all books whose titles contain 'the'.

-- Find all authors who have written books with that start with the letter 'N'.
