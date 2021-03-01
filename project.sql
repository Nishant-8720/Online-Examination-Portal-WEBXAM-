-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 09:04 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'nishant@gmail.com', '8720'),
(2, 'admin@admin.com', 'admin'),
(4, 'rutee@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('5d78f14fe86a0', '5d78f1500294d'),
('5d78f1504e362', '5d78f1505bd20'),
('5d78f1509f4df', '5d78f150acebc'),
('5d78f150dfba4', '5d78f150edc4c'),
('5d78f15142883', '5d78f1514a307'),
('5d78f1518baa3', '5d78f151932b2'),
('5d78f151c9385', '5d78f151d1d19'),
('5d78f1520dee2', '5d78f152168e6'),
('5d78f1523e806', '5d78f15249e91'),
('5d78f15271d03', '5d78f1527a928'),
('5d78f152abfa7', '5d78f152b60ab'),
('5d78f152ddf52', '5d78f152ee933');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5d70eaebae6e2', 'pratiksha kale', 'a@gmail.com', 'a', 'aa\r\n', '2019-09-05', '01:00:59pm'),
('5d762bda5bfb6', 'gfgf', 'gh@gmail.com', 'jhkhk', 'hgfhg', '2019-09-09', '12:39:22pm'),
('5d828d4290a3e', 'a', 'asdd@gmail.com', 'as', 'sdad', '2019-09-18', '10:02:10pm'),
('5d828ec8dd12e', '', '', '', '', '2019-09-18', '10:08:40pm'),
('5d828ef211bf3', '', '', '', '', '2019-09-18', '10:09:22pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('ahireharshala2002@gmail.com', '5589222f16b93', 1, 2, 1, 1, '2019-09-06 17:35:59'),
('nishant@gmail.com', '5589222f16b93', -3, 2, 0, 3, '2019-09-09 10:34:47'),
('nishant@gmail.com', '5589222f16b93', -3, 2, 0, 3, '2019-09-09 10:34:47'),
('d.@gmail.com', '5589222f16b93', -3, 2, 0, 3, '2019-09-09 10:35:27'),
('nishant@gmail.com', '5d78f149bc03f', -24, 12, 0, 12, '2019-09-11 13:06:49'),
('nichhay987@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2019-09-16 04:11:16'),
('nichhay987@gmail.com', '5d78f149bc03f', -25, 12, 1, 13, '2019-09-16 04:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('5d78f14fe86a0', '', '5d78f1500294d'),
('5d78f14fe86a0', '', '5d78f15002953'),
('5d78f14fe86a0', '', '5d78f15002955'),
('5d78f14fe86a0', '', '5d78f15002957'),
('5d78f1504e362', '', '5d78f1505bd20'),
('5d78f1504e362', '', '5d78f1505bd25'),
('5d78f1504e362', '', '5d78f1505bd27'),
('5d78f1504e362', '', '5d78f1505bd29'),
('5d78f1509f4df', '', '5d78f150acebc'),
('5d78f1509f4df', '', '5d78f150acec2'),
('5d78f1509f4df', '', '5d78f150acec3'),
('5d78f1509f4df', '', '5d78f150acec4'),
('5d78f150dfba4', '', '5d78f150edc4c'),
('5d78f150dfba4', '', '5d78f150edc51'),
('5d78f150dfba4', '', '5d78f150edc54'),
('5d78f150dfba4', '', '5d78f150edc55'),
('5d78f15142883', '', '5d78f1514a307'),
('5d78f15142883', '', '5d78f1514a30d'),
('5d78f15142883', '', '5d78f1514a30f'),
('5d78f15142883', '', '5d78f1514a310'),
('5d78f1518baa3', '', '5d78f151932b2'),
('5d78f1518baa3', '', '5d78f151932b7'),
('5d78f1518baa3', '', '5d78f151932b9'),
('5d78f1518baa3', '', '5d78f151932ba'),
('5d78f151c9385', '', '5d78f151d1d19'),
('5d78f151c9385', '', '5d78f151d1d20'),
('5d78f151c9385', '', '5d78f151d1d22'),
('5d78f151c9385', '', '5d78f151d1d23'),
('5d78f1520dee2', '', '5d78f152168e6'),
('5d78f1520dee2', '', '5d78f152168eb'),
('5d78f1520dee2', '', '5d78f152168ed'),
('5d78f1520dee2', '', '5d78f152168ee'),
('5d78f1523e806', '', '5d78f15249e91'),
('5d78f1523e806', '', '5d78f15249e96'),
('5d78f1523e806', '', '5d78f15249e98'),
('5d78f1523e806', '', '5d78f15249e9a'),
('5d78f15271d03', '', '5d78f1527a928'),
('5d78f15271d03', '', '5d78f1527a92c'),
('5d78f15271d03', '', '5d78f1527a92d'),
('5d78f15271d03', '', '5d78f1527a92e'),
('5d78f152abfa7', '', '5d78f152b60ab'),
('5d78f152abfa7', '', '5d78f152b60af'),
('5d78f152abfa7', '', '5d78f152b60b0'),
('5d78f152abfa7', '', '5d78f152b60b1'),
('5d78f152ddf52', '', '5d78f152ee933'),
('5d78f152ddf52', '', '5d78f152ee939'),
('5d78f152ddf52', '', '5d78f152ee93b'),
('5d78f152ddf52', '', '5d78f152ee93d');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('5d78f149bc03f', '5d78f14fe86a0', '', 4, 1),
('5d78f149bc03f', '5d78f1504e362', '', 4, 2),
('5d78f149bc03f', '5d78f1509f4df', '', 4, 3),
('5d78f149bc03f', '5d78f150dfba4', '', 4, 4),
('5d78f149bc03f', '5d78f15142883', '', 4, 5),
('5d78f149bc03f', '5d78f1518baa3', '', 4, 6),
('5d78f149bc03f', '5d78f151c9385', '', 4, 7),
('5d78f149bc03f', '5d78f1520dee2', '', 4, 8),
('5d78f149bc03f', '5d78f1523e806', '', 4, 9),
('5d78f149bc03f', '5d78f15271d03', '', 4, 10),
('5d78f149bc03f', '5d78f152abfa7', '', 4, 11),
('5d78f149bc03f', '5d78f152ddf52', '', 4, 12);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 09:09:03'),
('5d78f149bc03f', 'Wsda', 1, 2, 12, 12, 'dsadsdfs\r\nsdfsdf\r\ngsd\r\ndfs\r\nfds\r\nfsd\r\n\r\nsd', 'ds', '2019-09-11 13:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('kalepratiksha888@gmail.com', -5, '2019-09-05 10:59:45'),
('ahireharshala2002@gmail.com', 1, '2019-09-06 17:35:59'),
('d.@gmail.com', -5, '2019-09-09 10:35:27'),
('nichhay987@gmail.com', -21, '2019-09-16 04:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('A', 'M', 'a', 'a@gmail.com', 0, '827ccb0eea8a706c4c34a16891f84e7b'),
('Abc', 'F', 'RSCOE', 'ab@gmail.com', 45, '827ccb0eea8a706c4c34a16891f84e7b'),
('Harshala Ahire', 'F', 'pcp', 'ahireharshala2002@gmail.com', 914644274, '8e3308c853e47411c761429193511819'),
('Abc', 'M', 'kjasd', 'asd@gmail.com', 12, '827ccb0eea8a706c4c34a16891f84e7b'),
('A', 'M', 'RSCOE', 'asdd@gmail.com', 0, '827ccb0eea8a706c4c34a16891f84e7b'),
('Dnyashwar', 'M', 'RSCOE', 'd.@gmail.com', 7896541230, '827ccb0eea8a706c4c34a16891f84e7b'),
('J', 'Male', 'h', 'h@g.com', 0, '827ccb0eea8a706c4c34a16891f84e7b'),
('Pratiksha Kale', 'F', 'R.S.C.O.E.', 'kalepratiksha888@gmail.com', 9689210650, '9d1791280d0002d876091c2453a2c825'),
('Manas Tambat', 'M', 'RSCOE', 'manastambat365@gmail.com', 9527549031, '60a048a91bd4e72173ee5194077009bd'),
('Nichhay', 'M', 'RSCOE', 'nichhay987@gmail.com', 8999463934, '9fab6755cd2e8817d3e73b0978ca54a6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
