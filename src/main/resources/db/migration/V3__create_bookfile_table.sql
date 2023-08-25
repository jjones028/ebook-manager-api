CREATE TABLE IF NOT EXISTS book_files (
    id uuid,
    book uuid,
    format VARCHAR(5),
    uri VARCHAR(256),
    CONSTRAINT book_files_pkey PRIMARY KEY (id),
    CONSTRAINT book_fkey FOREIGN KEY (book) REFERENCES books(id)
);