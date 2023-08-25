CREATE TABLE IF NOT EXISTS books (
  id uuid PRIMARY KEY,
  title VARCHAR(1000),
  cover_uri VARCHAR(256)
);