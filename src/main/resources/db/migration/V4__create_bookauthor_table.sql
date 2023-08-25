CREATE TABLE IF NOT EXISTS book_author (
    book uuid,
    author uuid,
    CONSTRAINT book_author_pkey PRIMARY KEY (book, author),
    CONSTRAINT book_fkey FOREIGN KEY (book) REFERENCES books(id),
    CONSTRAINT author_fkey FOREIGN KEY (author) REFERENCES authors(id)
);