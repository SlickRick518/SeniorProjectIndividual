call spAddNewEmployee (1, 'Donald', 'F', 'Trump', 'DTrump@Whithouse.net', 7324567890);

call spGetEmpID ('Donald', 'Trump');

call spContactInfoByName ('Donald', 'Trump');

call spContactInfoByEmpID (1);

call spAddAddress (1, '8 Whit house lane', 'Washington DC', 'MD', '12345');

 call spAddLogin(1, 'BigDonald', 'Trump518');
 
 select * from employee;
 
 select * from login;
 
 select * from contactInfo;
 
 select * from address;
