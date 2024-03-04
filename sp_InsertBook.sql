USE MOK;

GO

CREATE PROCEDURE sp_InsertBook
(
    @Title VARCHAR(MAX),
    @Author VARCHAR(MAX),
    @Genre VARCHAR(MAX),
    @PublishDate DATE
)
AS

BEGIN

    INSERT INTO Books (Title, Author, Genre, PublishDate)
    VALUES (@Title, @Author, @Genre, @PublishDate);

END;

GO
