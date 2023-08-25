CREATE TABLE IF NOT EXISTS books (
  id uuid,
  title VARCHAR(1000),
  cover_uri VARCHAR(256),
  CONSTRAINT books_pkey PRIMARY KEY (id)
);