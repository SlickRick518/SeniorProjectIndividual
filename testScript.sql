
create table employee(
employeeID  int auto_increment primary key,
startingDate datetime not null
);

create table login(
employeeID int primary key,
username varchar (15) not null unique,
pass varchar (15) not null,
last_updated_on timestamp not null,
constraint fk_login foreign key (employeeID) references employee(employeeID)
);

create table contactInfo(
employeeID int primary key,
first_name varchar(100) not null,
mi char(1),
last_name varchar(100) not null,
email varchar(100),
phoneNumber char(10) not null,
last_updated_on timestamp,
constraint fk_contactInfo foreign key (employeeID) references employee(employeeID)
);

create table address(
employeeID int primary key,
address varchar(100) not null,
city varchar(50) not null,
state char(2) not null,
zipcode char (5) not null,
constraint fk_address foreign key(employeeID) references employee(employeeID)
);

create table messages(
ID int auto_increment primary key,
sender int not null,
recipient int not null,
messageSubject varchar (100),
message varchar (1000),
recievedAt datetime not null,
constraint fk_sender_messages foreign key (sender) references employee(employeeID),
constraint fk_recipient foreign key (recipient) references employee(employeeID)
);