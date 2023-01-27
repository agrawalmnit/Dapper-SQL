

if not exists (select 1 from [dbo].[User])
begin
insert into [dbo].[User] (FirstName,LastName)
values ('ishansi','agrawal'),
('john','coliver'),
('rehana','mishtad'),
('oliver','olives');
end