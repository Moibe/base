USE MOK;

GO

CREATE PROCEDURE sp_GetBookById
(
    @BookId INT
)
AS

BEGIN

    SELECT *
    FROM Books
    WHERE BookId = @BookId;

END;

GO
