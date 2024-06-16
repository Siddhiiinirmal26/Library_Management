-- List all books by a specific author
SELECT b.title
FROM Books b
JOIN Authors a ON b.author_id = a.author_id
WHERE a.name = 'J.K. Rowling';

-- Add a new member
INSERT INTO Members (name, join_date) VALUES ('John Doe', '2024-06-01');

-- Borrow a book
INSERT INTO Loans (book_id, member_id, borrow_date) VALUES (1, 1, '2024-06-10');
