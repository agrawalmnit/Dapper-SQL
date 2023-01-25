CREATE PROCEDURE [dbo].[Get]
@PersonId int
AS
begin
SELECT PersonId, FirstName, LastName
from [dbo].[User]
where PersonId = @PersonId;
end