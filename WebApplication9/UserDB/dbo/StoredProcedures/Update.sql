CREATE PROCEDURE [dbo].[Update]
@PersonId int,
@FirstName NVARCHAR(255),
@LastName NVARCHAR(255)
AS
begin
update [dbo].[User]
set FirstName = @FirstName,
LastName = @LastName
where PersonId = @PersonId;
end
