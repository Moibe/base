-- **Prueba de sp_InsertBook**

-- Entrada
DECLARE @Title VARCHAR(MAX) = 'El Principito';
DECLARE @Author VARCHAR(MAX) = 'Antoine de Saint-Exupéry';
DECLARE @Genre VARCHAR(MAX) = 'Fantasía';
DECLARE @PublishDate DATE = '1943-04-06';

-- Ejecución
EXEC sp_InsertBook @Title, @Author, @Genre, @PublishDate;

-- Salida esperada
SELECT BookId, Title, Author, Genre, PublishDate
FROM Books
WHERE Title = @Title;

-- **Prueba de sp_GetBookById**

-- Entrada
DECLARE @BookId INT = 1;

-- Ejecución
EXEC sp_GetBookById @BookId;

-- Salida esperada
SELECT BookId, Title, Author, Genre, PublishDate
FROM Books
WHERE BookId = @BookId;

-- **Prueba de sp_GetAllBooks**

-- Ejecución
EXEC sp_GetAllBooks;

-- Salida esperada
SELECT BookId, Title, Author, Genre, PublishDate
FROM Books;

-- **Prueba de sp_UpdateBook**

-- Entrada
DECLARE @BookId INT = 1;
DECLARE @Title VARCHAR(MAX) = 'El Principito (Actualizado)';

-- Ejecución
EXEC sp_UpdateBook @BookId, @Title, @Author, @Genre, @PublishDate;

-- Salida esperada
SELECT BookId, Title, Author, Genre, PublishDate
FROM Books
WHERE BookId = @BookId;

-- **Prueba de sp_DeleteBook**

-- Entrada
DECLARE @BookId INT = 1;

-- Ejecución
EXEC sp_DeleteBook @BookId;

-- Salida esperada
SELECT BookId, Title, Author, Genre, PublishDate
FROM Books
WHERE BookId = @BookId;
