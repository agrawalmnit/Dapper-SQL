CREATE PROCEDURE [dbo].[Get]
@PersonId int
AS
BEGIN
SELECT PersonId, FirstName, LastName
from [dbo].[User]
where PersonId = @PersonId;
end