-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2014 at 02:12 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`Id`, `Email`) VALUES
(1, 'ashhaq12345@yahoo.com'),
(2, 'asadul7890@yahoo.com'),
(3, 'asadul7890@yahoo.com'),
(4, 'asdfgfds@yahoo.com'),
(5, 'muntasirturza@gmail.com '),
(7, 'poouh…'),
(8, 'assd'),
(9, 'adafc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Mail` varchar(10000) NOT NULL,
  `Subject` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`Id`, `Name`, `Email`, `Mail`, `Subject`) VALUES
(1, 'ashique', 'ashhaq12345@gmail.com', 'adaifjqj', 'jfasocjjo'),
(2, 'Ashique', 'dw', 'wd\r\n', 'wd'),
(3, 'ashique', 'ashhaq12345@gmail.com', 'asaaaaaaaaaaaaaaaaaa', 'as'),
(4, 'as', 'asqdc', 'feswvzce', 'wfecfc');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `HeadLine` varchar(1000) DEFAULT NULL,
  `FullNews` varchar(10000) DEFAULT NULL,
  `PostingDate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`Id`, `HeadLine`, `FullNews`, `PostingDate`) VALUES
(3, '	\r\nThe undergraduate students of AUST having the backlog of carryover course(s), are advised to apply in prescribed application form', 'The undergraduate students of AUST having the backlog of carryover course(s), are advised to apply in prescribed application form available in the Office of the Controller of Examinations of the University (Block D, Level 5). Filled in application after payment of requisite fees must be submitted to the office of the controller of examinations by Thursday, the 24th July 2014. No application will be received after the time limit mentioned above.\r\n\r\nThe students of 1st/ 2nd/ 3rd/ 4th/5th year 2nd semester can clear the backlog of carryover course(s) along with the students of 1st/ 2nd/ 3rd/ 4th/5th year 1st semester and the students of 2nd/ 3rd/ 4th/5th year 1st semester can clear such course(s) along with the students of 1st/ 2nd/ 3rd/4th year 2nd semester.\r\n\r\nA student can appear at the carryover examination of a course provided that the examination date of the course does not coincide with any examination date of the student concerned.', '26/6/14'),
(4, '	\r\nThe students who do not have Identity Cards with valid sticker, are advised to collect them', 'It is hereby notified for information of all concerned that Identity Cards of the students will be checked in the examination rooms during ensuing Semester Final and Clearance/ Improvement/ Carryover Examinations of the current semester (Spring 2014). The students who do not have Identity Cards with valid sticker, are advised to collect them from their respective Department/School by Thursday, 24 July 2014.', '26/6/14'),
(5, '	\r\nThe students are asked to apply in the prescribed application form for taking delivery of their provisional grade sheets', 'It is hereby notified for information of all concerned that the undergraduate students of AUST will be issued provisional grade sheets of the last semester (Fall 2013). The students are asked to apply in the prescribed application form for taking delivery of their provisional grade sheets. Filled in application after payment of requisite fees (One hundred taka for each grade sheet) must be submitted to the Office of the Controller of Examinations by the 6th July 2014. No application will be received after the time limit mentioned above.', '25/6/14'),
(6, '	 The guidelines of Education Ministry regarding the study tour and picnic', 'This is for information of all concerned that the guidelines of Education Ministry regarding the study tour and picnic are hereby enclosed for information and compliance to go for study tour and picnic.	  	  \r\n 	  ', '24/6/14'),
(7, '	 Notification for the office hour and class hour during the month of Holy Ramadan', '	It is hereby notified for information of all concerned that during the month of Holy Ramadan the Office hours of this University will be from 9:00 am to 3:30 pm with a break of 15 minutes from 01:15 pm to 01:30 pm for Zohar Prayers.\r\nAll the Heads of the Departments/School are requested to arrange classes of the students of this University during Ramadan between 8:00 am and 4:30 pm.\r\n\r\nAfter the Ramadan holidays the Office hours will be from 09:00 am to 05:00 pm as usual and the classes of the students will continue as it is now.', '20/6/14');

-- --------------------------------------------------------

--
-- Table structure for table `res`
--

CREATE TABLE IF NOT EXISTS `res` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Section` char(1) NOT NULL,
  `File` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `res`
--

INSERT INTO `res` (`Id`, `Department`, `Semester`, `Section`, `File`) VALUES
(1, 'CSE', '1.1', 'C', 'cse_t_1_1_1.jpg'),
(2, 'CSE', '1.1', 'A', 'cse_t_1_1_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) NOT NULL,
  `CourseName` varchar(50) NOT NULL,
  `Credit` float NOT NULL,
  `Grade` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Id`, `StudentId`, `CourseName`, `Credit`, `Grade`) VALUES
(1, 120104109, 'Math-3', 3, 3.75),
(2, 120104109, 'DPD', 3, 3.75),
(3, 120104109, 'DPD lab', 1.5, 4),
(4, 120104112, 'Database', 3, 3.25),
(5, 120104109, 'Numerical Method', 3, 3.75),
(6, 120104117, 'Math-3', 3, 3),
(7, 120104109, 'c math', 3, 3.25),
(8, 120104122, 'database', 3, 3.75),
(9, 120104122, 'math-3', 3, 4),
(10, 120104109, 'english', 3, 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE IF NOT EXISTS `routine` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Department` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL,
  `Section` char(1) NOT NULL,
  `File` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`Id`, `Department`, `Semester`, `Section`, `File`) VALUES
(1, 'CSE', '3.1', 'C', 'r3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE IF NOT EXISTS `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`id`, `name`, `link`) VALUES
(1, 'home', 'index.php'),
(2, 'about', 'about.php'),
(3, 'news', 'news.php'),
(4, 'student login', 'Student.php'),
(5, 'staff login', 'Staff.php'),
(6, 'routine', 'Routine.php'),
(7, 'result', 'Result.php'),
(9, 'academic info', 'Academic.php'),
(10, 'admission', 'Admission.php'),
(11, 'administration', 'Administration.php'),
(12, 'gallery', 'gallery.php'),
(13, 'research', 'Research.php'),
(14, 'mail us', 'mail.php');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Id`, `FirstName`, `LastName`, `UserName`, `Password`) VALUES
(1, 'Rahim', 'Islam', 'rahim', '123456'),
(2, 'Karim', 'Islam', 'karim', '123456'),
(3, 'a', 'b', 'admin', 'admin'),
(4, 'Ashique', 'Rahman', 'ashique', '123456'),
(7, 'Nayeem', 'Kariim', 'Nayeem', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Street` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `FirstName`, `LastName`, `Password`, `Street`, `City`) VALUES
(120104107, 'Kaimun', 'Prince', '123456', 'Niketon', 'Dhaka'),
(120104109, 'Ashfaqul', 'Haque', '123456', 'Dhanmondi', 'Dhaka'),
(120104112, 'MUNTASIR', 'TURZA', '123456', 'ELEPHANT ROAD', 'DHAKA'),
(120104117, 'Tasir', 'Aquib', '123456', 'Mirpur', 'Dhaka'),
(120104122, 'Enamul', 'Karim', '123456', 'Dhanmondi', 'Dhaka'),
(120104123, 'Amirul', 'Akib', '123456', 'Farmgate', 'Dhaka');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
