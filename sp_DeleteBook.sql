USE MOK;

GO

CREATE PROCEDURE sp_DeleteBook
(
    @BookId INT
)
AS

BEGIN

    DELETE FROM Books
    WHERE BookId = @BookId;

END;

GO
