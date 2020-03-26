-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books b JOIN authors a ON b.author_id = a.id WHERE a.name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books b JOIN authors a ON b.author_id = a.id WHERE a.name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
SELECT * FROM books b JOIN authors a ON b.author_id = a.id  WHERE a.nationality = 'United Kingdom' OR a.nationality = 'China';

-- Find out how many books Albert Camus wrote.
SELECT COUNT(b.id) FROM books b JOIN authors a ON b.author_id = a.id WHERE a.name = 'Albert Camus';


-- Find out how many books were written by US authors.
SELECT COUNT(b.id) FROM books b JOIN authors a ON  b.author_id = a.id WHERE a.nationality = 'United States of America';


-- Find all books written after 1930 by authors from Argentina.
SELECT * FROM books b JOIN authors a ON b.author_id = a.id WHERE a.nationality = 'Argentina' AND b.publication_date > 1930;

-- Find all books written before 1980 by authors not from the US.
SELECT * FROM books b JOIN authors a ON  b.author_id = a.id WHERE a.nationality != 'United States of America' AND b.publication_date < 1980;

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE lower(name) LIKE 'j%';

-- Find all books whose titles contain 'the'.
SELECT * FROM books WHERE lower(title) LIKE '%the%';

-- Find all authors who have written books with that start with the letter 'N'.
SELECT DISTINCT(a.id), a.name, b.title FROM authors AS a JOIN books AS b ON a.id = b.author_id WHERE lower(b.title) LIKE 'n%';
