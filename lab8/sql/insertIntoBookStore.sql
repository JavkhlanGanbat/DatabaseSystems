-- Authors
INSERT INTO Authors (Name, Bio) VALUES
('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
('George R.R. Martin', 'American novelist, famous for "A Song of Ice and Fire".'),
('J.R.R. Tolkien', 'English writer, best known for "The Lord of the Rings".'),
('Isaac Asimov', 'American author and professor of biochemistry, known for his science fiction works.'),
('Agatha Christie', 'English writer known for her detective novels, especially those featuring Hercule Poirot.');

-- Books
INSERT INTO Books (Title, AuthorID, Genre, Price) VALUES
('Harry Potter and the Sorcerer''s Stone', 1, 'Fantasy', 19.99),
('A Game of Thrones', 2, 'Fantasy', 25.99),
('The Fellowship of the Ring', 3, 'Fantasy', 22.99),
('Foundation', 4, 'Science Fiction', 15.99),
('Murder on the Orient Express', 5, 'Mystery', 10.99),
('The Two Towers', 3, 'Fantasy', 21.99),
('Harry Potter and the Chamber of Secrets', 1, 'Fantasy', 18.99),
('A Clash of Kings', 2, 'Fantasy', 26.99),
('The Return of the King', 3, 'Fantasy', 23.99),
('I, Robot', 4, 'Science Fiction', 14.99);

-- Customers (Users)
INSERT INTO Customers (FirstName, LastName, Email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Mike', 'Johnson', 'mike.johnson@example.com'),
('Sarah', 'Brown', 'sarah.brown@example.com'),
('David', 'Taylor', 'david.taylor@example.com');

-- Orders
INSERT INTO Orders (CustomerID, OrderDate) VALUES
(1, '2023-11-01'),
(2, '2023-11-15'),
(3, '2024-01-05'),
(4, '2024-02-01'),
(5, '2024-03-10');

-- OrderDetails (Books ordered)
INSERT INTO OrderDetails (OrderID, BookID, Quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(2, 4, 2),
(3, 5, 1),
(3, 6, 1),
(4, 7, 1),
(4, 8, 2),
(5, 9, 1),
(5, 10, 3);