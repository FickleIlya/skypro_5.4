CREATE TABLE book
(
    id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    author_id INTEGER NOT NULL,
    CONSTRAINT book_id_pk PRIMARY KEY (id),
    CONSTRAINT book_author_id_fk FOREIGN KEY (author_id)
        REFERENCES author (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

CREATE TABLE author
(
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    CONSTRAINT author_id_pk PRIMARY KEY (id)
)


-- ANSWER

SELECT
        b.title

FROM book b
LEFT JOIN author a ON a.id = b.author_id
WHERE a.name = 'Ilya Berezenko'
