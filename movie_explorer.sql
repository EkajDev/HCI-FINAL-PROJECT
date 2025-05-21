-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 06:48 PM
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
-- Database: `movie_explorer`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `search_count` int(11) DEFAULT 1,
  `poster_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `search_count`, `poster_url`) VALUES
(129, 'Spirited Away', 1, 'https://image.tmdb.org/t/p/w500/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg'),
(335, 'Once Upon a Time in the West', 3, 'https://image.tmdb.org/t/p/w500/qbYgqOczabWNn2XKwgMtVrntD6P.jpg'),
(12246, 'Mongol: The Rise of Genghis Khan', 1, 'https://image.tmdb.org/t/p/w500/wZ0yyU6BnRANXbYbDjrYI6XZFsz.jpg'),
(14411, 'Sinbad: Legend of the Seven Seas', 3, 'https://image.tmdb.org/t/p/w500/yiW2L1fDiBT7AeWXrykhTNtPrr8.jpg'),
(19947, 'The Adventures of Mark Twain', 4, 'https://image.tmdb.org/t/p/w500/r6KK1ALNI0KDhlnR3vaeBoEvlFh.jpg'),
(25544, 'Kim Novak Never Swam in Genesaret\'s Lake', 1, 'https://image.tmdb.org/t/p/w500/tpVDiw0p6T67VL3v2GWzB973FW6.jpg'),
(26547, '\'Twas the Night Before Christmas', 4, 'https://image.tmdb.org/t/p/w500/i5qPfBSeKjNbFPl1CseOUSNqKGe.jpg'),
(31347, 'Cardcaptor Sakura: The Sealed Card', 3, 'https://image.tmdb.org/t/p/w500/xvReXWSIieGMWj0Dzh9hxtJe4Fq.jpg'),
(40650, 'The Silence of the Sea', 3, 'https://image.tmdb.org/t/p/w500/5yagil6aUFTkdYqIoldZmDAGpay.jpg'),
(43100, 'General Della Rovere', 1, 'https://image.tmdb.org/t/p/w500/dTynqWaUm92ecwxCuMkTdHCoOfx.jpg'),
(47570, 'Maid in Sweden', 1, 'https://image.tmdb.org/t/p/w500/mI9hLOxGfx5bPgygQrdMMDR6NLu.jpg'),
(52131, 'Gen', 1, 'https://image.tmdb.org/t/p/w500/ydsgjSKBjAdMETtqwpG2ueuCLPK.jpg'),
(54320, 'Love', 6, 'https://image.tmdb.org/t/p/w500/ghKqC61MuwJIY8Wh61258fxpcRV.jpg'),
(56793, 'Long Live the Seal', 3, 'https://image.tmdb.org/t/p/w500/ehFKpF7wnQvjqPZ9ldz0lGJcuRf.jpg'),
(57361, 'The Yellow Sea', 3, 'https://image.tmdb.org/t/p/w500/16Pkg2ChCdACbBKVIAPAZtLL6eb.jpg'),
(57982, 'Sonic: Night of the Werehog', 3, 'https://image.tmdb.org/t/p/w500/8EpqInXBpIqtf7csOmHFsdEvIj3.jpg'),
(58404, 'The Treasure of San Gennaro', 1, 'https://image.tmdb.org/t/p/w500/wAj2GiU25Xh8zgkEG7VC5zMj6cq.jpg'),
(59719, 'Lupin the Third: Sweet Lost Night', 1, 'https://image.tmdb.org/t/p/w500/6V1Cq6w0owXqAJ1BsPga350vbjK.jpg'),
(60404, 'Gentleman Killer', 1, 'https://image.tmdb.org/t/p/w500/1gtvcXx49jB85G1hdjY75klUJN4.jpg'),
(67884, 'Chinese Take-Away', 1, 'https://image.tmdb.org/t/p/w500/wSrMT1YrcMH4NdzH7IdJaQzgzJc.jpg'),
(75432, 'Sweet Sex and Love', 1, 'https://image.tmdb.org/t/p/w500/zu002fbXHiJbtOgKMpOxhb9vJN5.jpg'),
(80591, 'W.E.', 3, 'https://image.tmdb.org/t/p/w500/aNE7gtJ8vrhG4vaDbetMa1SLxGi.jpg'),
(81773, 'Deadly Sweet', 1, 'https://image.tmdb.org/t/p/w500/3EH74GvkUYczWo5UVCJuh56kku5.jpg'),
(87755, 'We', 3, NULL),
(100138, 'CAPiTA: Defenders of Awesome', 1, 'https://image.tmdb.org/t/p/w500/rPBymzY0bVeRCgihCb1N15PNr48.jpg'),
(100586, 'My Name Is Love', 6, 'https://image.tmdb.org/t/p/w500/pgnVgwrb4sSGhJGDnag3HgmUUTc.jpg'),
(103926, 'Mark Twain and Me', 4, 'https://image.tmdb.org/t/p/w500/tFCBXuRcekZzBEAVtUyhg30zksY.jpg'),
(112514, 'Chile: A Genral Record', 3, 'https://image.tmdb.org/t/p/w500/9WwYOuex895vKTRa8FJFikjHo0g.jpg'),
(119242, 'Tokugawa: Woman\'s Genealogy', 1, 'https://image.tmdb.org/t/p/w500/x2h9dT7P5teC8nOqkJ6EQnLvHfC.jpg'),
(120747, 'The Adventures of Mark Twain', 4, 'https://image.tmdb.org/t/p/w500/fzYugOo4QJICLuJ2PI1tG3QeDjM.jpg'),
(120831, 'Love', 6, 'https://image.tmdb.org/t/p/w500/6Wdf0zB8DQeuquy5O3ldOK04Mfg.jpg'),
(125039, 'Genealogies of a Crime', 1, 'https://image.tmdb.org/t/p/w500/sd5mYgYVLkbr8yGAbtr3Xn4Xbvi.jpg'),
(138289, 'Money or Love', 6, 'https://image.tmdb.org/t/p/w500/cbf1YVagIXPgAEdN8CWsi3qzhlz.jpg'),
(156633, 'The Story About Master Twardowski', 4, 'https://image.tmdb.org/t/p/w500/rG0gpgAElCJgI8GFSeoCe4G6tvv.jpg'),
(160191, 'WE', 3, NULL),
(161401, 'Love', 6, 'https://image.tmdb.org/t/p/w500/n6vU0tGuyeymenovtX65qwDaLJ4.jpg'),
(164883, 'The Sweet Pussycats', 1, 'https://image.tmdb.org/t/p/w500/hwqtHlZA8HgxiJuC3tKeA5WfnPt.jpg'),
(166706, 'Roots Search', 3, 'https://image.tmdb.org/t/p/w500/7NNgZZfbghOTIx9hjndvDW0nUe8.jpg'),
(173129, 'The Golden Lotus: Love and Desire', 6, 'https://image.tmdb.org/t/p/w500/nA1WbYl6Sllm71g8koNXhjWbMOc.jpg'),
(181009, 'Saving General Yang', 1, 'https://image.tmdb.org/t/p/w500/aOaXWW8ihwrSqYtSJdz77IeAVbk.jpg'),
(191185, 'My Sweet Orange Tree', 1, 'https://image.tmdb.org/t/p/w500/7Q6FpTfJYiZZHSe8C9jcopFLptt.jpg'),
(197640, 'Three Swedish Girls in Upper Bavaria', 1, 'https://image.tmdb.org/t/p/w500/zcpDptH2QOYVEpMrZpnPEudKpH9.jpg'),
(199122, 'Friend', 2, 'https://image.tmdb.org/t/p/w500/xN8XB9132kqtr1Po5QAl4SmAoSZ.jpg'),
(225235, 'The Geographer Drank His Globe Away', 1, 'https://image.tmdb.org/t/p/w500/iyWyVgDHYkjejwAQQrUCQXuZYjO.jpg'),
(229756, 'Hanasaku Iroha the Movie: Home Sweet Home', 1, 'https://image.tmdb.org/t/p/w500/t5RxZfhMEloJdTB4wcsYiCAsUPV.jpg'),
(230430, 'Dark Sea', 3, 'https://image.tmdb.org/t/p/w500/qG6V0UNFhrPezH7cBvMiGF1wDfs.jpg'),
(238675, 'Love Is in the Green Wind', 6, 'https://image.tmdb.org/t/p/w500/4AOJPwmtgXubEkM7JmTsUfB1C8N.jpg'),
(248040, 'Mr. Twardowski', 4, 'https://image.tmdb.org/t/p/w500/nlb8qfG9dupTQVQgqEJfODSZhTu.jpg'),
(254538, 'The Next Generation Patlabor: Tokyo War', 1, 'https://image.tmdb.org/t/p/w500/fCgymNCCwz0bzHG5jfVKsin6ZKK.jpg'),
(258322, 'Fasten Your Seatbelts', 3, 'https://image.tmdb.org/t/p/w500/8yDZUKQQLZQEPw1wRXS2ZNEsHqG.jpg'),
(259064, 'Sweet Degeneration', 1, 'https://image.tmdb.org/t/p/w500/aXN8z49FMD9I8wSWIpaiKv5FThZ.jpg'),
(265520, 'Twa-Tiu-Tiann', 4, 'https://image.tmdb.org/t/p/w500/gyZT0bKYTGtRhWNouxbehKLJasW.jpg'),
(292431, 'Love', 6, 'https://image.tmdb.org/t/p/w500/dX6Lt1CtnqI6Ai4vL2fj61CFbeD.jpg'),
(292467, 'My Little Pony Friendship Is Magic: A Dash Of Awesome', 1, NULL),
(319373, 'Sweet Bean', 1, 'https://image.tmdb.org/t/p/w500/5YV0eoUBFQ4vKaN71SPtUte2YcD.jpg'),
(325854, 'Kung Fu Panda: Legends of Awesomeness 1 : The Scorpion Sting', 1, 'https://image.tmdb.org/t/p/w500/7ghEy5r7JhQLFUtA8AG7C2KEbrD.jpg'),
(343702, 'The Sweet Escape', 1, 'https://image.tmdb.org/t/p/w500/vo74Vic2ZM6E4MkVbFnAabO4hUn.jpg'),
(368031, 'Friend Request', 2, 'https://image.tmdb.org/t/p/w500/7gfG9tGRPzmVyg3nEwQrTGOJ8C6.jpg'),
(368716, 'The Nutcracker Sweet', 1, 'https://image.tmdb.org/t/p/w500/4IzHhQ8gRv89Pi31ewQXP5I1UB3.jpg'),
(381547, 'Kung Fu Panda: Legends of Awesomeness - Good Croc, Bad Croc', 1, 'https://image.tmdb.org/t/p/w500/rY27wAZ2EHW8BYr0cEbgGQjctBY.jpg'),
(388284, 'While the Wolf\'s Away', 1, 'https://image.tmdb.org/t/p/w500/7y2SvYTYQeCNoEEOD26wjr3Nx1N.jpg'),
(406898, 'The Demon Wet Nurse', 3, 'https://image.tmdb.org/t/p/w500/q0z4npfVI7Xh6jDPbHYJ6RUeFpf.jpg'),
(410751, 'Mark Twain (Samuel Clemens)', 4, 'https://image.tmdb.org/t/p/w500/9EzNmzKRINwd9b7TVXM4DXhfcIk.jpg'),
(430422, 'Unfinished Time: The Poems of Father Jan Twardowski', 4, 'https://image.tmdb.org/t/p/w500/9lQNBn0kmUG0beeniaQ6OZEVJ59.jpg'),
(433150, 'The Invisible Boy: Second Generation', 1, 'https://image.tmdb.org/t/p/w500/oi6CgVTaDQAuCRbQqXjevlpa8kk.jpg'),
(446318, 'Neil Patrick Harris: Circus Awesomeus', 1, 'https://image.tmdb.org/t/p/w500/6UCrEcRiCxsC4XbQWc1CpIoa6nb.jpg'),
(448376, 'Love', 6, 'https://image.tmdb.org/t/p/w500/uzhch7bmKJYsOL4dUUWZGgk6BtI.jpg'),
(454952, 'Sweetiee Weds NRI', 1, 'https://image.tmdb.org/t/p/w500/gr6hQ8pG0EA5duWRGiLjKQqxk0Z.jpg'),
(463461, 'Romance of the West Chamber', 3, 'https://image.tmdb.org/t/p/w500/bup7TBYfLzFjH7r1cLX6iXQS7M0.jpg'),
(465595, 'Sweet Sex', 1, 'https://image.tmdb.org/t/p/w500/hkt25KjYmyuRchMpGUPhdEgxnd2.jpg'),
(474720, 'Hot Sweet Sour', 1, 'https://image.tmdb.org/t/p/w500/81kt2NES2LBx485Ftj63zEX6Aml.jpg'),
(477489, 'Just a Breath Away', 1, 'https://image.tmdb.org/t/p/w500/hjePJQDv7GitTrEU67TANuhbytv.jpg'),
(481891, 'An Affair: My Friend\'s Mom', 2, 'https://image.tmdb.org/t/p/w500/gzODeFmANKzUAknaNplB0QGqQqJ.jpg'),
(482040, 'Mom\'s Friend 3', 2, 'https://image.tmdb.org/t/p/w500/jVPxCVo5GEbJJZqQT9BpRpuO8G.jpg'),
(488659, 'Love', 6, 'https://image.tmdb.org/t/p/w500/9Rl69IGFFroA5Bs3raSR7N8nqI4.jpg'),
(492999, 'Attack on Titan: The Roar of Awakening', 1, 'https://image.tmdb.org/t/p/w500/tLkdCvfmTOvxirrpSaaOBJD7qsU.jpg'),
(498229, 'A Face of an Angel', 4, 'https://image.tmdb.org/t/p/w500/jJ7f4ZKuk8m1G4hlil04RP7Nsm9.jpg'),
(499546, 'We', 3, 'https://image.tmdb.org/t/p/w500/2CeHBR6NKQxDXS62JNiQzyYEPae.jpg'),
(500723, 'Awe!', 1, 'https://image.tmdb.org/t/p/w500/98Dn1D22PWmgwkEx7UEVLtpAPmk.jpg'),
(504891, 'Secret Love: My Friend\'s Mom', 2, 'https://image.tmdb.org/t/p/w500/iTari5xjCHcQULu7gF2WV7eIbAL.jpg'),
(512043, 'Kaputol ng Isang Awit', 1, 'https://image.tmdb.org/t/p/w500/dM3lHlWdwEWpFT4fEizECYWt4Oe.jpg'),
(536881, 'Genesis', 1, 'https://image.tmdb.org/t/p/w500/8P1O9JBjpH901k1rw4L0BheZ1pF.jpg'),
(560057, 'The Sea Beast', 3, 'https://image.tmdb.org/t/p/w500/9Zfv4Ap1e8eKOYnZPtYaWhLkk0d.jpg'),
(584242, 'Wet Season', 3, 'https://image.tmdb.org/t/p/w500/iyqqHPkF7EoNGlqDJ2aDchRxfnq.jpg'),
(585077, 'Children of the Sea', 3, 'https://image.tmdb.org/t/p/w500/2QKNREj8xPHShu993QAySoGDCwu.jpg'),
(587429, 'Sweet Family', 1, 'https://image.tmdb.org/t/p/w500/3lyaM4QT30eh7ok0hBb13UtWoY.jpg'),
(614420, 'When Mom Is Away... With the Family', 1, 'https://image.tmdb.org/t/p/w500/zRTauOf9RcgD8Qf6bavSc8mECqW.jpg'),
(630374, 'Song for the Lost', 1, 'https://image.tmdb.org/t/p/w500/xCAfPPk17p9o5lHogdYjQY9NxEC.jpg'),
(635585, 'How to Get Rid of a Body And Still Be Friends', 2, 'https://image.tmdb.org/t/p/w500/9GuBYbDju3L2azvYRtVuYgBrG82.jpg'),
(639185, 'Love', 6, NULL),
(655832, 'Crazy Awesome Teachers', 1, 'https://image.tmdb.org/t/p/w500/iGFA2p9DDbNVLmtbty4iqQzCiC6.jpg'),
(658854, 'We', 3, 'https://image.tmdb.org/t/p/w500/zDl36RTXJW1GhCqz6FOYRl7sCt7.jpg'),
(660653, 'Friend\'s Young Mom', 2, 'https://image.tmdb.org/t/p/w500/9KumU7gLIDhbNBKOcGbDbXEAwh9.jpg'),
(662237, 'Sweet & Sour', 1, 'https://image.tmdb.org/t/p/w500/3yGwAPl6LWpi8QwHjwCMaqsPgNB.jpg'),
(664714, 'Awesome Planet', 1, NULL),
(667520, 'A Whisker Away', 1, 'https://image.tmdb.org/t/p/w500/6inkRM1XGBG5vRhclCPWfMenp7N.jpg'),
(667713, '100 Awit Para Kay Stella', 1, 'https://image.tmdb.org/t/p/w500/dmox5GJ1nyXkOPNDmkP5JNxmDt.jpg'),
(682826, 'My Friend\'s Daughter', 2, 'https://image.tmdb.org/t/p/w500/hlG7WTnQwCuSYkRUEgDC1rnafwo.jpg'),
(683782, 'Sea', 3, 'https://image.tmdb.org/t/p/w500/7I2J6Hseh7j7tMmlokHdVnc6M4T.jpg'),
(691209, 'Friend', 2, 'https://image.tmdb.org/t/p/w500/uD3iFzw159EGNnQDk62YIvQSRA4.jpg'),
(700199, 'Mom\'s Friend 4', 2, 'https://image.tmdb.org/t/p/w500/szssOJ10ZixWA5gZrfYhdKOI0SZ.jpg'),
(700979, 'Friend\'s Mothers', 2, 'https://image.tmdb.org/t/p/w500/cG1hXEWGepEqKSRe2HLL33vvPn8.jpg'),
(702454, 'Swapping: My Friend\'s Wife 2', 2, 'https://image.tmdb.org/t/p/w500/8NGBIQbpQaSzc2OWIN1BdOMAv7M.jpg'),
(703133, 'Sea', 3, 'https://image.tmdb.org/t/p/w500/tgcOyQxU6xDEj3aQYXIAHMZEXll.jpg'),
(713607, 'Mom\'s Friend 2020', 2, 'https://image.tmdb.org/t/p/w500/ajBTNjytyQdSRywpIrd78ivppyS.jpg'),
(734185, 'Friend', 2, 'https://image.tmdb.org/t/p/w500/b5UaPLwsicBkN0z4i0gt05UhMNb.jpg'),
(753965, 'We', 3, 'https://image.tmdb.org/t/p/w500/atzwMXZWrRjYpzHs98BVvKAZTlP.jpg'),
(758092, 'Sweet Release', 1, 'https://image.tmdb.org/t/p/w500/dAfgu5yUsjqNac9uqALh79bSDvF.jpg'),
(764339, 'An Affair: My Wife\'s Friend 2', 2, 'https://image.tmdb.org/t/p/w500/71F5nIcReEDckIY2FvHE54E0PvN.jpg'),
(768702, 'Love', 6, 'https://image.tmdb.org/t/p/w500/hS2eFigVGchssBaRlbt4hkRs09e.jpg'),
(795534, 'Wè', 3, NULL),
(805307, 'We', 3, 'https://image.tmdb.org/t/p/w500/ex8deNcwY7FOxCV5hmY7H8O87Fg.jpg'),
(825442, 'The Seventh Song', 1, 'https://image.tmdb.org/t/p/w500/qCsyRmZUoOqX3u3RCherr1EX3rD.jpg'),
(848466, 'We', 3, 'https://image.tmdb.org/t/p/w500/mnn0KKtfS1TyA1y2LAHhQMBIDVG.jpg'),
(875104, 'Ip Man: The Awakening', 1, 'https://image.tmdb.org/t/p/w500/A7vhdyGrpPMKXsuFBZzxmave94F.jpg'),
(889607, 'Go Away Mr. Tumor', 1, 'https://image.tmdb.org/t/p/w500/gbxSdwG7oN7iNT2kMFLREsTb2Aa.jpg'),
(890406, 'Little Forest: Four Seasons', 3, 'https://image.tmdb.org/t/p/w500/2i7t3PbEMp9Yne5rqN69qquZUDM.jpg'),
(893364, 'Belle and Sebastian: Next Generation', 1, 'https://image.tmdb.org/t/p/w500/8yRDnNMonoERrHoi3qJ31cwsQyG.jpg'),
(894211, 'Mrs. Twardowska', 4, 'https://image.tmdb.org/t/p/w500/tA5vi7mN8cXyWaOAaV5dOZTCQSy.jpg'),
(925098, 'Wild Seas', 3, 'https://image.tmdb.org/t/p/w500/ma4IRB7CYijTIrtXb3763iDYFA7.jpg'),
(953734, 'We', 3, 'https://image.tmdb.org/t/p/w500/hZSkwJCtDVSMVSAf7Wi0SC3vaAg.jpg'),
(959116, 'Akin Ang Huling Awit', 1, 'https://image.tmdb.org/t/p/w500/h3dk88mRQjEsr9WwZcyl2hzjcgv.jpg'),
(960160, 'Awit Ng Bulag', 1, 'https://image.tmdb.org/t/p/w500/3xzaoKtZBd1ig4oyN9lsjbZJGvl.jpg'),
(961420, 'Kingdom 2: Far and Away', 1, 'https://image.tmdb.org/t/p/w500/wE4NqJosSPjiyqStBEv67mQbR1b.jpg'),
(981829, 'Awit ni Palaris', 1, 'https://image.tmdb.org/t/p/w500/rqfgTnyJTWqVYpum3lzfF5F6oXf.jpg'),
(988768, 'Love', 6, 'https://image.tmdb.org/t/p/w500/quLtM0IhUdKSxs748MQUpQW2zia.jpg'),
(993106, 'Pagibig Ko\'y Awitin Mo...', 1, 'https://image.tmdb.org/t/p/w500/d49mpdbmUCJBvMQOnIzslEVtmqn.jpg'),
(999262, 'Shania Twain: Not Just a Girl', 4, 'https://image.tmdb.org/t/p/w500/62tI0ppjUJE8m24ZlDa1pMcICYp.jpg'),
(1010286, 'Where the Twain Shall Meet', 4, 'https://image.tmdb.org/t/p/w500/9b9eYvJxvU7mwG0oD50G7K8DYq4.jpg'),
(1017794, 'Deep Sea Mutant Snake', 3, 'https://image.tmdb.org/t/p/w500/pc5cPGTCi37DsC2y5wqM2t8vu10.jpg'),
(1026830, 'Ignat the Twat', 4, 'https://image.tmdb.org/t/p/w500/hpqPPmcNE1hiLBv1ZdEfO5MhN0w.jpg'),
(1028547, '\'Twas the Night Before Christmas', 4, 'https://image.tmdb.org/t/p/w500/aTpIRq1CzhLiAu5zUIhVPV6cj80.jpg'),
(1029933, 'WE', 3, 'https://image.tmdb.org/t/p/w500/1qDXCzHPklci1NTFzILQ7v6QPeX.jpg'),
(1031063, 'Love', 6, 'https://image.tmdb.org/t/p/w500/d09gjvs5UQANM9ZNUQ4228fkhsy.jpg'),
(1031318, 'FRIEND.', 2, 'https://image.tmdb.org/t/p/w500/4tnbJO5cD53iuOiCEGOdss1QhMD.jpg'),
(1047709, 'Love', 6, 'https://image.tmdb.org/t/p/w500/xN5fclFxcEYbsiRMZsrG0t6YyVy.jpg'),
(1071101, 'Kaina of the Great Snow Sea: Star Sage', 3, 'https://image.tmdb.org/t/p/w500/tknSJyInVeBZhaIUHlzPpqA45Ej.jpg'),
(1078001, 'Gén', 1, 'https://image.tmdb.org/t/p/w500/12VtkDD6ppNoLeDG8D1uuNK5c9x.jpg'),
(1078374, 'Suffocating Love', 6, 'https://image.tmdb.org/t/p/w500/AeVotaRDwhKeG5km1xa3HBGzjKZ.jpg'),
(1088490, 'We', 3, 'https://image.tmdb.org/t/p/w500/eT5oxBMbDETbGMTTCvOlUJ04BIw.jpg'),
(1094746, 'Four Unloved Women, Adrift on a Purposeless Sea, Experience the Ecstasy of Dissection', 3, 'https://image.tmdb.org/t/p/w500/aeVYh2YPjNSKcGT67JdP8Cd4NGS.jpg'),
(1100642, '\'Twas the Text Before Christmas', 4, 'https://image.tmdb.org/t/p/w500/e1fvQdD63RP2MS9jCB8jzg7fkdr.jpg'),
(1101211, 'Sing Your Song!', 1, 'https://image.tmdb.org/t/p/w500/wsTcNAoIZdepdRqY0tatn7Uch9j.jpg'),
(1105551, 'Micha Wertheim: Voor Twaalven', 4, 'https://image.tmdb.org/t/p/w500/bDn9WSWbWyt4HvoKqp83zabco6L.jpg'),
(1111385, 'Twiddle-Twaddle', 4, 'https://image.tmdb.org/t/p/w500/7fvGLcPpILGB7fcWpFEY05EKu85.jpg'),
(1137047, 'West Sex Journey 2', 3, 'https://image.tmdb.org/t/p/w500/kcME07YvukipFBmg9UArSRZqsEb.jpg'),
(1156243, 'Love', 6, 'https://image.tmdb.org/t/p/w500/ju6v3DvlalaCDpTiCvqMyzAKIWa.jpg'),
(1165838, 'Gen', 1, NULL),
(1192753, 'Love', 6, 'https://image.tmdb.org/t/p/w500/9rH0yCe7CPyToe8tg7YowDCui7D.jpg'),
(1202510, 'Friend', 2, NULL),
(1217455, 'The Matrix: Generation', 1, 'https://image.tmdb.org/t/p/w500/53McB8R9RUBxfINRxWaPwUMtL5Q.jpg'),
(1226226, 'When We Met', 3, 'https://image.tmdb.org/t/p/w500/xUV3QPvBIraeLaFwuQj27UjiJ7n.jpg'),
(1234864, 'Welcome to Paradise', 3, 'https://image.tmdb.org/t/p/w500/aedMyPKufo1MfMy6bIzS5b7jVav.jpg'),
(1270336, 'The Generation of ‘60s. The Unknown Friendship', 1, 'https://image.tmdb.org/t/p/w500/x1gKvY47dvYTIkzrHXDLtv70ojX.jpg'),
(1280646, 'Sweeney Todd: The Demon Barber of Fleet Street', 1, 'https://image.tmdb.org/t/p/w500/a6kO24Nkt56tU4RnDLP4H4tivGe.jpg'),
(1282662, 'Stay-At-Home-DAD- Awesome Jump', 1, 'https://image.tmdb.org/t/p/w500/zDENI0tDAjs3mvnma6ryAaJUxQP.jpg'),
(1284653, 'Genre Hopper', 1, 'https://image.tmdb.org/t/p/w500/quPP11DzygdMBsdKzFPEF0hPRMr.jpg'),
(1304486, 'Chant of the youth', 1, 'https://image.tmdb.org/t/p/w500/yFpynXHxqbwcada0yzXaRa54H0c.jpg'),
(1316954, 'Love', 6, 'https://image.tmdb.org/t/p/w500/6tlee9BAuFgm8O1MdzEC6FEorvO.jpg'),
(1317165, 'Sealed Video 73: The Strange Figure Behind', 3, 'https://image.tmdb.org/t/p/w500/3IEBtTGwPm1tuB0cAyp9zdElMfx.jpg'),
(1321145, 'Twain', 4, 'https://image.tmdb.org/t/p/w500/iBNzS2koyhH4Rm5NbENDyIimRdX.jpg'),
(1323905, 'FrIEND', 2, 'https://image.tmdb.org/t/p/w500/asQgcBVpEnE8XhcbhemAH2uyfya.jpg'),
(1330367, 'T\'was the Heist Before Christmas', 4, NULL),
(1352017, 'My Sweden – A Changing Wilderness', 1, 'https://image.tmdb.org/t/p/w500/sw3j3yzXO47jKvQnn9rhJIEAcNg.jpg'),
(1352821, 'A True Gentleman', 1, 'https://image.tmdb.org/t/p/w500/dCMSCNy8kGerF1Dw4woWUP6ltxR.jpg'),
(1377083, 'Friend', 2, 'https://image.tmdb.org/t/p/w500/5oqIuEGnHWyr31aTzD9dEvouo8p.jpg'),
(1396805, 'Love', 6, 'https://image.tmdb.org/t/p/w500/pUZOaLAKJZDaPHxCx1mrULIhyLQ.jpg'),
(1412113, 'Squid Game: Making Season 2', 3, 'https://image.tmdb.org/t/p/w500/yQGaui0bQ5Ai3KIFBB45nTeIqad.jpg'),
(1428457, 'Friend', 2, 'https://image.tmdb.org/t/p/w500/rlfzbyRO0eSSoRLJX0dWgIhBbnw.jpg'),
(1449745, 'We.', 3, 'https://image.tmdb.org/t/p/w500/p0Wsq5kQx093rU6tQWTnge59LCj.jpg'),
(1456081, 'Awit Natin (Our Song)', 1, 'https://image.tmdb.org/t/p/w500/n6ZRELaN7cgdZfGpC0GJqd3EJ36.jpg'),
(1481863, 'Song for the Forgotten', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `rating_value` int(11) DEFAULT NULL CHECK (`rating_value` between 1 and 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
