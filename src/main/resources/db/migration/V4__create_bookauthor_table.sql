CREATE TABLE IF NOT EXISTS book_author (
    book uuid REFERENCES books,
    author uuid REFERENCES authors,
    PRIMARY KEY (book, author)
);