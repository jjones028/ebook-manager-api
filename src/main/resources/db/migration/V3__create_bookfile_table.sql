CREATE TABLE IF NOT EXISTS book_files (
    id uuid PRIMARY KEY,
    book uuid REFERENCES books (id),
    format VARCHAR(5),
    uri VARCHAR(256)
);