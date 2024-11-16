-- Create the database (if necessary)
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'SchoolDB')
BEGIN
    CREATE DATABASE SchoolDB;
END

-- Switch to the SchoolDB database
USE SchoolDB;

-- Create the Students table
IF OBJECT_ID('dbo.Students', 'U') IS NOT NULL
    DROP TABLE dbo.Students;

CREATE TABLE dbo.Students (
    student_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto incremented primary key
    first_name NVARCHAR(100) NOT NULL,
    last_name NVARCHAR(100) NOT NULL,
    date_of_birth DATE,
    gender NVARCHAR(10) CHECK (gender IN ('Male', 'Female', 'Other')) NOT NULL,
    email NVARCHAR(100) UNIQUE NOT NULL,
    phone_number NVARCHAR(15),
    address NVARCHAR(255),
    city NVARCHAR(100),  -- Added city field
    enrollment_date DATE,
    course NVARCHAR(100)
);

-- Insert 20 sample records into the Students table with some having similar cities (e.g., 'Springfield')
INSERT INTO dbo.Students (first_name, last_name, date_of_birth, gender, email, phone_number, address, city, enrollment_date, course)
VALUES
    ('John', 'Doe', '2001-05-12', 'Male', 'john.doe@example.com', '123-456-7890', '123 Elm St', 'Springfield', '2023-09-01', 'Computer Science'),
    ('Jane', 'Smith', '2000-11-25', 'Female', 'jane.smith@example.com', '987-654-3210', '456 Oak St', 'Springfield', '2023-09-01', 'Mathematics'),
    ('Alice', 'Johnson', '2002-03-15', 'Female', 'alice.johnson@example.com', '555-123-9876', '789 Pine St', 'Springfield', '2023-09-01', 'Biology'),
    ('Bob', 'Williams', '2001-07-30', 'Male', 'bob.williams@example.com', '555-789-1234', '101 Maple St', 'Chicago', '2023-09-01', 'Physics'),
    ('Charlie', 'Brown', '2000-12-05', 'Male', 'charlie.brown@example.com', '555-234-5678', '202 Birch St', 'Springfield', '2023-09-01', 'Chemistry'),
    ('Emma', 'Davis', '2003-04-10', 'Female', 'emma.davis@example.com', '555-543-2100', '321 Birch St', 'Chicago', '2023-09-01', 'Psychology'),
    ('Noah', 'Miller', '2002-06-19', 'Male', 'noah.miller@example.com', '555-678-9012', '654 Pine St', 'Miami', '2023-09-01', 'Engineering'),
    ('Olivia', 'Taylor', '2001-08-22', 'Female', 'olivia.taylor@example.com', '555-345-6789', '987 Maple St', 'New York', '2023-09-01', 'Literature'),
    ('Liam', 'Anderson', '2000-02-14', 'Male', 'liam.anderson@example.com', '555-432-1098', '654 Cedar St', 'Los Angeles', '2023-09-01', 'History'),
    ('Sophia', 'Thomas', '2002-09-30', 'Female', 'sophia.thomas@example.com', '555-890-1234', '987 Elm St', 'Springfield', '2023-09-01', 'Art'),
    ('Jackson', 'Jackson', '2000-11-09', 'Male', 'jackson.jackson@example.com', '555-123-6789', '543 Oak St', 'Houston', '2023-09-01', 'Philosophy'),
    ('Amelia', 'White', '2003-12-25', 'Female', 'amelia.white@example.com', '555-456-7890', '432 Maple St', 'Springfield', '2023-09-01', 'Political Science'),
    ('James', 'Martinez', '2001-04-20', 'Male', 'james.martinez@example.com', '555-234-8901', '321 Pine St', 'Chicago', '2023-09-01', 'Physics'),
    ('Ava', 'Hernandez', '2002-07-07', 'Female', 'ava.hernandez@example.com', '555-678-2345', '876 Oak St', 'Springfield', '2023-09-01', 'Biology'),
    ('Ethan', 'King', '2001-01-18', 'Male', 'ethan.king@example.com', '555-345-6789', '234 Birch St', 'Miami', '2023-09-01', 'Computer Science'),
    ('Mason', 'Lee', '2002-11-03', 'Male', 'mason.lee@example.com', '555-789-2345', '321 Oak St', 'Los Angeles', '2023-09-01', 'Engineering'),
    ('Isabella', 'Walker', '2003-03-11', 'Female', 'isabella.walker@example.com', '555-123-4567', '876 Pine St', 'New York', '2023-09-01', 'Medicine'),
    ('Lucas', 'Allen', '2000-12-17', 'Male', 'lucas.allen@example.com', '555-678-1234', '432 Birch St', 'Springfield', '2023-09-01', 'Business'),
    ('Mia', 'Young', '2002-08-05', 'Female', 'mia.young@example.com', '555-234-7890', '543 Maple St', 'Houston', '2023-09-01', 'Law');

-- Query to verify the inserted data
SELECT * FROM dbo.Students;
