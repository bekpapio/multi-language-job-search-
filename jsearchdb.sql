-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 04:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jsearchdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblapplicants`
--

CREATE TABLE `tblapplicants` (
  `APPLICANTID` int(11) NOT NULL,
  `FNAME` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MNAME` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LNAME` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SEX` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CIVILSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AGE` int(2) NOT NULL,
  `USERNAME` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASS` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EMAILADDRESS` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CONTACTNO` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DEGREE` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `APPLICANTPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NATIONALID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblapplicants`
--

INSERT INTO `tblapplicants` (`APPLICANTID`, `FNAME`, `MNAME`, `LNAME`, `ADDRESS`, `SEX`, `CIVILSTATUS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `USERNAME`, `PASS`, `EMAILADDRESS`, `CONTACTNO`, `DEGREE`, `APPLICANTPHOTO`, `NATIONALID`) VALUES
(2018013, 'Meseret', 'Kebede', 'Girma', 'Ambo City', 'Female', 'Single', '1991-01-01', 'Ambo Citys', 27, 'Meseret', 'f6r7hjhfjfjk12fh34gk', 'meseret@y.com', '0947415456', 'BSCS', 'photos/mes.png', ''),
(2018014, 'Tola', 'Girma', 'Gamessa', 'Fiche City', 'male', 'Single', '1993-01-16', 'Fiche City', 25, 'Tola', 'jfeiofmc12mfkjf3d4', 'tola@y.com', '0923562312', 'BSIT', '', ''),
(2018015, 'Hawi', 'Milkessa', 'Tufa', 'Addis Ababa City', 'Female', 'Married', '1992-01-30', 'Addis Ababa City', 26, 'Hawi', 'hawi123', 'hawi@gmail.com', '0922234234', 'BSIT', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblattachmentfile`
--

CREATE TABLE `tblattachmentfile` (
  `ID` int(11) NOT NULL,
  `FILEID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOBID` int(11) NOT NULL,
  `FILE_NAME` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FILE_LOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `USERATTACHMENTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblattachmentfile`
--

INSERT INTO `tblattachmentfile` (`ID`, `FILEID`, `JOBID`, `FILE_NAME`, `FILE_LOCATION`, `USERATTACHMENTID`) VALUES
(2, '2147483647', 2, 'Resume', 'photos/27052018124027PLATENO FE95483.docx', 2018013);

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 7, 1, 'userid'),
(2, '000', 78, 1, 'employeeid'),
(3, '0', 16, 1, 'APPLICANT'),
(4, '69125', 29, 1, 'FILEID');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGORYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGORYID`, `CATEGORY`) VALUES
(10, 'Technology'),
(11, 'Managerial'),
(12, 'Engineer'),
(13, 'Information Technology'),
(14, 'Computer Science'),
(15, 'HR'),
(23, 'Sales'),
(24, 'Banking'),
(25, 'Finance'),
(26, 'Information System'),
(27, 'Digital Marketing'),
(28, 'Shipping');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `COMPANYID` int(11) NOT NULL,
  `COMPANYNAME` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `COMPANYADDRESS` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `COMPANYCONTACTNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `COMPANYSTATUS` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `COMPANYMISSION` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`COMPANYID`, `COMPANYNAME`, `COMPANYADDRESS`, `COMPANYCONTACTNO`, `COMPANYSTATUS`, `COMPANYMISSION`) VALUES
(2, 'Ethiotel', 'Ethiopia', '+251952365423', '', ''),
(3, 'Safaricom', 'Addis Ababa city', '+2517233565623', '', ''),
(4, 'MergaTrading', 'Adama City', '+251923543165', '', ''),
(6, 'East Cement Company', 'Ambo City', '+251925656899', '', ''),
(7, 'IT Company', 'Addis Ababa City', '+251928745641', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `INCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDRESS` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CIVILSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TELNO` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EMP_EMAILADDRESS` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CELLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `POSITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `WORKSTATS` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EMPPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EMPUSERNAME` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EMPPASSWORD` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATEHIRED` date NOT NULL,
  `COMPANYID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`INCID`, `EMPLOYEEID`, `FNAME`, `MNAME`, `LNAME`, `ADDRESS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `SEX`, `CIVILSTATUS`, `TELNO`, `EMP_EMAILADDRESS`, `CELLNO`, `POSITION`, `WORKSTATS`, `EMPPHOTO`, `EMPUSERNAME`, `EMPPASSWORD`, `DATEHIRED`, `COMPANYID`) VALUES
(76, '2018001', 'Merga', 'Tulu', 'Gemmechu', 'Adama', '1987-01-23', 'Adama', 31, 'Male', 'Married', '+251911231326', 'merga@yahoo.com', '', 'manager', '', '', 'Merga', 'fdaolmerkdga1fh2kjk3g', '2023-02-23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `FEEDBACKID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `REGISTRATIONID` int(11) NOT NULL,
  `FEEDBACK` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbljob`
--

CREATE TABLE `tbljob` (
  `JOBID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `CATEGORY` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OCCUPATIONTITLE` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REQ_NO_EMPLOYEES` int(11) NOT NULL,
  `SALARIES` double NOT NULL,
  `DURATION_EMPLOYEMENT` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QUALIFICATION_WORKEXPERIENCE` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOBDESCRIPTION` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `PREFEREDSEX` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SECTOR_VACANCY` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOBSTATUS` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATEPOSTED` datetime NOT NULL,
  `OCCUPATIONALTITLE_AMH` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOBDESCRIPTION_AMH` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QUALIFICATION_WORKEXPERIENCE_AMH` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OCCUPATIONALTITLE_ORO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOBDESCRIPTION_ORO` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QUALIFICATION_WORKEXPERIENCE_ORO` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbljob`
--

INSERT INTO `tbljob` (`JOBID`, `COMPANYID`, `CATEGORY`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`, `JOBSTATUS`, `DATEPOSTED`, `OCCUPATIONALTITLE_AMH`, `JOBDESCRIPTION_AMH`, `QUALIFICATION_WORKEXPERIENCE_AMH`, `OCCUPATIONALTITLE_ORO`, `JOBDESCRIPTION_ORO`, `QUALIFICATION_WORKEXPERIENCE_ORO`) VALUES
(1, 2, 'Technology', 'Networking', 6, 15000, '', 'Two year Experience', 'We are looking for bachelor of science in information technology.', 'Male/Female', 'yes', '', '2023-03-20 00:00:00', 'ኔቶርኪንግ', 'የመጀመሪያ ዲግሪ በ ኢንጂነሪንግ', '2 አመት የስራ ልምድ', 'networkingi', 'digiri jalqba', 'muxano waga lama'),
(2, 3, 'Technology', 'Accounting', 1, 15000, '', 'Two years Experience', 'We are looking for bachelor of science in Acountancy', 'Male/Female', 'yes', '', '2023-03-20 02:33:00', 'አካውንቲንግ', 'የመጀመሪያ ዲግሪ በ አካውንቲንግ', '2 አመት ስራ ልምድ', 'accountingi', 'accountingi digri jalqaba ', 'muxano waga lama');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobregistration`
--

CREATE TABLE `tbljobregistration` (
  `REGISTRATIONID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `APPLICANT` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REGISTRATIONDATE` date NOT NULL,
  `REMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `FILEID` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PENDINGAPPLICATION` tinyint(1) NOT NULL DEFAULT 1,
  `HVIEW` tinyint(1) NOT NULL DEFAULT 1,
  `DATETIMEAPPROVED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbljobregistration`
--

INSERT INTO `tbljobregistration` (`REGISTRATIONID`, `COMPANYID`, `JOBID`, `APPLICANTID`, `APPLICANT`, `REGISTRATIONDATE`, `REMARKS`, `FILEID`, `PENDINGAPPLICATION`, `HVIEW`, `DATETIMEAPPROVED`) VALUES
(1, 2, 2, 1, 'Mesresha Mesfin', '2023-03-27', 'Ive seen your work and its really interesting', '2147483647', 0, 1, '2023-03-28 16:13:01'),
(2, 2, 3, 2, 'Mesfin mulatu', '2023-03-26', 'Ive seen your work and its really interesting', '2147483647', 0, 0, '2023-03-26 14:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FULLNAME` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `USERNAME` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASS` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ROLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PICLOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `FULLNAME`, `USERNAME`, `PASS`, `ROLE`, `PICLOCATION`) VALUES
('00018', 'tkCoders', 'tolcha', 'admin123', 'Administrator', 'photos/tk1.jpg'),
('2018001', 'Merga Tulu', 'Merga', 'merga1234', 'Employee', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  ADD PRIMARY KEY (`APPLICANTID`);

--
-- Indexes for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`COMPANYID`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`INCID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`FEEDBACKID`);

--
-- Indexes for table `tbljob`
--
ALTER TABLE `tbljob`
  ADD PRIMARY KEY (`JOBID`);

--
-- Indexes for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  ADD PRIMARY KEY (`REGISTRATIONID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  MODIFY `APPLICANTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2018016;

--
-- AUTO_INCREMENT for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `COMPANYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `INCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `JOBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  MODIFY `REGISTRATIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
