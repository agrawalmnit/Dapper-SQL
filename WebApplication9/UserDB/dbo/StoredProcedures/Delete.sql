CREATE PROCEDURE [dbo].[Delete]
@PersonId int
AS BEGIN
DELETE 
from [dbo].[User]
where PersonId = @PersonId;
end

