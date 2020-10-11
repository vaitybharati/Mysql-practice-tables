CREATE TABLE Authors(AuthorId INTEGER primary key, 
                                Name VARCHAR(70));

insert into Authors values(1,'J K Rowling');
insert into Authors values(2,'Thomas Hardy');
insert into Authors values(3,'Oscar Wilde');
insert into Authors values(4,'Sidney Sheldon');
insert into Authors values(5,'Alistair MacLean');
insert into Authors values(6,'Jane Austen');
insert into Authors values(7,'Chetan Bhagat');
insert into Authors values(8,'Oscar Wilde');



CREATE TABLE Books(
             BookId INTEGER primary key, 
             Title VARCHAR(50),
             AuthorId INTEGER, foreign key (authorid) references authors(authorid));


insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',1);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into Books values(4,'Harry Potter and the Goblet of Fire',1);

insert into Books values(5,'Night Without End',5);
insert into Books values(6,'Fear is the Key',5);
insert into Books values(7,'Where Eagles Dare',5);

insert into Books values(8,'Sense and Sensibility',6);
insert into Books values(9,'Pride and Prejudice',6);
insert into Books values(10,'Emma',6);
insert into Books values(11,'Five Point Someone',7);
insert into Books values(12,'Two States',7);
insert into Books values(13,'Salome',8);
insert into Books values(14,'The Happy Prince',8);

DROP TABLE IF EXISTS `drinks`;

CREATE TABLE `drinks` (
  `drinkname` varchar(50) DEFAULT NULL,
  `rate` float(5,2) DEFAULT NULL
) ;


INSERT INTO `drinks` VALUES ('Tea',5.00),('Coffee',15.00),('Pepsi',20.00);



DROP TABLE IF EXISTS `meals`;

CREATE TABLE `meals` (
  `mealname` varchar(50) DEFAULT NULL,
  `rate` float(5,2) DEFAULT NULL
) ;

INSERT INTO `meals` VALUES ('Omlet',10.50),('Sausage',15.50),('Pancake',40.75);

create table movies (id integer, title varchar(50), category varchar(25));

insert into movies values(1,	'ASSASSIN\'S CREED: EMBERS',	'Animations'),
(2,	'Real Steel',	'Animations'),
(3,	'Alvin and the Chipmunks',	'Animations'),
(4,	'The Adventures of Tin Tin',	'Animations'),
(5,	'Safe', 	'Action'),
(6,	'Safe House',	'Action'),
(7,	'GIA',	'18+'),
(8,	'Deadline 2009',	'18+'),
(9,	'The Dirty Picture',	'18+'),
(10,	'Marley and me',	'Romance');

create table members(memid integer, first_name varchar(25), last_name varchar(25), movieid integer);


insert into members values(1,'Alicia','Alarcon', 1),
(2,'Don','Draper', 2),
(3,'Lizzie','Moss', 5),
(4,'Eldon','Chance', 8),
(5,'Jenny','Patterson', 10),
(6,'Craig','Daniels', null),
(7,'Denny', 'Peters',null),
(8,'Patty','Pattinson',null);

create table person(id integer, fname varchar(20), lname varchar(20));
insert into person values(1,'John','Perry'),(2,'John','Peters'),(3,'John','England'),(4, 'Tom', 'England'),(5,'Tom','Cruise');


DROP TABLE IF EXISTS `myemp`;

CREATE TABLE `myemp` (
  `EMP_ID` decimal(6,0) NOT NULL DEFAULT 0,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MGR_ID` decimal(6,0) DEFAULT NULL,
  `DEP_ID` decimal(4,0) DEFAULT NULL
) ;


INSERT INTO `myemp` VALUES (100,'Steven','King','SKING','1998-06-17','AD_PRES',24000.00,0.00,0,90),
(101,'Neena','Kochhar','NKOCHHAR','1987-06-18','AD_VP',17000.00,0.00,100,90),
(102,'Lex','De Haan','LDEHAAN','1987-06-19','AD_VP',17000.00,0.00,100,90),
(103,'Alexander','Hunold','AHUNOLD','1976-06-20','IT_PROG',9000.00,0.00,102,60),
(104,'Bruce','Ernst','BERNST','1987-06-21','IT_PROG',6000.00,0.00,103,60),
(105,'David','Austin','DAUSTIN','1987-06-22','IT_PROG',4800.00,0.00,103,60),
(106,'Valli','Pataballa','VPATABAL','1980-06-23','IT_PROG',4800.00,0.00,103,60),
(107,'Diana','Lorentz','DLORENTZ','1987-06-24','IT_PROG',4200.00,0.00,103,60),
(108,'Nancy','Greenberg','NGREENBE','1987-06-25','FI_MGR',12000.00,0.00,101,100),
(109,'Daniel','Faviet','DFAVIET','1992-06-26','FI_ACCOUNT',9000.00,0.00,108,100),
(110,'John','Chen','JCHEN','1987-06-27','FI_ACCOUNT',8200.00,0.00,108,100),
(111,'Ismael','Sciarra','ISCIARRA','1987-06-28','FI_ACCOUNT',7700.00,0.00,108,100),
(112,'Jose Manuel','Urman','JMURMAN','1981-06-29','FI_ACCOUNT',7800.00,0.00,108,100),
(113,'Luis','Popp','LPOPP','1987-06-30','FI_ACCOUNT',6900.00,0.00,108,100),
(114,'Den','Raphaely','DRAPHEAL','1987-07-01','PU_MAN',11000.00,0.00,100,30),
(115,'Alexander','Khoo','AKHOO','1983-07-02','PU_CLERK',3100.00,0.00,114,30),
(116,'Shelli','Baida','SBAIDA','1987-07-03','PU_CLERK',2900.00,0.00,114,30),
(117,'Sigal','Tobias','STOBIAS','1987-07-04','PU_CLERK',2800.00,0.00,114,30),
(118,'Guy','Himuro','GHIMURO','1995-07-05','PU_CLERK',2600.00,0.00,114,30),
(119,'Karen','Colmenares','KCOLMENA','1987-07-06','PU_CLERK',2500.00,0.00,114,30),
(120,'Matthew','Weiss','MWEISS','1987-07-07','ST_MAN',8000.00,0.00,100,50),
(121,'Adam','Fripp','AFRIPP','1990-07-08','ST_MAN',8200.00,0.00,100,50),
(122,'Payam','Kaufling','PKAUFLIN','1987-07-09','ST_MAN',7900.00,0.00,100,50),
(123,'Shanta','Vollman','SVOLLMAN','1987-07-10','ST_MAN',6500.00,0.00,100,50),
(124,'Kevin','Mourgos','KMOURGOS','1997-07-11','ST_MAN',5800.00,0.00,100,50),
(125,'Julia','Nayer','JNAYER','1987-07-12','ST_CLERK',3200.00,0.00,120,50),
(126,'Irene','Mikkilineni','IMIKKILI','1987-07-13','ST_CLERK',2700.00,0.00,120,50),
(127,'James','Landry','JLANDRY','1978-07-14','ST_CLERK',2400.00,0.00,120,50),
(128,'Steven','Markle','SMARKLE','1987-07-15','ST_CLERK',2200.00,0.00,120,50),
(129,'Laura','Bissot','LBISSOT','1987-07-16','ST_CLERK',3300.00,0.00,121,50),
(130,'Mozhe','Atkinson','MATKINSO','1983-07-17','ST_CLERK',2800.00,0.00,121,50),
(131,'James','Marlow','JAMRLOW','1987-07-18','ST_CLERK',2500.00,0.00,121,50),
(132,'TJ','Olson','TJOLSON','1987-07-19','ST_CLERK',2100.00,0.00,121,50),
(133,'Jason','Mallin','JMALLIN','1985-07-20','ST_CLERK',3300.00,0.00,122,50),
(134,'Michael','Rogers','MROGERS','1987-07-21','ST_CLERK',2900.00,0.00,122,50),
(135,'Ki','Gee','KGEE','1987-07-22','ST_CLERK',2400.00,0.00,122,50),
(136,'Hazel','Philtanker','HPHILTAN','1990-07-23','ST_CLERK',2200.00,0.00,122,50),
(137,'Renske','Ladwig','RLADWIG','2000-07-24','ST_CLERK',3600.00,0.00,123,50),
(138,'Stephen','Stiles','SSTILES','1987-07-25','ST_CLERK',3200.00,0.00,123,50),
(139,'John','Seo','JSEO','1989-07-26','ST_CLERK',2700.00,0.00,123,50),
(140,'Joshua','Patel','JPATEL','2011-07-27','ST_CLERK',2500.00,0.00,123,50),
(141,'Trenna','Rajs','TRAJS','1987-07-28','ST_CLERK',3500.00,0.00,124,50),
(142,'Curtis','Davies','CDAVIES','1986-07-29','ST_CLERK',3100.00,0.00,124,50),
(143,'Randall','Matos','RMATOS','1987-07-30','ST_CLERK',2600.00,0.00,124,50),
(144,'Peter','Vargas','PVARGAS','1998-07-31','ST_CLERK',2500.00,0.00,124,50),
(145,'John','Russell','JRUSSEL','1991-08-01','SA_MAN',14000.00,0.40,100,80),
(146,'Karen','Partners','KPARTNER','2019-08-02','SA_MAN',13500.00,0.30,100,80),
(147,'Alberto','Errazuriz','AERRAZUR','1987-08-03','SA_MAN',12000.00,0.30,100,80),
(148,'Gerald','Cambrault','GCAMBRAU','2015-08-04','SA_MAN',11000.00,0.30,100,80),
(149,'Eleni','Zlotkey','EZLOTKEY','1987-08-05','SA_MAN',10500.00,0.20,100,80),
(150,'Peter','Tucker','PTUCKER','1987-08-06','SA_REP',10000.00,0.30,145,80),
(151,'David','Bernstein','DBERNSTE','2013-08-07','SA_REP',9500.00,0.25,145,80),
(152,'Peter','Hall','PHALL','1987-08-08','SA_REP',9000.00,0.25,145,80),
(153,'Christopher','Olsen','COLSEN','1987-08-09','SA_REP',8000.00,0.20,145,80),
(154,'Nanette','Cambrault','NCAMBRAU','1987-08-10','SA_REP',7500.00,0.20,145,80),
(155,'Oliver','Tuvault','OTUVAULT','1987-08-11','SA_REP',7000.00,0.15,145,80),
(156,'Janette','King','JKING','1987-08-12','SA_REP',10000.00,0.35,146,80),
(157,'Patrick','Sully','PSULLY','2002-08-13','SA_REP',9500.00,0.35,146,80),
(158,'Allan','McEwen','AMCEWEN','1987-08-14','SA_REP',9000.00,0.35,146,80),
(159,'Lindsey','Smith','LSMITH','1987-08-15','SA_REP',8000.00,0.30,146,80),
(160,'Louise','Doran','LDORAN','2003-08-16','SA_REP',7500.00,0.30,146,80),
(161,'Sarath','Sewall','SSEWALL','1987-08-17','SA_REP',7000.00,0.25,146,80),
(162,'Clara','Vishney','CVISHNEY','1987-08-18','SA_REP',10500.00,0.25,147,80),
(163,'Danielle','Greene','DGREENE','1987-08-19','SA_REP',9500.00,0.15,147,80),
(164,'Mattea','Marvins','MMARVINS','2007-08-20','SA_REP',7200.00,0.10,147,80),
(165,'David','Lee','DLEE','1987-08-21','SA_REP',6800.00,0.10,147,80),
(166,'Sundar','Ande','SANDE','1987-08-22','SA_REP',6400.00,0.10,147,80),
(167,'Amit','Banda','ABANDA','1987-08-23','SA_REP',6200.00,0.10,147,80),
(168,'Lisa','Ozer','LOZER','1987-08-24','SA_REP',11500.00,0.25,148,80),
(169,'Harrison','Bloom','HBLOOM','1999-08-25','SA_REP',10000.00,0.20,148,80),
(170,'Tayler','Fox','TFOX','1987-08-26','SA_REP',9600.00,0.20,148,80),
(171,'William','Smith','WSMITH','1987-08-27','SA_REP',7400.00,0.15,148,80),
(172,'Elizabeth','Bates','EBATES','1987-08-28','SA_REP',7300.00,0.15,148,80),
(173,'Sundita','Kumar','SKUMAR','1987-08-29','SA_REP',6100.00,0.10,148,80),
(174,'Ellen','Abel','EABEL','1987-08-30','SA_REP',11000.00,0.30,149,80),
(175,'Alyssa','Hutton','AHUTTON','1996-08-31','SA_REP',8800.00,0.25,149,80),
(176,'Jonathon','Taylor','JTAYLOR','1987-09-01','SA_REP',8600.00,0.20,149,80),
(177,'Jack','Livingston','JLIVINGS','1987-09-02','SA_REP',8400.00,0.20,149,80),
(179,'Charles','Johnson','CJOHNSON','1999-09-04','SA_REP',6200.00,0.10,149,80),
(180,'Winston','Taylor','WTAYLOR','1987-09-05','SH_CLERK',3200.00,0.00,120,50),
(181,'Jean','Fleaur','JFLEAUR','1987-09-06','SH_CLERK',3100.00,0.00,120,50),
(182,'Martha','Sullivan','MSULLIVA','1987-09-07','SH_CLERK',2500.00,0.00,120,50),
(183,'Girard','Geoni','GGEONI','1987-09-08','SH_CLERK',2800.00,0.00,120,50),
(184,'Nandita','Sarchand','NSARCHAN','2012-09-09','SH_CLERK',4200.00,0.00,121,50),
(185,'Alexis','Bull','ABULL','1987-09-10','SH_CLERK',4100.00,0.00,121,50),
(186,'Julia','Dellinger','JDELLING','1987-09-11','SH_CLERK',3400.00,0.00,121,50),
(187,'Anthony','Cabrio','ACABRIO','2007-09-12','SH_CLERK',3000.00,0.00,121,50),
(188,'Kelly','Chung','KCHUNG','1987-09-13','SH_CLERK',3800.00,0.00,122,50),
(189,'Jennifer','Dilly','JDILLY','1987-09-14','SH_CLERK',3600.00,0.00,122,50),
(190,'Timothy','Gates','TGATES','1987-09-15','SH_CLERK',2900.00,0.00,122,50),
(191,'Randall','Perkins','RPERKINS','1987-09-16','SH_CLERK',2500.00,0.00,122,50),
(192,'Sarah','Bell','SBELL','1987-09-17','SH_CLERK',4000.00,0.00,123,50),
(193,'Britney','Everett','BEVERETT','1987-09-18','SH_CLERK',3900.00,0.00,123,50),
(194,'Samuel','McCain','SMCCAIN','2000-09-19','SH_CLERK',3200.00,0.00,123,50),
(195,'Vance','Jones','VJONES','1996-09-20','SH_CLERK',2800.00,0.00,123,50),
(196,'Alana','Walsh','AWALSH','1987-09-21','SH_CLERK',3100.00,0.00,124,50),
(197,'Kevin','Feeney','KFEENEY','1987-09-22','SH_CLERK',3000.00,0.00,124,50),
(198,'Donald','OConnell','DOCONNEL','1997-09-23','SH_CLERK',2600.00,0.00,124,50),
(199,'Douglas','Grant','DGRANT','1987-09-24','SH_CLERK',2600.00,0.00,124,50),
(200,'Jennifer','Whalen','JWHALEN','1988-09-25','AD_ASST',4400.00,0.00,101,10),
(201,'Michael','Hartstein','MHARTSTE','1987-09-26','MK_MAN',13000.00,0.00,100,20),
(202,'Pat','Fay','PFAY','1987-09-27','MK_REP',6000.00,0.00,201,20),
(203,'Susan','Mavris','SMAVRIS','1989-09-28','HR_REP',6500.00,0.00,101,40),
(204,'Hermann','Baer','HBAER','1987-09-29','PR_REP',10000.00,0.00,101,70),
(205,'Shelley','Higgins','SHIGGINS','1987-09-30','AC_MGR',12000.00,0.00,101,110),
(206,'William','Gietz','WGIETZ','1997-10-01','AC_ACCOUNT',8300.00,0.00,205,110);

