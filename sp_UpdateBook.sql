USE MOK;

GO

CREATE PROCEDURE sp_UpdateBook
(
    @BookId INT,
    @Title VARCHAR(MAX),
    @Author VARCHAR(MAX),
    @Genre VARCHAR(MAX),
    @PublishDate DATE
)
AS

BEGIN

    UPDATE Books
    SET Title = @Title,
        Author = @Author,
        Genre = @Genre,
        PublishDate = @PublishDate
    WHERE BookId = @BookId;

END;

GO
