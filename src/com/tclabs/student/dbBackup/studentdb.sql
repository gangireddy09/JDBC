-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.24


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema tasks
--

CREATE DATABASE IF NOT EXISTS tasks;
USE tasks;

--
-- Definition of table `candidate_mst_tbl`
--

DROP TABLE IF EXISTS `candidate_mst_tbl`;
CREATE TABLE `candidate_mst_tbl` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BRANCH` varchar(255) DEFAULT NULL,
  `EMAIL_ID` varchar(255) DEFAULT NULL,
  `MOBILE_NO` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `QUALIFICATION` varchar(255) DEFAULT NULL,
  `YEAR_OF_PASSING` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `REGISTRATION_NO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidate_mst_tbl`
--

/*!40000 ALTER TABLE `candidate_mst_tbl` DISABLE KEYS */;
INSERT INTO `candidate_mst_tbl` (`ID`,`BRANCH`,`EMAIL_ID`,`MOBILE_NO`,`NAME`,`QUALIFICATION`,`YEAR_OF_PASSING`,`PASSWORD`,`REGISTRATION_NO`) VALUES 
 (1,'EEE','vijay@gmail.com','9632580147','vijay','B.Tech','2019','vijay123','TC01'),
 (2,'Civil','Rakeshl@gmail.com','9632589666','Rakesh','B.Tech','2017','rakesh123','TC02'),
 (3,'CSE','krish@gmail.com','9632586320','Krishna','B.Tech','2018','krishna123','TC03'),
 (4,'ECE','Rahul@gmail.com','9632585463','Rahul','B.Tech','2019','rahul123','TC04'),
 (5,'MECH','kiran123@gmail.com','9632587410','kiran','B.Tech','2016','kiran123','TC05'),
 (6,'Computer','krish@gmail.com','9630215487','Vinay','Degree','2018','vinay123','TC06'),
 (7,'Rajahmundry','mail@mail.com','9246789632','Second-name','B.TECH','2019','password','TCP02'),
 (8,'Computer','mail@mail.com','9246789632','Fist-person','M.A','2016','sri123','TC08'),
 (21,'Rajahmundry','mail@mail.com','9246789632','Fist-person','B.TECH','2019','password','TCP01'),
 (23,'Rajahmundry','mail@mail.com','9246789632','Fist-person','B.TECH','2019','password','TCP01'),
 (24,'Rajahmundry','mail@mail.com','9246789632','Fist-person','B.TECH','2019','password','TCP01'),
 (25,'Rajahmundry','mail@mail.com','9246789632','Second-name','B.TECH','2019','password','TCP02');
/*!40000 ALTER TABLE `candidate_mst_tbl` ENABLE KEYS */;


--
-- Definition of table `candidate_trn_tbl`
--

DROP TABLE IF EXISTS `candidate_trn_tbl`;
CREATE TABLE `candidate_trn_tbl` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_trn_tbl`
--

/*!40000 ALTER TABLE `candidate_trn_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_trn_tbl` ENABLE KEYS */;


--
-- Definition of table `daily_programs_trn_tbl`
--

DROP TABLE IF EXISTS `daily_programs_trn_tbl`;
CREATE TABLE `daily_programs_trn_tbl` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROGRAM_NAME` varchar(255) DEFAULT NULL,
  `TECHNOLOGY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_programs_trn_tbl`
--

/*!40000 ALTER TABLE `daily_programs_trn_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_programs_trn_tbl` ENABLE KEYS */;


--
-- Definition of table `programs_mst_tbl`
--

DROP TABLE IF EXISTS `programs_mst_tbl`;
CREATE TABLE `programs_mst_tbl` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROGRAM_NAME` longtext,
  `TECHNOLOGY` varchar(255) DEFAULT NULL,
  `LEVEL` int(10) unsigned DEFAULT NULL,
  `PHOTO` longblob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programs_mst_tbl`
--

/*!40000 ALTER TABLE `programs_mst_tbl` DISABLE KEYS */;
INSERT INTO `programs_mst_tbl` (`ID`,`PROGRAM_NAME`,`TECHNOLOGY`,`LEVEL`,`PHOTO`) VALUES 
 (1,'Convert number from Decimal to Binary.','Java',1,''),
 (2,'Sorting a string in alphabetical order','C',2,''),
 (3,'Capitalize the first and last letter of each word of a string','Java',1,''),
 (4,'Non-repeating characters in a string','C',1,''),
 (5,'Program to print substring in a string with given starting and ending chraecters of a string.','Java',1,''),
 (6,'Print the no.Of shifts that are to be made for the second array to look the same like the first array','C',2,''),
 (7,'Print the sum of array elements at the ith position for each iteration for given  \'N\' times(print the array elements for each iteration)','Java',2,''),
 (8,'Converison of digits to string','C',1,''),
 (9,'Program to remove all characters except alphabets','C',1,''),
 (10,'Program to remove all characters except numbers','Java',1,''),
 (11,'Program to remove to all characters except special charecters','Java',1,''),
 (12,'Largest and smallest word in an sentence','C',1,''),
 (13,'Check the letter is uppercase or lowerCase','Java',1,''),
 (14,'Missing number in an given series or sequence','C',1,''),
 (15,'Find the greater number than a given number in an series','C',1,''),
 (16,'Largest palindrome in an given series','Java',2,''),
 (17,'Find the pair with given  sum in series','Java',2,''),
 (18,'In an given series of elements find the count of elements based on condition if 1 all greater elements -1 all lesser than element and 0 for all equal elements','Java',2,''),
 (19,'Find the majority element of an array','C',2,''),
 (20,'Find the majority element of an array','Java',2,''),
 (21,'Program to rotate an array by n positions','C',1,''),
 (22,'Find the smallest missing element in  series','Java',2,''),
 (23,'Find the pair of elements whose sum is greater than the sum of remaining elements in an series','Java',2,''),
 (24,'Program to move all zeroes to the end of the array','C',1,''),
 (25,'Program to move all zeroes to front of the array','C',1,''),
 (26,'Program to print all unique elements in an unsorted array','Java',1,''),
 (27,'Program to find  array elements whose sum is equal to given number','C',2,''),
 (28,'Program to find a pair with given difference in an series','C',2,''),
 (29,'Program to re-arrange the positive and negative numbers alternatively','Java',2,''),
 (30,'Program to rearrange an array with all negative numbers at starting and all positive numbers at ending','Java',2,''),
 (31,'Program to rearrange an array with all positive numbers at starting and all negative numbers at ending','C',2,''),
 (32,'Program to rearange an array in the following order  --smallest,largest,2nd smallest and 2nd largest','Java',2,''),
 (33,'Program to print whether an substring  given is present in String without  using the string functions','C',2,''),
 (34,'Program to split the String by spaces into words','Java',2,''),
 (35,'Program to find the frequency of given word or sub string in a String','C',1,''),
 (36,'Program to find the number of elements between the largest and smallest elements in an array','Java',2,''),
 (37,'Program to Capatalize  Letter of an word in an string','C',2,''),
 (38,'Program to  sort the array in ascending order upto the given index and in descending order after the index','Java',2,''),
 (39,'Program to  reverse each word in an given sentence','C',1,''),
 (41,'Program to print a number is a sum of two prime numbers','Java',1,''),
 (42,'Convert characters of a string to opposite case','Java',2,0x6E756C6C),
 (43,'Display alternate character of string in upper case','C',2,0x6E756C6C);
/*!40000 ALTER TABLE `programs_mst_tbl` ENABLE KEYS */;


--
-- Definition of table `task_list_trns_tbl`
--

DROP TABLE IF EXISTS `task_list_trns_tbl`;
CREATE TABLE `task_list_trns_tbl` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CANDIDATE_ID` bigint(20) DEFAULT NULL,
  `PROGRAM_ID` bigint(20) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DATE` varchar(255) DEFAULT NULL,
  `CODE` longtext,
  `CREATED_ON` varchar(255) DEFAULT NULL,
  `REVIEW` varchar(45) DEFAULT NULL,
  `USER_ID` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_task_list_trns_tbl_1` (`CANDIDATE_ID`),
  KEY `FK_task_list_trns_tbl_2` (`PROGRAM_ID`),
  KEY `FK_task_list_trns_tbl_3` (`USER_ID`),
  CONSTRAINT `FK_task_list_trns_tbl_1` FOREIGN KEY (`CANDIDATE_ID`) REFERENCES `candidate_mst_tbl` (`ID`),
  CONSTRAINT `FK_task_list_trns_tbl_2` FOREIGN KEY (`PROGRAM_ID`) REFERENCES `programs_mst_tbl` (`ID`),
  CONSTRAINT `FK_task_list_trns_tbl_3` FOREIGN KEY (`USER_ID`) REFERENCES `user_mst_tbl` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task_list_trns_tbl`
--

/*!40000 ALTER TABLE `task_list_trns_tbl` DISABLE KEYS */;
INSERT INTO `task_list_trns_tbl` (`ID`,`CANDIDATE_ID`,`PROGRAM_ID`,`STATUS`,`DESCRIPTION`,`DATE`,`CODE`,`CREATED_ON`,`REVIEW`,`USER_ID`) VALUES 
 (1,3,2,NULL,'I am not able to do',NULL,NULL,NULL,NULL,NULL),
 (2,3,4,NULL,'I am not able to do',NULL,NULL,NULL,NULL,NULL),
 (3,3,6,NULL,'I am not able to do',NULL,NULL,NULL,NULL,NULL),
 (4,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (5,3,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (6,3,5,NULL,'I am not able to do',NULL,NULL,NULL,NULL,NULL),
 (7,3,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (8,1,2,'Completed','',NULL,NULL,NULL,NULL,NULL),
 (9,3,2,'Completed',NULL,NULL,NULL,NULL,NULL,NULL),
 (10,3,4,NULL,'I am not able to do',NULL,NULL,NULL,NULL,NULL),
 (11,2,1,'Pending','kkkkkk',NULL,NULL,NULL,NULL,NULL),
 (12,1,2,'Completed',NULL,NULL,'hhhhhhhhhhhhhhhh',NULL,NULL,NULL),
 (13,2,6,'Completed',NULL,NULL,NULL,NULL,NULL,NULL),
 (14,4,2,'Completed',NULL,NULL,NULL,NULL,NULL,NULL),
 (15,4,3,'Completed',NULL,NULL,NULL,NULL,NULL,NULL),
 (16,4,4,'Completed',NULL,NULL,NULL,NULL,NULL,NULL),
 (17,4,5,'Completed',NULL,NULL,NULL,NULL,NULL,NULL),
 (18,2,2,'Pending','Getting Complation Error',NULL,NULL,NULL,NULL,NULL),
 (19,2,5,'Completed',NULL,NULL,NULL,NULL,NULL,NULL),
 (20,2,6,'Pending',NULL,NULL,NULL,NULL,NULL,NULL),
 (21,6,3,'Completed','','','hsgfjvdwuy ekjhbwuwytuyw shfiuahf kjfhieur','2020-01-31',NULL,1),
 (22,6,7,'Pending','I am not able to do the program','',NULL,'2020-01-31',NULL,1),
 (23,6,9,'Pending','I am not able to do the program','',NULL,'2020-01-30',NULL,2),
 (24,6,13,'Completed',NULL,'','kfkfkfkkfk','2020-01-30',NULL,2),
 (25,1,5,'Pending',NULL,'date',NULL,NULL,NULL,NULL),
 (26,1,9,'Pending',NULL,'date',NULL,NULL,NULL,NULL),
 (27,1,11,'Pending',NULL,'date',NULL,NULL,NULL,NULL),
 (28,1,12,'Pending',NULL,'date',NULL,NULL,NULL,NULL),
 (29,1,14,'Pending',NULL,'date',NULL,NULL,NULL,NULL),
 (30,1,5,'Pending',NULL,'request.getAttribute(\"date\")/',NULL,NULL,NULL,NULL),
 (31,1,9,'Pending',NULL,'request.getAttribute(\"date\")/',NULL,NULL,NULL,NULL),
 (32,1,11,'Pending',NULL,'request.getAttribute(\"date\")/',NULL,NULL,NULL,NULL),
 (33,1,12,'Pending',NULL,'request.getAttribute(\"date\")/',NULL,NULL,NULL,NULL),
 (34,1,14,'Pending',NULL,'request.getAttribute(\"date\")/',NULL,NULL,NULL,NULL),
 (35,1,6,'Pending',NULL,'2019-12-14',NULL,NULL,NULL,NULL),
 (36,2,1,'Pending',NULL,NULL,NULL,NULL,NULL,NULL),
 (37,2,1,'Pending',' ',NULL,NULL,NULL,NULL,NULL),
 (38,2,1,'Pending',' ',NULL,NULL,NULL,NULL,NULL),
 (39,2,1,'Pending',' ',NULL,NULL,NULL,NULL,NULL),
 (40,2,1,'Pending',' ',NULL,NULL,NULL,NULL,NULL),
 (41,2,1,'Pending',' ',NULL,NULL,NULL,NULL,NULL),
 (42,2,1,'Pending',' ',NULL,NULL,NULL,NULL,NULL),
 (43,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (44,1,3,NULL,NULL,'2020-01-29',NULL,NULL,NULL,NULL),
 (45,1,8,NULL,NULL,'2020-01-29',NULL,NULL,NULL,NULL),
 (46,1,6,NULL,NULL,NULL,NULL,'',NULL,NULL),
 (47,1,3,NULL,NULL,NULL,NULL,'2020-01-30',NULL,NULL),
 (48,1,6,NULL,NULL,NULL,NULL,'2020-01-30',NULL,NULL),
 (49,1,7,NULL,NULL,NULL,NULL,'2020-01-30',NULL,NULL),
 (50,1,2,NULL,NULL,NULL,NULL,'2020-01-30',NULL,NULL),
 (51,1,7,NULL,NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (52,1,2,NULL,NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (53,1,4,NULL,NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (54,2,10,'Pending',NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (55,2,2,'Pending',NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (56,2,6,'Pending',NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (57,2,3,NULL,NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (58,3,2,NULL,NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (59,3,7,NULL,NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (60,3,8,NULL,NULL,NULL,NULL,'2020-01-31',NULL,NULL),
 (61,2,1,'Completed','kkkkkk',NULL,NULL,NULL,NULL,NULL),
 (62,2,1,'Completed','kkkkkk',NULL,NULL,NULL,NULL,NULL),
 (63,2,1,'Completed','kkkkkk',NULL,NULL,NULL,NULL,NULL),
 (64,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (65,3,8,'Pending',NULL,NULL,NULL,'2020-02-01',NULL,NULL),
 (66,3,14,'Pending',NULL,NULL,NULL,'2020-02-01',NULL,NULL),
 (67,3,2,'Pending',NULL,NULL,NULL,'2020-02-01',NULL,NULL),
 (68,6,3,'Pending',NULL,NULL,NULL,'2020-02-01',NULL,NULL),
 (69,6,2,'Pending',NULL,NULL,NULL,'2020-02-01',NULL,NULL),
 (70,6,7,'Pending',NULL,NULL,NULL,'2020-02-01',NULL,NULL),
 (71,5,12,'Pending',NULL,NULL,NULL,'2020-02-03',NULL,NULL),
 (72,5,20,'Pending',NULL,NULL,NULL,'2020-02-03',NULL,NULL),
 (73,5,8,'Pending',NULL,NULL,NULL,'2020-02-03',NULL,NULL),
 (74,4,3,NULL,NULL,'2020-02-03','\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\ngggggggggggggggggggg','2020-02-03','toooo bad',NULL),
 (75,4,8,'Pending',NULL,NULL,NULL,'2020-02-03',NULL,NULL),
 (76,3,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (77,3,2,NULL,'I am not able to do',NULL,NULL,NULL,NULL,NULL),
 (78,3,2,NULL,NULL,NULL,'huywetifr',NULL,NULL,NULL),
 (79,3,2,NULL,'I am not able to do',NULL,NULL,NULL,NULL,NULL),
 (80,1,4,'Completed',NULL,'2020-02-08','hb','2020-02-08',NULL,NULL),
 (81,1,5,'Pending',NULL,NULL,NULL,'2020-02-08',NULL,NULL);
/*!40000 ALTER TABLE `task_list_trns_tbl` ENABLE KEYS */;


--
-- Definition of table `user_mst_tbl`
--

DROP TABLE IF EXISTS `user_mst_tbl`;
CREATE TABLE `user_mst_tbl` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) DEFAULT NULL,
  `TYPE` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  `CREATED_ON` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `REGISTRATION_NO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_mst_tbl`
--

/*!40000 ALTER TABLE `user_mst_tbl` DISABLE KEYS */;
INSERT INTO `user_mst_tbl` (`ID`,`NAME`,`TYPE`,`PASSWORD`,`CREATED_ON`,`STATUS`,`REGISTRATION_NO`) VALUES 
 (1,'LAKSHMI KANTH','ADMIN','lakshmi123','2020-01-31','Active','TCEMP01'),
 (2,'SRIKANTH','ADMIN','srikanth123','2020-01-31','Active','TCEMP02');
/*!40000 ALTER TABLE `user_mst_tbl` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
