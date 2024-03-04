USE MOK;

GO

CREATE PROCEDURE sp_GetAllBooks
AS

BEGIN

    SELECT *
    FROM Books;

END;

GO
