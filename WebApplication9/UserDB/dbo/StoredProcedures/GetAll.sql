CREATE PROCEDURE [dbo].[GetAll]
AS
BEGIN
select PersonId, FirstName, LastName
from dbo.[User];
end
