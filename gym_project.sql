use Gym_project;
Go 
/*
create table trainee 
(
  trainee_id int primary key ,
  frist_name varchar(20) not null ,
  last_name varchar(20) not null ,
  phone varchar(20) not null ,
  addres varchar(50) ,
  gender varchar(20) not null ,
  height int not null ,
  age varchar (20) not null ,
  rec_id  int not null ,
  coach_id int not null ,
  coach_name varchar not null ,

  constraint rec_trainee_fk foreign key(rec_id)
  references receptionist (rec_id)

  constraint coach_trainee_fk foreign key(coach_id)
  references coach (coach_id)
);





	create table receptionist(
	rec_id  int identity(1 ,1) ,
	frist_name varchar(15) not null , 
	last_name varchar(15) not null , 
	price money not null ,
	payment varchar(50) not null ,
	working_hours int not null ,
	addres varchar(20) not null ,
	constraint receptionist_pk primary key(rec_id),
	);





	create table coach(
	coach_id int not null ,
	co_name varchar(15) not null ,
	age varchar(10) not null ,
	addres varchar(50) not null ,
	gender varchar(20) not null ,
	working_hours varchar(50) not null ,
	hall_id int(50) not null ,
	constraint coach_pk primary key(coach_id),
	constraint hall_coach_fk foreign key(hall_id)
	references hall(hall_id)
	);


create table training(
  [time] float not null ,
  [type] varchar(10) not null ,
  IR_id int not null ,
  coach_id int not null ,

  constraint training_trainee_fk foreign key(IR_id)
  references trainee(trainee_id)
);


create table payment(
 rec_id  int not null ,
 payment_type varchar(20),
 constraint rec_id_pk primary key(rec_id),

 constraint rec_payment_fk foreign key(rec_id)
 references receptionist (rec_id)
 );

 create table hall (
  hall_id int not null , 
  [adddres] varchar(50) not null , 
  constraint hell_id_pk primary key(hall_id),
 );
 */

 create table trainee 
(
  trainee_id int primary key ,
  frist_name varchar(20) not null ,
  last_name varchar(20) not null ,
  phone varchar(20) not null ,
  addres varchar(50) ,
  gender varchar(20) not null ,
  height int not null ,
  age varchar (20) not null ,
  rec_id  int not null ,
  coach_id int not null ,
  coach_name varchar not null ,
);



create table receptionist(
rec_id  int identity(1 ,1) ,
frist_name varchar(15) not null , 
last_name varchar(15) not null , 
price money not null ,
 
payment varchar(50) not null ,
working_hours int not null ,
addres varchar(20) not null ,
constraint receptionist_pk primary key(rec_id),
);

alter table receptionist
add coach_id int not null;


create table coach(
coach_id int not null ,
co_name varchar(15) not null ,
age varchar(10) not null ,
addres varchar(50) not null ,
gender varchar(20) not null ,
working_hours varchar(50) not null ,
hall_id int not null ,
constraint coach_pk primary key(coach_id),
);



create table training(
  [time] float not null ,
  [type] varchar(10) not null,
  IR_id int not null ,
  coach_id int not null,
);



create table payment(
 rec_id  int not null ,
 payment_type varchar(20),
 constraint rec_id_pk primary key(rec_id),
 );


 create table hall (
  hall_id int not null , 
  [adddres] varchar(50) not null , 
  constraint hall_id_pk primary key(hall_id),
 );
  


  alter table trainee
  add constraint rec_trainee_fk foreign key(rec_id)
  references receptionist (rec_id);


  alter table trainee
  add constraint coach_trainee_fk foreign key(coach_id)
  references coach (coach_id);


  alter table coach
  add constraint hall_coach_fk foreign key(hall_id)
  references hall (hall_id);


  alter table training
  add constraint training_trainee_fk foreign key(IR_id)
  references trainee(trainee_id);


  alter table payment
  add constraint rec_payment_fk foreign key(rec_id)
  references receptionist (rec_id);