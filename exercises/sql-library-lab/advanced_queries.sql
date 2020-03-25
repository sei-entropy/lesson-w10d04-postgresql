-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books b, authors a WHERE b.author_id = a.id AND a.name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books b, authors a WHERE b.author_id = a.id AND a.name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
SELECT * FROM books b, authors a WHERE b.author_id = a.id AND (a.nationality = 'China' OR a.nationality ='United Kingdom');

-- Find out how many books Albert Camus wrote.
SELECT COUNT(*) FROM books b, authors a WHERE b.author_id = a.id AND a.name = 'Albert Camus';

-- Find out how many books were written by US authors.
SELECT COUNT(*) FROM books b, authors a WHERE b.author_id = a.id AND a.nationality = 'United States of America';

-- Find all books written after 1930 by authors from Argentina.
SELECT COUNT(*) FROM books b, authors a WHERE b.author_id = a.id AND (b.publication_date > 1930 AND a.nationality ='Argentina');

-- Find all books written before 1980 by authors not from the US.
SELECT COUNT(*) FROM books b, authors a WHERE b.author_id = a.id AND (b.publication_date < 1980 AND a.nationality !='United States of America');

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE lower(name) LIKE 'j%';

-- Find all books whose titles contain 'the'.
SELECT * FROM books WHERE lower(title) LIKE '%the%';

-- Find all authors who have written books with that start with the letter 'N'.
SELECT DISTINCT a.* FROM authors a, books b WHERE a.id = b.author_id AND lower(b.title) LIKE 'n%';
