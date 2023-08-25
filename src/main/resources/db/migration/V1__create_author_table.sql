create table IF NOT EXISTS authors (
    id uuid PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100)
);