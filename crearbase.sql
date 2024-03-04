USE master;

GO

CREATE DATABASE MOK;

GO

ALTER DATABASE MOK
SET AUTO_CLOSE OFF;

GO

ALTER DATABASE MOK
SET RECOVERY FULL;

GO

ALTER DATABASE MOK
SET PAGE_VERIFY CHECKSUM;

GO

ALTER DATABASE MOK
SET READ_COMMITTED_SNAPSHOT ON;

GO

ALTER DATABASE MOK
SET TARGET_RECOVERY_TIME 60 SECONDS;

GO

USE MOK;

GO

CREATE TABLE Books (
    BookId INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(MAX) NOT NULL,
    Author VARCHAR(MAX) NOT NULL,
    Genre VARCHAR(MAX) NOT NULL,
    PublishDate DATE NOT NULL
);

GO

-- Insertar 10 libros de ejemplo
INSERT INTO Books (Title, Author, Genre, PublishDate)
VALUES
 ('Pride and Prejudice', 'Jane Austen', 'Romance', '1813-01-28'),
 ('To Kill a Mockingbird', 'Harper Lee', 'Drama', '1960-07-11'),
 ('The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', '1954-07-29'),
 ('The Hitchhiker\'s Guide to the Galaxy', 'Douglas Adams', 'Science Fiction', '1979-10-12'),
 ('One Hundred Years of Solitude', 'Gabriel García Márquez', 'Magical Realism', '1967-06-05'),
 ('The Great Gatsby', 'F. Scott Fitzgerald', 'Social Commentary', '1925-04-10'),
 ('Frankenstein', 'Mary Shelley', 'Gothic', '1818-01-01'),
 ('The Catcher in the Rye', 'J.D. Salinger', 'Coming-of-Age', '1951-07-16'),
 ('The Adventures of Huckleberry Finn', 'Mark Twain', 'Satire', '1884-12-10'),
 ('1984', 'George Orwell', 'Dystopian', '1949-06-08');

GO
