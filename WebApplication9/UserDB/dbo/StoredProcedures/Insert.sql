CREATE PROCEDURE [dbo].[Insert]
	@FirstName NVARCHAR(255),
	@LastName NVARCHAR(255)
AS
BEGIN
	INSERT INTO [dbo].[Insert](FirstName, LastName)
	VALUES(@FirstName,@LastName);
END
