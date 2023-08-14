-- Tạo bảng "Users"
CREATE TABLE Users (
                       UserID INT PRIMARY KEY,
                       Username VARCHAR(50) NOT NULL,
                       Email VARCHAR(100),
                       CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tạo bảng "Products"
CREATE TABLE Products (
                          ProductID INT PRIMARY KEY,
                          ProductName VARCHAR(100) NOT NULL,
                          Price DECIMAL(10, 2),
                          Category VARCHAR(50)
);

-- Tạo bảng "Orders"
CREATE TABLE Orders (
                        OrderID INT PRIMARY KEY,
                        UserID INT,
                        OrderDate DATE,
                        FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Chèn dữ liệu vào bảng "Users"
INSERT INTO Users (UserID, Username, Email) VALUES
                                                (1, 'user1', 'user1@example.com'),
                                                (2, 'user2', 'user2@example.com'),
                                                (3, 'user3', 'user3@example.com');

-- Chèn dữ liệu vào bảng "Products"
INSERT INTO Products (ProductID, ProductName, Price, Category) VALUES
                                                                   (1, 'Product A', 10.99, 'Electronics'),
                                                                   (2, 'Product B', 25.49, 'Clothing'),
                                                                   (3, 'Product C', 5.99, 'Books');

-- Chèn dữ liệu vào bảng "Orders"
INSERT INTO Orders (OrderID, UserID, OrderDate) VALUES
                                                    (1, 1, '2023-08-01'),
                                                    (2, 1, '2023-08-03'),
                                                    (3, 2, '2023-08-02');
