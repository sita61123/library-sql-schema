CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  isbn TEXT UNIQUE NOT NULL
);

CREATE TABLE loans (
  id INTEGER PRIMARY KEY,
  book_id INTEGER NOT NULL REFERENCES books(id),
  loaned_at TEXT NOT NULL,
  returned_at TEXT
);
