delimiter //
create procedure spAddNewEmployee (in group_Number int, in firstName varchar(100), in middle char(2),in lastName varchar(100),
in email_ varchar(100),in phoneNumber_ char(10))
begin
		start transaction;
        set @currenttime = current_TimeStamp;
		insert into employee(groupNumber, startingDate) 
        values (group_Number, @currenttime);
        set @empID = (select employeeID from employee where startingDate = @currenttime);
		insert into contactInfo (employeeID, first_name, mi, last_name, email, phoneNumber, last_updated_on) 
        values (@empID, firstName, middle, lastName, email_, phoneNumber_, sysdate());
		commit;
end //
delimiter ;

delimiter //
create procedure spGetEmpID (in firstName varchar(100), in lastName varchar(100))
begin 
select
	employeeID,
	first_name as 'First Name',
    mi as 'Middle Initial',
    last_name as 'Last Name'
from 
	contactInfo
where
		first_name = firstName
	and
		last_name = lastName;
end //
delimiter ;

delimiter //
create procedure spcontactInfoByName (in firstName varchar(100), in lastName varchar(100))
begin 
select
	*
from 
	contactInfo
where
		first_name = firstName
	and
		last_name = lastName;
end //
delimiter ;

delimiter //
create procedure spcontactInfoByEmpID (in ID int)
begin 
select
	*
from 
	contactInfo
where
		employeeID = ID;
end //
delimiter ;

delimiter //
create procedure spAddAddress (in empID int, in address_ varchar (100), in city_ varchar (50), state_ char (2), zipcode_ char(5)) 
begin 
	insert into address values (empID, address_, city_, state_, zipcode_); 
end //
delimiter ;

delimiter //   
create procedure spAddLogin (in empID int, in username_ varchar(15), in pass_ varchar(15))
begin
	insert into login values (empID, username_, pass_, sysdate());
end //
delimiter ;    


