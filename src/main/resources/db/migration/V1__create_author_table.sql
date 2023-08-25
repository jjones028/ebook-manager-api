create table IF NOT EXISTS authors (
    id uuid,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    CONSTRAINT authors_pkey PRIMARY KEY (id)
);