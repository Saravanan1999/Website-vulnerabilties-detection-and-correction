-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 08:19 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystems`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` mediumtext NOT NULL,
  `premium` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `Name`, `Description`, `premium`) VALUES
(1, 'The Lord of the Rings', 'This three-volume edition of J. R. R. Tolkien\'s The Lord of the Rings brings readers the magic and wonder of Middle-Earth with cover art that Tolkien himself designed. Revisit the world of Middle-Earth and journey once again with Frodo Baggins and the Fellowship as they try to destroy the Ring of Power, and thwart its master: the Lord of the Rings.\r\n\r\nTasked with the destruction of the One Ring to Rule Them All, Frodo Baggins and a company of 8 others journey towards a seemingly impossible goal. They must sneak into Mordor, walk into it, if need be, and toss the One Ring into the fires from whence it came. On their journey, they will face overwhelming odds, and readers are tossed head-first into the world that has fascinated tens of thousands of readers throughout the decades. This is the story of a Hobbit, and how he went there, and about whether he ever lives to get back again.', 'yes'),
(2, 'The Hobbit', 'The classic bestseller behind this year\'s biggest movie, this film tie-in edition features the complete story of Bilbo Baggins\' adventures in Middle-earth as shown in the film trilogy, with a striking cover image from Peter Jackson\'s film adaptation and drawings and maps by J.R.R. Tolkien. Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely travelling further than the pantry of his hobbit-hole in Bag End. But his contentment is disturbed when the wizard, Gandalf, and a company of thirteen dwarves arrive on his doorstep one day to whisk him away on an unexpected journey \'there and back again\'. They have a plot to raid the treasure hoard of Smaug the Magnificent, a large and very dangerous dragon... The prelude to The Lord of the Rings, The Hobbit has sold many millions of copies since its publication in 1937, establishing itself as one of the most beloved and influential books of the twentieth century.', 'no'),
(3, 'Harry Potter and the Philosopher\'s Stone', 'After bottling up his magical powers for a lifetime, Harry finally feels like a normal kid when he gets accepted to go to Hogwarts. He is the boy who lived: the only person to have ever survived a killing curse inflicted by the evil Lord Voldemort, who launched a brutal takeover of the Wizarding world, only to vanish after failing to kill Harry. The first in the series of Harry Potter books, Harry Potter and the Philosopher\'s Stone is full of sympathetic characters and wildly imaginative situations. This book sets the stage for many high-stakes adventures to come. ', 'no'),
(4, 'And Then There Were None', 'And Then There Were None is a detective fiction novel by Agatha Christie, first published in the United Kingdom by the Collins Crime Club on 6 November 1939 under the title Ten Little Niggers, later edited to Ten Little Indians, and in the United States by Dodd, Mead and Company in January 1940 under the title And Then There Were None. In the novel, ten people, who have previously been complicit in the deaths of others but have escaped notice and/or punishment, are tricked into coming onto an island. Even though the guests are the only people on the island, they are all mysteriously murdered one by one, in a manner paralleling, inexorably and sometimes grotesquely, the old nursery rhyme, \"Ten Little Indians\". The UK edition retailed at seven shillings and sixpence (7/6) and the US edition at $2.00. The novel has also been published and filmed under the title Ten Little Indians', 'no'),
(5, 'The Lion, the Witch and the Wardrobe', 'The Chronicles of Narnia: The Lion, the Witch and the Wardrobe is a 2005 fantasy film co-written and directed by Andrew Adamson, based on the 1950 novel The Lion, the Witch and the Wardrobe, the first published and second chronological novel in C. S. Lewis\'s children\'s epic fantasy series, The Chronicles of Narnia. It was co-produced by Walden Media and Walt Disney Pictures and distributed by Buena Vista Pictures. William Moseley, Anna Popplewell, Skandar Keynes and Georgie Henley play Peter, Susan, Edmund, and Lucy, four British children evacuated during the Blitz to the countryside, who find a wardrobe that leads to the fantasy world of Narnia. There they ally with the lion Aslan (voiced by Liam Neeson) against the forces of Jadis, the White Witch (Tilda Swinton).', 'yes'),
(6, 'The Alchemist', 'The Alchemist by Paulo Coelho continues to change the lives of its readers forever. With more than two million copies sold around the world, The Alchemist has established itself as a modern classic, universally admired.\r\n\r\nPaulo Coelho\'s masterpiece tells the magical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure as extravagant as any ever found.\r\n\r\nThe story of the treasures Santiago finds along the way teaches us, as only a few stories can, about the essential wisdom of listening to our hearts, learning to read the omens strewn along life\'s path, and, above all, following our dreams.', 'no'),
(7, 'Ben-Hur: A Tale of the Christ', 'Ben-Hur: A Tale of the Christ is a novel by Lew Wallace, published by Harper and Brothers on November 12, 1880 and considered \"the most influential Christian book of the nineteenth century\".It became a best-selling American novel, surpassing Harriet Beecher Stowe\'s Uncle Tom\'s Cabin (1852) in sales. The book also inspired other novels with biblical settings and was adapted for the stage and motion picture productions. Ben-Hur remained at the top of the US all-time bestseller list until the publication of Margaret Mitchell\'s Gone with the Wind (1936). The 1959 MGM film adaptation of Ben-Hur is considered one of the greatest films ever made and was seen by tens of millions, going on to win a record 11 Academy Awards in 1960, after which the book\'s sales increased and it surpassed Gone with the Wind. It was blessed by Pope Leo XIII, the first novel ever to receive such an honour. The success of the novel and its stage and film adaptations also helped it to become a popular cultural icon that was used to promote numerous commercial produ', 'no'),
(8, 'The Hunger Games', 'The Hunger Games is a 2008 dystopian novel by the American writer Suzanne Collins. It is written in the voice of 16-year-old Katniss Everdeen, who lives in the future, post-apocalyptic nation of Panem in North America. The Capitol, a highly advanced metropolis, exercises political control over the rest of the nation. The Hunger Games is an annual event in which one boy and one girl aged 12–18 from each of the twelve districts surrounding the Capitol are selected by lottery to compete in a televised battle royale to the death.\r\nThe story recounts the adventures of Judah Ben-Hur, a Jewish prince from Jerusalem, who is enslaved by the Romans at the beginning of the first century and becomes a charioteer and a Christian. Running in parallel with Judah\'s narrative is the unfolding story of Jesus, from the same region and around the same age. The novel reflects themes of betrayal, conviction, and redemption, with a revenge plot that leads to a story of love and compassion.', 'yes'),
(9, 'The Great Gatsby', 'The Great Gatsby is a 1925 novel written by American author F. Scott Fitzgerald that follows a cast of characters living in the fictional towns of West Egg and East Egg on prosperous Long Island in the summer of 1922. Many literary critics consider The Great Gatsby to be one of the greatest novels ever written.\r\n\r\nThe story of the book primarily concerns the young and mysterious millionaire Jay Gatsby and his quixotic passion and obsession to reunite with his ex-lover, the beautiful former debutante Daisy Buchanan. Considered to be Fitzgerald\'s magnum opus, The Great Gatsby explores themes of decadence, idealism, resistance to change, social upheaval and excess, creating a portrait of the Roaring Twenties that has been described as a cautionary tale regarding the American Dream', 'no'),
(10, 'Angels&Demons', 'Angels & Demons is a 2000 bestselling mystery-thriller novel written by American author Dan Brown and published by Pocket Books and then by Corgi Books. The novel introduces the character Robert Langdon, who recurs as the protagonist of Brown\'s subsequent novels. Angels & Demons shares many stylistic literary elements with its sequels, such as conspiracies of secret societies, a single-day time frame, and the Catholic Church. Ancient history, architecture, and symbology are also heavily referenced throughout the book. A film adaptation was released on May 15, 2009.', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackid` int(11) NOT NULL,
  `feedback` varchar(512) NOT NULL,
  `user` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackid`, `feedback`, `user`) VALUES
(0, 'hello', 'admin'),
(0, 'What happened?', ''),
(0, 'nasjkb', ''),
(0, 'hasd', ''),
(0, 'ahas', ''),
(0, 'what', ''),
(0, 'what', ''),
(0, 'awhb', ''),
(0, 'awhb', ''),
(0, 'wakjs', ''),
(0, 'asjn', ''),
(0, 'asjn', ''),
(0, 'asjbd', ''),
(0, '', ''),
(0, 'asj', ''),
(0, 'asj', ''),
(0, 'asd', ''),
(0, 'asf', ''),
(0, 'asf', ''),
(0, 'asf', ''),
(0, '', ''),
(0, 'asd', ''),
(0, 'asd', ''),
(0, 'asd', ''),
(0, 'what', ''),
(0, 'jkba', ''),
(0, 'whas', 'user2a'),
(0, 'whasas', 'user2a'),
(0, 'asd', 'user2a'),
(0, 'asjbd', 'admin'),
(0, 'askdjb', 'admin'),
(0, 'asjfjb', 'admin'),
(0, 'kjasnnd', 'admin'),
(0, 'asfsaf', ''),
(0, 'asfsaf', ''),
(0, 'hello', 'admin'),
(0, 'hello', 'user2'),
(0, 'hello', 'user2a'),
(0, 'hello', 'user2a'),
(0, 'hello', 'admin'),
(0, 'ashbfj', 'admin'),
(0, 'assaf', 'admin'),
(0, 'asmsf', 'admin'),
(0, 'Helloaskjff', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `loginlogs`
--

CREATE TABLE `loginlogs` (
  `user_id` int(11) DEFAULT NULL,
  `IpAddress` varbinary(16) DEFAULT NULL,
  `TryTime` bigint(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginlogs`
--

INSERT INTO `loginlogs` (`user_id`, `IpAddress`, `TryTime`, `timestamp`) VALUES
(1, 0x3132372e302e302e31, 0, '0000-00-00 00:00:00'),
(1, 0x3132372e302e302e31, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE `money` (
  `user_id` int(11) NOT NULL,
  `balance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money`
--

INSERT INTO `money` (`user_id`, `balance`) VALUES
(2, 901441),
(10, 89075896),
(1, 199070),
(5, 9000718);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_first` varchar(256) NOT NULL,
  `user_last` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `user_uid` varchar(256) NOT NULL,
  `user_pwd` varchar(256) NOT NULL,
  `premium` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_first`, `user_last`, `user_email`, `user_uid`, `user_pwd`, `premium`) VALUES
(1, 'user', '1', 'user1@email.com', 'admin', 'pass14', 'yes'),
(2, 'user', '2', 'user2@email.com', 'user2a', 'pass2', 'no'),
(5, 'user', '14', 'user14@something.com', 'user14', 'user14', NULL),
(10, 'Name', 'Last', 'namelast@name.com', 'namelastcom', 'lastname', 'no'),
(11, 'asf', 'asf', 'asf', 'asf', 'asf', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
