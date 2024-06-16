-- Create Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create Members table
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL
);

-- Create Loans table
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

-- Insert sample data
INSERT INTO Authors (author_id, name) VALUES (1, 'J.K. Rowling');
INSERT INTO Books (book_id, title, author_id) VALUES (1, 'Harry Potter and the Philosopher''s Stone', 1);
INSERT INTO Members (member_id, name, join_date) VALUES (1, 'John Doe', '2024-06-01');
