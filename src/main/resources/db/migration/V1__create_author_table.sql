create table IF NOT EXISTS authors (
    id UUID PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    password VARCHAR(100) NOT NULL
);