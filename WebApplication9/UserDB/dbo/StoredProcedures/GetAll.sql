CREATE PROCEDURE [dbo].[GetAll]
AS
begin
select PersonId, FirstName, LastName
from dbo.[User];
end
