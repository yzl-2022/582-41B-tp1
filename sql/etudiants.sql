-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 02:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_tp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` text NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `telephone`, `email`, `date_de_naissance`, `ville_id`, `created_at`, `updated_at`) VALUES
(1, 'Agustina Bergstrom', '647 Altenwerth Course Apt. 378\nNorth Finnchester, PA 33698-6550', '+1-810-864-8295', 'reynolds.burnice@upton.com', '1983-06-09', 6, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(2, 'Stevie Roberts', '710 Jerald Branch Apt. 415\nNorth Amira, SC 92162-5478', '283-817-6126', 'ekeebler@yahoo.com', '2008-01-19', 12, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(3, 'Mrs. Jannie Reinger', '573 Hahn Knolls\nNorth Lynn, MI 11164', '+1 (626) 834-1196', 'lawson.swaniawski@walsh.com', '2023-08-18', 5, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(4, 'Bridie Boehm', '79133 Fritsch Green\nNorth Danial, NM 36100', '(602) 738-7764', 'aisha.lindgren@hotmail.com', '1979-06-23', 9, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(5, 'Mandy Armstrong', '51261 Candelario Keys Suite 605South Cleveland, MS 01731', '+1-364-286-8071', 'okautzer@gmail.com', '2001-11-29', 14, '2024-02-13 22:53:35', '2024-02-20 00:44:37'),
(6, 'Vince Murray', '5361 Wintheiser Radial Apt. 409\nPort Sheridan, NE 65558', '530-518-9459', 'cgerlach@hotmail.com', '1950-06-17', 7, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(7, 'Mr. Morgan Roberts', '986 Hintz Wells Apt. 515\nBorerstad, UT 41277-6043', '+1-747-630-8687', 'sborer@yahoo.com', '1968-11-03', 6, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(8, 'Nella Cole', '3417 Aryanna River Suite 762\nPort Jerryborough, WA 63850', '304-232-0934', 'gillian.grimes@gusikowski.com', '1953-06-19', 11, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(9, 'Aurore Skiles', '499 Dickens Drive\nNew Hilma, GA 26971', '458-252-1930', 'destiny.mcglynn@gmail.com', '1985-06-19', 10, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(10, 'Dr. Rickie Fay DDS', '732 Casper Islands Suite 023\nStokesland, UT 88671', '(854) 423-7300', 'ellen.mraz@bogisich.biz', '1970-09-03', 14, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(11, 'Richard Wisoky', '58011 Robel Key Suite 034\nBarrowsstad, AK 50224', '+1-651-256-2103', 'torp.maximilian@witting.info', '1968-02-29', 4, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(12, 'Cloyd Wolf', '1161 Paxton Hill Apt. 309\nFelicityborough, WV 31628', '+1-601-478-9378', 'spencer.rohan@lowe.org', '2021-10-24', 15, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(13, 'Britney Welch', '9012 Brian Ville Apt. 590\nHayleestad, TN 72493', '316.944.2395', 'jamil19@gmail.com', '1963-09-27', 10, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(14, 'Riley Hoeger', '2924 Kovacek Ranch\nBoganberg, PA 33331-6624', '+1-281-460-2379', 'dstanton@kerluke.com', '1969-11-20', 8, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(15, 'Elna Weimann IV', '36016 Schoen Neck\nAishachester, AZ 07494-9866', '854.493.2697', 'hwillms@sipes.org', '2017-09-11', 9, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(16, 'Dr. Brendon Bailey', '162 Flatley Orchard Apt. 564\nNorth Lenny, ID 72001-1291', '+1-857-337-1355', 'blaze67@macejkovic.com', '1966-10-25', 1, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(17, 'Dr. Bernadette O\'Connell', '4774 Halvorson Harbors Apt. 042\nNew Corrine, CO 77641', '1-417-853-8370', 'jdurgan@block.org', '1958-04-14', 15, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(18, 'Yazmin Monahan Jr.', '378 Hickle Pass Suite 048\nHegmanntown, WV 28439-7230', '564-441-8605', 'kristian98@ernser.com', '1952-02-07', 2, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(19, 'Bradly Heathcote', '477 Okuneva Circle Apt. 294\nDooleystad, TN 73797', '605-302-9426', 'towne.krystel@hotmail.com', '1960-12-08', 14, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(20, 'Kaela Kub MD', '93119 Huel Crescent\nSouth Jorgetown, OR 88629-5277', '406.742.2486', 'rempel.cornelius@jones.com', '1994-07-28', 3, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(21, 'Watson Hane', '933 Christiansen Keys Suite 863\nNew Arlo, IA 71000', '+1.402.652.3453', 'zwitting@ohara.biz', '1937-05-14', 15, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(22, 'Ms. Delpha Hickle', '6864 Christop Point Apt. 776\nLondonhaven, AK 49142-5170', '(347) 739-0610', 'balistreri.marco@rosenbaum.org', '1991-09-13', 1, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(23, 'Albina Cummings', '4486 Ferry Grove Suite 768\nReynoldsland, OR 33581-6770', '737.786.8117', 'naufderhar@terry.com', '2000-05-29', 9, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(24, 'Elinore Waelchi', '738 Smitham Road\nStanfordstad, CA 13864-2063', '838-694-0451', 'tbergstrom@bogisich.biz', '2002-05-10', 6, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(25, 'Carissa Roob', '7056 Schmeler Mountain\nPort Einar, ID 77471-8972', '(540) 900-1979', 'jzboncak@yahoo.com', '1986-05-11', 14, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(26, 'Prof. Delaney O\'Hara Jr.', '13035 Hegmann Villages\nWest Tommie, DE 13131-8159', '(234) 486-0572', 'aracely.donnelly@swift.com', '1983-06-06', 11, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(27, 'Amya Koch', '52255 Jermaine Drive\nKleinville, MD 68188-8446', '(858) 482-4857', 'estrella82@gmail.com', '2010-06-12', 3, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(28, 'Gunnar Hansen', '21491 Schaefer Drives\nKihnmouth, MO 38028', '+1.631.405.7573', 'gulgowski.idell@rice.com', '1951-11-27', 15, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(29, 'Torey Champlin', '962 Gulgowski DriveWilliamsonfurt, MN 81361-1284', '458.353.8601', 'trunolfsdottir@ernser.net', '1963-09-15', 13, '2024-02-13 22:53:35', '2024-02-20 00:49:41'),
(30, 'Connie Ernser', '642 Verla Groves Suite 334\nWest Joymouth, PA 50905', '1-269-918-0707', 'bjohnson@yahoo.com', '1982-01-12', 4, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(31, 'Ali Zboncak', '860 Friesen Station Suite 318\nSouth Violaside, VA 20512', '234.392.7647', 'daisy19@yahoo.com', '1980-03-17', 15, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(32, 'Maida Konopelski Sr.', '87374 Williamson Forest Suite 055\nPort Neha, MA 34720-0386', '1-680-436-5755', 'stokes.aleen@murazik.com', '1980-10-05', 11, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(33, 'Yadira Waters', '15540 Emard Highway Apt. 704\nNew Hollyville, NM 22062', '1-480-784-9755', 'wilfrid89@hand.info', '1961-07-29', 5, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(34, 'Demarco Frami', '19167 Rebeca Parkway\nCruickshankbury, AL 83221', '1-703-712-5169', 'fspinka@yahoo.com', '1927-01-06', 7, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(35, 'Jamel Heathcote', '415 Charlie Well Apt. 886\nLake Devynbury, CO 45016', '(757) 595-2332', 'shaina.anderson@hotmail.com', '2021-03-20', 13, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(36, 'Jerel Brakus', '32070 Yundt Walks Suite 388\nEast Horace, ND 06590', '1-470-265-7380', 'taufderhar@gmail.com', '1956-03-23', 1, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(37, 'Kianna Howe MD', '23573 Howell Cliff Apt. 555\nSouth Uriahhaven, LA 27506', '+1 (904) 739-5216', 'konopelski.helen@towne.com', '2020-04-10', 10, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(38, 'Dr. Lauriane Kilback MD', '96084 Ignacio Wall Apt. 439\nMohrfurt, DE 89931-3106', '1-440-353-2455', 'murray.lois@rath.com', '1986-05-03', 2, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(39, 'Jacey Monahan Sr.', '1972 Cartwright Path\nWilliamsonbury, WA 78234-1576', '(380) 482-7496', 'kris.abbey@olson.com', '1948-08-07', 14, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(40, 'Major Thiel', '415 Fay Square\nNorth Katlyn, FL 49248-7986', '+1-231-795-7745', 'pbradtke@harber.net', '1953-03-06', 3, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(41, 'Bradley Boyer', '2947 Danial Manors Suite 616\nEast Erikmouth, IL 58997', '(520) 764-2290', 'vonrueden.chasity@gmail.com', '1983-03-23', 14, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(42, 'Winona Leuschke DDS', '7078 Rowe Bypass\nEdgardoshire, DC 11215-6523', '303.265.3425', 'delmer24@yahoo.com', '1927-11-02', 6, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(43, 'Teresa Schaden', '27864 Lonnie Roads Apt. 234\nNorth Daishaville, DC 99894-4025', '(240) 530-4314', 'miracle51@beer.info', '1965-12-03', 14, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(44, 'Piper Kessler', '3657 Joyce Forest Apt. 277\nRubieport, UT 45491', '+1.845.769.9196', 'verda89@hotmail.com', '2022-12-28', 12, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(45, 'Dr. Vincenzo Zemlak Jr.', '75030 Alberta Port Apt. 824\nEast Jeramie, CT 47695', '321-443-9822', 'otilia.lockman@grady.com', '1977-10-21', 2, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(46, 'Tyshawn Mertz', '547 Toy Brook\nClairland, UT 41862-2307', '469.546.4989', 'wendy.nader@yahoo.com', '1933-06-30', 1, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(47, 'Patricia D\'Amore', '631 Demario Hills Suite 171\nRyleeland, MT 84154', '(573) 220-5675', 'kip70@gmail.com', '1933-11-03', 4, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(48, 'Karolann Mueller', '36788 Legros Trafficway\nGleasonburgh, KS 70471', '+1.929.635.1571', 'palma96@beatty.com', '1950-08-12', 8, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(49, 'Vena Rohan', '32407 Janice Knoll\nCeceliafort, OH 78963', '+1-714-370-3650', 'kaylee.smitham@treutel.com', '1958-08-19', 14, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(50, 'Prof. Hillary Halvorson', '34319 Aaliyah Trafficway Suite 760\nEichmannborough, MA 16032', '1-272-649-3572', 'casper.junior@gmail.com', '1993-12-03', 3, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(51, 'Josiah Greenfelder', '8237 Laurence Oval Apt. 279\nEast Boburgh, GA 33955-8817', '+1 (703) 257-3746', 'mohamed.roberts@rice.biz', '1970-03-02', 7, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(52, 'Mrs. Jayne Flatley', '6074 Morar Mountains Apt. 607\nJeffreyhaven, DE 97504', '+15742208179', 'okeefe.gerry@hotmail.com', '1974-07-11', 9, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(53, 'Miss Matilda Klein', '561 Hickle Valley\nLynchbury, MD 86114-8338', '1-904-426-2485', 'tristian.cruickshank@gmail.com', '1958-09-11', 15, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(54, 'Dr. Bryon Kutch DDS', '521 Crooks Island Suite 163\nChanelleside, NV 45995-2346', '+1.309.904.3662', 'nsanford@gmail.com', '1966-05-09', 4, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(55, 'Dr. Gregoria Douglas', '6022 Marilou Bypass Suite 283\nHelmertown, WV 12292-0903', '906.273.8778', 'icarter@hotmail.com', '1939-05-07', 8, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(56, 'Prof. Cody Lesch III', '15130 Elroy Plains Suite 204\nMadisenborough, NE 76315-5932', '+1.323.537.6823', 'eberge@yahoo.com', '1946-05-20', 6, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(57, 'Arturo Franecki', '20696 Schneider Well Suite 549\nSouth Perry, CO 40614-0964', '+1-986-810-9235', 'araceli60@yahoo.com', '2001-06-03', 10, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(58, 'Miss Amalia Collier DVM', '62458 Merritt Plain\nTressiestad, AR 92366-4483', '713-718-4600', 'pietro.schroeder@larson.biz', '1957-06-03', 12, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(59, 'Selina Ryan Jr.', '12252 Abe Prairie Suite 138\nWest Wilburnshire, MO 99752', '276-568-5739', 'corkery.savanah@hotmail.com', '1966-06-01', 12, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(60, 'Lue Hane', '299 Alice Grove\nLake Annabellport, MI 54799-0117', '+1-959-776-2488', 'reilly.adelia@von.info', '1936-10-02', 12, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(61, 'Fay Jones', '6433 Mohr Station\nWillmshaven, ND 78137', '(724) 558-0158', 'dante02@gmail.com', '1993-08-13', 9, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(62, 'Candace Bashirian', '25283 Glen Cape Suite 301\nNew Deltahaven, WY 21645-4565', '1-847-379-5250', 'beer.mustafa@yahoo.com', '2023-11-26', 11, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(63, 'Augusta Upton', '83269 Gutmann Via Suite 099\nDaneburgh, MI 54835', '+1.380.766.5706', 'koepp.monserrat@hotmail.com', '1986-10-17', 5, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(64, 'Dashawn Wuckert DVM', '71003 Ruecker Forks Apt. 630\nMargaretside, MA 55860-8933', '+14154571315', 'allene.goodwin@hills.com', '1996-02-22', 15, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(65, 'Iva Dickens I', '690 Mueller Roads Suite 678\nLake Jonathon, CO 62894-9218', '1-432-326-1738', 'bonnie.marvin@gmail.com', '1935-06-22', 3, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(66, 'Aliza Rempel', '9405 Hadley River Suite 494\nTaylorchester, SC 02512', '484.215.4481', 'weber.jarrod@rogahn.com', '2000-03-07', 3, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(67, 'Deshaun Mayer', '307 Schuppe Park Apt. 961\nSouth Leachester, CA 17393-2764', '423.249.8391', 'adams.shayna@yahoo.com', '1970-03-08', 10, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(68, 'Ms. Eva Stoltenberg II', '836 Bartell Estates Suite 771\nNew Jaleelchester, AL 44194-6399', '662.340.7960', 'alyce73@stokes.com', '2009-03-26', 13, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(69, 'Alexandro McKenzie', '63679 Turcotte Landing Apt. 584\nHaleyburgh, TX 83829', '1-971-789-8847', 'coy.kassulke@gmail.com', '1993-04-08', 15, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(70, 'Eloisa Berge', '3110 Kavon Bridge\nWymanville, PA 28823-1552', '360.890.9400', 'rylee.wiegand@hotmail.com', '2023-10-05', 3, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(71, 'Micah Swift', '99965 Shanelle Parkways\nWest Selmer, CT 14054', '901.213.3902', 'corwin.della@frami.com', '1953-10-27', 9, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(72, 'Bonita Ferry DVM', '6634 Brendon Causeway Suite 742\nLangtown, VA 12011', '541.684.5562', 'qstamm@hotmail.com', '1954-09-20', 12, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(73, 'Thelma Conroy', '69664 Vita Estates Suite 504\nKamrynbury, LA 70295-7130', '401.595.2380', 'kylee.donnelly@strosin.com', '1984-10-14', 1, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(74, 'Richard Johnston', '757 Hadley Wells\nSouth Tianaton, ID 53455', '1-629-853-2341', 'becker.elvera@medhurst.com', '1974-02-04', 14, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(75, 'Frederique Dach', '874 Eladio Club Suite 712\nBroderickside, OH 68595', '831-790-0720', 'ronny.langworth@yahoo.com', '2016-11-05', 8, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(76, 'Asa Muller', '766 Leonie Cliff Apt. 117\nLamontside, WV 19354', '(380) 395-3786', 'bianka87@pfannerstill.com', '2003-02-23', 13, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(77, 'Davonte Rempel MD', '401 Russel Stravenue\nNorth Zoie, MA 17259-9885', '+19545703204', 'mfunk@stroman.com', '1944-01-16', 13, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(78, 'Aleen Rodriguez', '75325 Katelynn Field Suite 420\nJacobiburgh, OK 24239-9014', '+1.878.848.3563', 'kasandra.ryan@sanford.com', '1961-12-19', 3, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(79, 'Devante Turner', '12113 Anabel Way Apt. 259\nPort Keshaunborough, KY 28293-2852', '364-379-4415', 'jasen19@hotmail.com', '1987-01-10', 10, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(80, 'Geo Raynor', '6649 Sammie Vista\nLake Brain, NV 74424', '1-385-298-6077', 'jarvis74@hotmail.com', '1980-06-04', 9, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(81, 'Beatrice Haag PhD', '75188 Abbott Lane\nWest Daxmouth, WI 42243-4594', '1-207-905-4173', 'steuber.bert@blick.com', '1939-02-12', 7, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(82, 'Ceasar Bergstrom', '83832 Kunde Plains Suite 521\nNorth Goldenport, VT 25052', '408-742-5307', 'price.andreanne@crona.biz', '1985-04-17', 5, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(83, 'Tianna Zieme', '35483 Weber Station\nVernachester, NH 49914-7632', '+1 (510) 876-1302', 'koepp.ken@senger.com', '1948-10-07', 4, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(84, 'Bertrand Nikolaus', '768 Manuel Flats\nVivaton, OR 30014-8253', '440-897-0140', 'stephen86@gmail.com', '2006-12-29', 1, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(85, 'Ansel Medhurst V', '141 Alejandrin Avenue Suite 173\nNorth Travon, MO 90221-0865', '216-603-3041', 'rbernhard@hotmail.com', '1982-04-07', 3, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(86, 'Bryce Oberbrunner', '3250 Elias Manor Suite 247\nNorth Helen, OR 89440', '478.930.3295', 'pkoepp@yahoo.com', '2002-09-19', 1, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(87, 'Winfield Kohler II', '696 Elody Vista\nMargotbury, TN 42664', '1-985-807-7849', 'hhane@runolfsdottir.com', '2022-09-17', 8, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(88, 'Lisa Hyatt', '2020 Pamela Well\nKutchview, LA 10858', '458.767.2087', 'wilburn.okon@gleichner.com', '1960-10-09', 9, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(89, 'Talia Bosco', '5139 Spencer Fork\nDillonbury, DE 30830', '+1-203-525-6055', 'wyman.elta@yahoo.com', '1981-03-18', 13, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(90, 'Jewel Durgan', '377 Durgan Road Apt. 388\nPort Jade, NE 37597-2884', '1-949-299-2278', 'glover.annamae@gmail.com', '2005-05-24', 11, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(91, 'Colten Bechtelar', '41547 Annalise Extension\nGraycebury, AK 88490', '+19349983051', 'dell13@bauch.net', '1935-02-28', 4, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(92, 'Miss Kitty Jaskolski I', '86566 Tiana Common\nLake Haroldbury, NY 35599', '1-276-849-4017', 'dalton.bartoletti@zulauf.biz', '1985-11-09', 5, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(93, 'Valerie Labadie DVM', '45211 Haley Meadows\nMiracleview, IL 89768-4666', '1-813-215-4922', 'wrunolfsson@bechtelar.com', '2005-08-03', 6, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(94, 'Emiliano Kuhn', '90932 Jewell Drive Apt. 249\nJadonfurt, ID 31139-5599', '+1 (385) 212-4655', 'luciano55@yahoo.com', '1976-01-15', 11, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(95, 'Moises Abernathy', '39632 Odessa Springs\nKassulkechester, AR 87247', '+1 (305) 297-3616', 'hiram.herzog@bailey.biz', '2020-01-27', 15, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(96, 'Rahul Medhurst', '9401 Sawayn Corner\nBarrowshaven, ME 17551', '715-720-5967', 'pascale36@hotmail.com', '1964-01-14', 5, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(97, 'Linnie Hamill', '3263 Ford Motorway\nEast Blair, DC 47730', '540-618-0680', 'marianna.osinski@gmail.com', '1949-09-25', 13, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(98, 'Marcelo Wilderman', '8954 Wunsch Fields\nSouth Amirabury, AZ 53453-3198', '+1-986-557-4424', 'mohr.genevieve@hotmail.com', '1946-05-11', 1, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(99, 'Ms. Cristal Langosh', '72793 Roxane Turnpike\nDannieville, FL 50371', '+1 (234) 353-7534', 'mrutherford@wolff.com', '1928-05-25', 10, '2024-02-13 22:53:35', '2024-02-13 22:53:35'),
(103, '123', '123123', '1231231234', '123@123.com', '2023-12-01', 1, '2024-02-23 18:47:40', '2024-02-23 18:47:40'),
(104, '123456', '123123123', '1231111234', '123.456@123.com', '2023-11-06', 11, '2024-02-23 18:48:36', '2024-02-23 18:48:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etudiants_ville_id_foreign` (`ville_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
