-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
--  SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name='George R.R. Martin';
 id |                title                | publication_date | author_id | id |        name        |       nationality        | birth_year 
----+-------------------------------------+------------------+-----------+----+--------------------+--------------------------+------------
 63 | A Game of Thrones                   |             1996 |         8 |  8 | George R.R. Martin | United States of America |       1945
 64 | A Clash of Kings                    |             1998 |         8 |  8 | George R.R. Martin | United States of America |       1945
 65 | A Storm of Swords                   |             2000 |         8 |  8 | George R.R. Martin | United States of America |       1945
 66 | A Feast for Crows                   |             2005 |         8 |  8 | George R.R. Martin | United States of America |       1945
 67 | A Dance with Dragons                |             2011 |         8 |  8 | George R.R. Martin | United States of America |       1945
 68 | I Swear the Dragons are Coming Soon |             2014 |         8 |  8 | George R.R. Martin | United States of America |       1945
(6 rows)

-- Find all fields (book and author related) for all books written by Milan Kundera.
--  SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name='Milan Kundera';
 id |                title                | publication_date | author_id | id |     name      |  nationality   | birth_year 
----+-------------------------------------+------------------+-----------+----+---------------+----------------+------------
 49 | The Joke                            |             1967 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
 50 | The Farewell Waltz                  |             1972 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
 51 | Life Is Elsewhere                   |             1973 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
 52 | The Book of Laughter and Forgetting |             1978 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
 53 | The Unbearable Lightness of Being   |             1984 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
 54 | Immortality                         |             1990 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
 55 | Slowness                            |             1995 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
 56 | Identity                            |             1998 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
 57 | Ignorance                           |             2000 |         6 |  6 | Milan Kundera | Czechoslovakia |       1929
(9 rows)

-- Find all books written by an author from China or the UK.
--  SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'China'OR authors.nationality = 'United States of America';
 id |                      title                       | publication_date | author_id | id |        name        |       nationality        | birth_year 
----+--------------------------------------------------+------------------+-----------+----+--------------------+--------------------------+------------
  1 | Dream of the Red Chamber                         |             1750 |         1 |  1 | Cao Xueqin         | China                    |       1715
 10 | Go Tell It on the Mountain                       |             1953 |         3 |  3 | James Baldwin      | United States of America |       1924
 11 | The Amen Corner                                  |             1954 |         3 |  3 | James Baldwin      | United States of America |       1924
 12 | Notes of a Native Son                            |             1955 |         3 |  3 | James Baldwin      | United States of America |       1924
 13 | Giovannis Room                                   |             1956 |         3 |  3 | James Baldwin      | United States of America |       1924
 14 | Nobody Knows My Name: More Notes of a Native Son |             1961 |         3 |  3 | James Baldwin      | United States of America |       1924
 15 | Another Country                                  |             1962 |         3 |  3 | James Baldwin      | United States of America |       1924
 16 | A Talk to Teachers                               |             1963 |         3 |  3 | James Baldwin      | United States of America |       1924
 17 | The Fire Next Time                               |             1963 |         3 |  3 | James Baldwin      | United States of America |       1924
 18 | Blues for Mister Charlie                         |             1964 |         3 |  3 | James Baldwin      | United States of America |       1924
 19 | Going to Meet the Man                            |             1965 |         3 |  3 | James Baldwin      | United States of America |       1924
 20 | Tell Me How Long the Trains Been Gone            |             1968 |         3 |  3 | James Baldwin      | United States of America |       1924
 21 | No Name in the Street                            |             1972 |         3 |  3 | James Baldwin      | United States of America |       1924
 22 | If Beale Street Could Talk                       |             1974 |         3 |  3 | James Baldwin      | United States of America |       1924
 23 | The Devil Finds Work                             |             1976 |         3 |  3 | James Baldwin      | United States of America |       1924
 24 | Just Above My Head                               |             1979 |         3 |  3 | James Baldwin      | United States of America |       1924
 25 | Jimmys Blues                                     |             1983 |         3 |  3 | James Baldwin      | United States of America |       1924
 26 | The Evidence of Things Not Seen                  |             1985 |         3 |  3 | James Baldwin      | United States of America |       1924
 27 | The Price of the Ticket                          |             1985 |         3 |  3 | James Baldwin      | United States of America |       1924
 28 | The Cross of Redemption: Uncollected Writings    |             2010 |         3 |  3 | James Baldwin      | United States of America |       1924
 29 | Jimmys Blues and Other Poems                     |             2014 |         3 |  3 | James Baldwin      | United States of America |       1924
 63 | A Game of Thrones                                |             1996 |         8 |  8 | George R.R. Martin | United States of America |       1945
 64 | A Clash of Kings                                 |             1998 |         8 |  8 | George R.R. Martin | United States of America |       1945
 65 | A Storm of Swords                                |             2000 |         8 |  8 | George R.R. Martin | United States of America |       1945
 66 | A Feast for Crows                                |             2005 |         8 |  8 | George R.R. Martin | United States of America |       1945
 67 | A Dance with Dragons                             |             2011 |         8 |  8 | George R.R. Martin | United States of America |       1945
 68 | I Swear the Dragons are Coming Soon              |             2014 |         8 |  8 | George R.R. Martin | United States of America |       1945
(27 rows)

-- Find out how many books Albert Camus wrote.
-- SELECT COUNT(*)  FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name='Albert Camus';
 count 
-------
     5
(1 row)

-- Find out how many books were written by US authors.
--  SELECT COUNT(*)  FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality='United States of America';
 count 
-------
    26
(1 row)

-- Find all books written after 1930 by authors from Argentina.
--  SELECT COUNT(*)  FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality='Argentina' AND books.publication_date > 1930;
 count 
-------
     4
(1 row)

-- Find all books written before 1980 by authors not from the US.
--  SELECT COUNT(*)  FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality!='Argentina' AND books.publication_date > 1980;
 count 
-------
    36
(1 row)

-- Find all authors whose names start with 'J'.
--  SELECT COUNT(*)  FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name LIKE 'J%';
 count 
-------
    38
(1 row)


-- Find all books whose titles contain 'the'.
--  SELECT COUNT(*)  FROM books JOIN authors ON books.author_id = authors.id WHERE books.title LIKE '%the%';
 count 
-------
    21
(1 row)


-- Find all authors who have written books with that start with the letter 'N'.
--  SELECT COUNT(*)  FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name  LIKE 'N%';
 count 
-------
     0
(1 row)
