-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 04:32 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `our bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `bestseller`
--

CREATE TABLE `bestseller` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cat` varchar(30) NOT NULL,
  `subcat` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `edition` int(11) NOT NULL,
  `language` varchar(20) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `pages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bestseller`
--

INSERT INTO `bestseller` (`id`, `name`, `cat`, `subcat`, `price`, `description`, `ISBN`, `edition`, `language`, `publisher`, `author`, `image`, `pages`) VALUES
(9, 'The Hunger Games', 'Fiction', 'Dystopian, science fiction, dr', 250, 'The Hunger Games is a series of young adult dystopian novels written by American author Suzanne Collins. The series is set in the Hunger Games universe, with the first three novels being a trilogy following teenage protagonist Katniss Everdeen.\r\n\r\nThe novels in the trilogy are titled The Hunger Games (2008), Catching Fire (2009), and Mockingjay (2010). Each was adapted for film, establishing The Hunger Games film series, with the film adaptation of Mockingjay split into two feature-length motion pictures. The first two books in the series were both New York Times best sellers, and Mockingjay topped all US bestseller lists upon its release', '1785517963', 2010, 'English', 'Scholastic', 'Suzanne Collins', '9.jpg', 348),
(10, 'Harry Potter', 'Fantasy', 'Thriller', 700, 'Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry\'s struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people). ', '0045345773', 2017, 'English', 'Bloomsbury Publishing (UK)', 'J. K. Rowling', '10.jpg', 416),
(11, 'To Kill a Mockingbird', 'Moral growth', 'novel', 490, 'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools. To Kill a Mockingbird has become a classic of modern American literature, winning the Pulitzer Prize. The plot and characters are loosely based on Lee\'s observations of her family, her neighbors and an event that occurred near her hometown of Monroeville, Alabama, in 1936, when she was ten.', '1854444490', 1960, 'English', 'J. B. Lippincott & Co.', 'Harper Lee', '11.jpg', 281),
(12, 'The Book Thief', 'Fiction', 'historical', 495, 'The Book Thief is a novel by the Australian author Markus Zusak, and it is one of his most popular works. Published in 2005, The Book Thief became an international bestseller and was translated into 63 languages and sold 16 million copies. It was adapted into the 2013 feature film, The Book Thief.\r\n\r\nThe novel is about the adventures of Liesel Meminger in Germany during a time of War. By personifying \"Death\" as a tangible thing, the novel provides a fresh look into the world of the victims of the war.', '033036426X', 2005, 'English,German', 'Picador', 'Markus Zusak', '12.jpg', 352),
(13, 'Twilight', 'Fantasy', 'Romance, fantasy', 750, 'The Twilight Saga is a series of four vampire-themed fantasy romance novels, two companion novels, and one novella, written by American author Stephenie Meyer. Released annually from 2005 through 2008, the four books chart the later teen years of Isabella \"Bella\" Swan, a girl who moves to Forks, Washington, from Phoenix, Arizona and falls in love with a 104-year-old vampire named Edward Cullen. The series is told primarily from Bella\'s point of view, with the epilogue of Eclipse and Part II of Breaking Dawn being told from the viewpoint of character Jacob Black, a werewolf. The novel Midnight Sun is a retelling of the first book, Twilight, from Edward Cullen\'s point of view. The novella, The Short Second Life of Bree Tanner, which tells the story of a newborn vampire who appeared in Eclipse, was published on June 5, 2010, as a hardcover book and on June 7 as a free online ebook.', '0087491929', 2020, 'English', 'Little, Brown and Company', 'Stephenie Meyer', '13.jpg', 458),
(14, 'The Chronicles of Narnia', 'Novel', 'Fantasy', 455, 'The Chronicles of Narnia is a series of seven fantasy novels by British author C. S. Lewis. Illustrated by Pauline Baynes and originally published between 1950 and 1956, The Chronicles of Narnia has been adapted for radio, television, the stage, film and computer games. The series is set in the fictional realm of Narnia, a fantasy world of magic, mythical beasts and talking animals. It narrates the adventures of various children who play central roles in the unfolding history of the Narnian world. Except in The Horse and His Boy, the protagonists are all children from the real world who are magically transported to Narnia, where they are sometimes called upon by the lion Aslan to protect Narnia from evil.', '167455974', 1956, 'English', 'Geoffrey Bles', 'C. S. Lewis', '14.jpg', 384),
(15, 'The Giving Tree', 'Picture Book', 'Children\'s picture book', 30, 'The Giving Tree is an American children\'s picture book written and illustrated by Shel Silverstein. First published in 1964 by Harper & Row, it has become one of Silverstein\'s best-known titles, and has been translated into numerous languages.\r\n\r\nThis book has been described as \"one of the most divisive books in children\'s literature\"; the controversy stems from whether the relationship between the main characters (a boy and the eponymous tree) should be interpreted as positive (i.e., the tree gives the boy selfless love) or negative (i.e., the boy and the tree have an abusive relationship).', '978-0-06-025665-4', 1964, 'English', 'Harper & Row', 'Shel Silverstein', '15.jpg', 80),
(16, 'Wuthering Heights', 'Tragedy', 'gothic', 259, 'Wuthering Heights is an 1847 novel by Emily Brontë, initially published under the pseudonym Ellis Bell. It concerns two families of the landed gentry living on the West Yorkshire moors, the Earnshaws and the Lintons, and their turbulent relationships with Earnshaw\'s adopted son, Heathcliff. The novel was influenced by Romanticism and Gothic fiction.\r\n\r\nWuthering Heights is now considered a classic of English literature, but contemporaneous reviews were polarised. It was controversial for its depictions of mental and physical cruelty, and for its challenges to Victorian morality and religious and societal values.', '0440000858', 2020, 'English', '0-486-29256-8', 'Emily Brontë', '16.jpg', 108);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cat` varchar(30) NOT NULL,
  `subcat` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `edition` int(11) NOT NULL,
  `language` varchar(20) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `pages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `cat`, `subcat`, `price`, `description`, `ISBN`, `edition`, `language`, `publisher`, `author`, `image`, `pages`) VALUES
(1, 'Lord of the Flies', 'Fiction', 'Allegorical Fiction, Dystopian', 6, 'Lord of the Flies is a 1954 debut novel by Nobel Prize-winning British author William Golding. The book focuses on a group of British boys stranded on an uninhabited island and their disastrous attempt to govern themselves. Themes include the tension between groupthink and individuality, between rational and emotional reactions, and between morality and immorality.', '0-571-05686-5', 1954, 'English', 'Faber and Faber', 'William Golding', '1.jpg', 224),
(2, 'The Perks of Being a Wallflower', 'Novel', 'epistolary novel', 500, 'The Perks of Being a Wallflower is a coming-of-age epistolary novel by American writer Stephen Chbosky, which was first published on February 1, 1999, by Pocket Books. Set in the early 1990s, the novel follows Charlie, an introverted and observant teenager, through his freshman year of high school in a Pittsburgh suburb. The novel details Charlie\'s unconventional style of thinking as he navigates between the worlds of adolescence and adulthood, and attempts to deal with poignant questions spurred by his interactions with both his friends and family.', '0-671-02734-4', 1999, 'English', 'Pocket Books', 'Stephen Chbosky', '2.jpg', 225),
(3, 'The Outsiders', 'Fiction', 'Young adult fiction', 350, 'The Outsiders is a coming-of-age novel by S. E. Hinton, first published in 1967 by Viking Press. Hinton was 15 when she started writing the novel; however, she did most of the work when she was 16 and a junior in high school. Hinton was 18 when the book was published. The book details the conflict between two rival gangs divided by their socioeconomic status: the working-class \"greasers\" and the upper-class \"Socs\" . The story is told in first-person perspective by teenage protagonist Ponyboy Curtis.\r\nThe story in the book takes place in Tulsa, Oklahoma, in 1965, but this is never explicitly stated in the book.', '0670532576', 1967, 'English', 'Viking Press, Dell Publishing', 'S. E. Hinton', '3.jpg', 192),
(4, 'Romeo & Juliet', 'Tragedy', 'tragedy', 400, 'Romeo and Juliet is officially classified as a tragedy, but in some respects the play deviates from the tragic genre. Unlike other Shakespearean tragedies such as Macbeth , King Lear , and Julius Caesar , Romeo and Juliet is not concerned with a noble character whose actions have widespread consequence.', '190645650291', 1986, 'English', 'shakespeare library ', 'Folger Shakespeare ', '4.jpg', 288),
(5, 'Crime and Punishment', 'Fiction', 'Philosophical novel Psychologi', 600, 'Crime and Punishment  is a novel by the Russian author Fyodor Dostoevsky. It was first published in the literary journal The Russian Messenger in twelve monthly installments during 1866.It was later published in a single volume. It is the second of Dostoevsky\'s full-length novels following his return from ten years of exile in Siberia. Crime and Punishment is considered the first great novel of his mature period of writing. The novel is often cited as one of the supreme achievements in world literature', '26399697', 2000, 'English', 'The Russian Messenger', 'Fyodor Dostoevsky', '5.jpg', 256),
(6, 'The Alchemist ', 'Novel', 'Quest, adventure, fantasy', 399, 'The Alchemist  is a novel by Brazilian author Paulo Coelho which was first published in 1988. Originally written in Portuguese, it became a widely translated international bestseller. An allegorical novel, The Alchemist follows a young Andalusian shepherd in his journey to the pyramids of Egypt, after having a recurring dream of finding a treasure there.', '0-06-250217-4 ', 1999, 'English', 'Harper Torch', 'Paulo Coelho', '6.jpg', 136),
(7, 'The Great Gatsby', 'Tragedy', 'novel', 299, 'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway\'s interactions with mysterious millionaire Jay Gatsby and Gatsby\'s obsession to reunite with his former lover, Daisy Buchanan.\r\n\r\nThe novel was inspired by a youthful romance Fitzgerald had with socialite Ginevra King, and the riotous parties he attended on Long Island\'s North Shore in 1922. Following a move to the French Riviera, Fitzgerald completed a rough draft of the novel in 1924. He submitted it to editor Maxwell Perkins, who persuaded Fitzgerald to revise the work over the following winter. After making revisions, Fitzgerald was satisfied with the text, but remained ambivalent about the book\'s title and considered several alternatives. Painter Francis Cugat\'s cover art greatly impressed Fitzgerald, and he incorporated aspects of it into the novel.', '050000029', 2020, 'English', 'Charles Scribner\'s Sons', 'F. Scott Fitzgerald', '7.jpg', 208),
(8, 'Les Misérables', 'Biography', 'Historical', 100, 'Les Misérables s a French historical novel by Victor Hugo, first published in 1862, that is considered one of the greatest novels of the 19th century.\r\n\r\nIn the English-speaking world, the novel is usually referred to by its original French title. However, several alternatives have been used, including The Miserables, The Wretched, The Miserable Ones, The Poor Ones, The Wretched Poor, The Victims and The Dispossessed.Beginning in 1815 and culminating in the 1832 June Rebellion in Paris, the novel follows the lives and interactions of several characters, particularly the struggles of ex-convict Jean Valjean and his experience of redemption.', '15246855286', 2004, 'English', 'A. Lacroix, Verboeckhoven & Cie.', 'Victor Hugo', '8.jpg', 1420),
(9, 'The Hunger Games', 'Fiction', 'Dystopian, science fiction, dr', 250, 'The Hunger Games is a series of young adult dystopian novels written by American author Suzanne Collins. The series is set in the Hunger Games universe, with the first three novels being a trilogy following teenage protagonist Katniss Everdeen.\r\n\r\nThe novels in the trilogy are titled The Hunger Games (2008), Catching Fire (2009), and Mockingjay (2010). Each was adapted for film, establishing The Hunger Games film series, with the film adaptation of Mockingjay split into two feature-length motion pictures. The first two books in the series were both New York Times best sellers, and Mockingjay topped all US bestseller lists upon its release', '1785517963', 2010, 'English', 'Scholastic', 'Suzanne Collins', '9.jpg', 348),
(10, 'Harry Potter', 'Fantasy', 'Thriller', 700, 'Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry\'s struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people). ', '0045345773', 2017, 'English', 'Bloomsbury Publishing (UK)', 'J. K. Rowling', '10.jpg', 416),
(11, 'To Kill a Mockingbird', 'Moral growth', 'novel', 490, 'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and was instantly successful. In the United States, it is widely read in high schools and middle schools. To Kill a Mockingbird has become a classic of modern American literature, winning the Pulitzer Prize. The plot and characters are loosely based on Lee\'s observations of her family, her neighbors and an event that occurred near her hometown of Monroeville, Alabama, in 1936, when she was ten.', '1854444490', 1960, 'English', 'J. B. Lippincott & Co.', 'Harper Lee', '11.jpg', 281),
(12, 'The Book Thief', 'Fiction', 'historical', 495, 'The Book Thief is a novel by the Australian author Markus Zusak, and it is one of his most popular works. Published in 2005, The Book Thief became an international bestseller and was translated into 63 languages and sold 16 million copies. It was adapted into the 2013 feature film, The Book Thief.\r\n\r\nThe novel is about the adventures of Liesel Meminger in Germany during a time of War. By personifying \"Death\" as a tangible thing, the novel provides a fresh look into the world of the victims of the war.', '033036426X', 2005, 'English,German', 'Picador', 'Markus Zusak', '12.jpg', 352),
(13, 'Twilight', 'Fantasy', 'Romance, fantasy', 750, 'The Twilight Saga is a series of four vampire-themed fantasy romance novels, two companion novels, and one novella, written by American author Stephenie Meyer. Released annually from 2005 through 2008, the four books chart the later teen years of Isabella \"Bella\" Swan, a girl who moves to Forks, Washington, from Phoenix, Arizona and falls in love with a 104-year-old vampire named Edward Cullen. The series is told primarily from Bella\'s point of view, with the epilogue of Eclipse and Part II of Breaking Dawn being told from the viewpoint of character Jacob Black, a werewolf. The novel Midnight Sun is a retelling of the first book, Twilight, from Edward Cullen\'s point of view. The novella, The Short Second Life of Bree Tanner, which tells the story of a newborn vampire who appeared in Eclipse, was published on June 5, 2010, as a hardcover book and on June 7 as a free online ebook.', '0087491929', 2020, 'English', 'Little, Brown and Company', 'Stephenie Meyer', '13.jpg', 458),
(14, 'The Chronicles of Narnia', 'Novel', 'Fantasy', 455, 'The Chronicles of Narnia is a series of seven fantasy novels by British author C. S. Lewis. Illustrated by Pauline Baynes and originally published between 1950 and 1956, The Chronicles of Narnia has been adapted for radio, television, the stage, film and computer games. The series is set in the fictional realm of Narnia, a fantasy world of magic, mythical beasts and talking animals. It narrates the adventures of various children who play central roles in the unfolding history of the Narnian world. Except in The Horse and His Boy, the protagonists are all children from the real world who are magically transported to Narnia, where they are sometimes called upon by the lion Aslan to protect Narnia from evil.', '167455974', 1956, 'English', 'Geoffrey Bles', 'C. S. Lewis', '14.jpg', 384),
(15, 'The Giving Tree', 'Picture Book', 'Children\'s picture book', 30, 'The Giving Tree is an American children\'s picture book written and illustrated by Shel Silverstein. First published in 1964 by Harper & Row, it has become one of Silverstein\'s best-known titles, and has been translated into numerous languages.\r\n\r\nThis book has been described as \"one of the most divisive books in children\'s literature\"; the controversy stems from whether the relationship between the main characters (a boy and the eponymous tree) should be interpreted as positive (i.e., the tree gives the boy selfless love) or negative (i.e., the boy and the tree have an abusive relationship).', '978-0-06-025665-4', 1964, 'English', 'Harper & Row', 'Shel Silverstein', '15.jpg', 80),
(16, 'Wuthering Heights', 'Tragedy', 'gothic', 259, 'Wuthering Heights is an 1847 novel by Emily Brontë, initially published under the pseudonym Ellis Bell. It concerns two families of the landed gentry living on the West Yorkshire moors, the Earnshaws and the Lintons, and their turbulent relationships with Earnshaw\'s adopted son, Heathcliff. The novel was influenced by Romanticism and Gothic fiction.\r\n\r\nWuthering Heights is now considered a classic of English literature, but contemporaneous reviews were polarised. It was controversial for its depictions of mental and physical cruelty, and for its challenges to Victorian morality and religious and societal values.', '0440000858', 2020, 'English', '0-486-29256-8', 'Emily Brontë', '16.jpg', 108),
(17, 'Memoirs of a Geisha', 'Fiction', 'Historical fiction', 450, 'Memoirs of a Geisha is a historical fiction novel by American author Arthur Golden, published in 1997. The novel, told in first person perspective, tells the story of a fictional geisha working in Kyoto, Japan, before, during and after World War II, and ends with her being relocated to New York City.\r\n\r\nIn 2005, a film version was released.', '0-375-40011-7', 2002, 'English', 'Alfred A. Knopf', 'Arthur Golden', '17.jpg', 502),
(18, 'Harry Potter and the Philosopher\'s Stone', 'Novel', 'Fantasy', 400, 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school, and with the help of his friends, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', '0-7475-3269-9', 19997, 'English', 'Bloomsbury (UK)', 'J.K.Rowling', '18.jpg', 440),
(19, 'Fahrenheit 451', 'Science', 'science', 300, 'Fahrenheit 451 is a 1953 dystopian novel by American writer Ray Bradbury. Often regarded as one of his best works,[4] the novel presents a future American society where books are outlawed and \"firemen\" burn any that are found.[5] The book\'s tagline explains the title as \"the temperature at which book paper catches fire, and burns\": the autoignition temperature of paper. The lead character, Guy Montag, is a fireman who becomes disillusioned with his role of censoring literature and destroying knowledge, eventually quitting his job and committing himself to the preservation of literary and cultural writings.', '978-0-7432-4722-1', 2006, 'English', 'Ballantine Books', 'Ray Bradbury', '19.jpg', 404),
(20, 'Dead Beat', 'Mystery', 'Fantasy', 420, 'It\'s three days before Halloween and nearly a year after the events in Blood Rites. Mavra, from the previous novel, orders Dresden to locate The Word of Kemmler for her within 3 days, or Karrin Murphy will be set up for the murder of one of Mavra\'s minions last year. Dresden learns that Bob used to belong to Kemmler, the most powerful necromancer in a thousand years, and narrowly survives an encounter with an evil personality hidden within the spirit.\r\n\r\nInvestigating further, he rescues the medical examiner Waldo Butters from Grevane, a powerful necromancer, at the local morgue. During the encounter he learns of another book; Die Lied der Erlking.', '0-451-46027-8', 2005, 'English', 'Roc Hardcover', 'Jim Butcher', '20.jpg', 284),
(21, 'The Orenda', 'Novel', 'historical', 556, 'The Orenda is a historical novel by Canadian author Joseph Boyden. It was published by Hamish Hamilton in 2013.The novel takes place in what was to become Canada in the early 17th century and is narrated by a Huron warrior named Bird, a young Iroquois girl named Snow Falls, and a French Jesuit missionary named Christophe.', '978-0-670-06418-2 ', 2013, 'English', 'Hamish Hamilton', 'Joseph Boyden', '21.jpg', 442),
(22, 'All That Matters ', 'Novel', 'debut novel', 234, 'All That Matters is a novel by Wayson Choy. First published in 2004 by Doubleday Canada, it is the sequel to his debut novel, The Jade Peony (1995), and was nominated for the Giller Prize.[1]\r\n\r\nSet in Vancouver, British Columbia, Canada during the 1930s and 1940s, All That Matters follow the lives of the Chen family, this time through the experiences of Kiam-Kim, the First Son and Oldest Brother of Jook-Liang, Jung-Sum, and Sek-Lung, whose childhood and adolescence in a strict but caring Chinatown family. The story runs parallel to the events related in The Jade Peony.', '978-0-385-25777-0', 2004, 'English', 'Doubleday Canada', 'Wayson Choy', '22.jpg', 225),
(23, 'The Colony of Unrequited Dreams', 'Novel', 'Fantasy', 34, 'The Colony of Unrequited Dreams is a novel by Wayne Johnston, published on September 30, 1998 by Knopf Canada. Johnston\'s breakthrough work, the novel was a Canadian bestseller, and was shortlisted for the 1998 Giller Prize and the 1998 Governor General\'s Award for English fiction.[1][2]\r\n\r\nIn 2003, Justin Trudeau championed the book on CBC Radio\'s Canada Reads.[3]\r\n\r\nA work of historical fiction, the novel presents a fictionalized portrayal of real-life Newfoundland politician Joey Smallwood, the political leader who brought the province into Canadian Confederation in 1949. A major literary device in the novel is the intertwining of his life, since childhood, with (fictional) journalist Sheilagh Fielding.', '0676971822', 1998, 'English', 'Knopf Canada', 'Wayne Johnston', '23.jpg', 221),
(24, 'Noble House ', 'Novel', 'novel', 50, 'Noble House is a novel by James Clavell, published in 1981 and set in Hong Kong in 1963.\r\n\r\nThe novel is over a thousand pages long, and contains dozens of characters and numerous intermingling plot lines. In 1988, it was adapted as a television miniseries for NBC, starring Pierce Brosnan. The miniseries updates the storyline of the novel to the 1980s. The Noble House also is a nickname of Struan\'s, the trading company featured prominently in most of Clavell\'s novels.', '0-385-28737-2', 2000, 'English', 'Delacorte Press', 'James Clavell', '24.jpg', 441);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `subcat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `subcat_name`) VALUES
(1, 'Fiction', 'science fiction'),
(2, 'Novel', 'epistolary novel'),
(3, 'tragedy', 'tragedy'),
(4, 'novel', 'adventure'),
(5, 'fantasy', 'thriller'),
(6, 'Biography', 'historical'),
(7, 'novel', 'moral growth'),
(8, 'fantasy', 'romance'),
(9, 'picture book', 'children\'s picture book'),
(10, 'tragedy', 'gothic'),
(11, 'novel', 'fantasy'),
(12, 'science', 'science'),
(13, 'mystery', 'Fantasy'),
(14, 'novel', 'fantasy'),
(15, 'fiction', 'historical');

-- --------------------------------------------------------

--
-- Table structure for table `newarrival`
--

CREATE TABLE `newarrival` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cat` varchar(30) NOT NULL,
  `subcat` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `edition` int(11) NOT NULL,
  `language` varchar(20) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `pages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newarrival`
--

INSERT INTO `newarrival` (`id`, `name`, `cat`, `subcat`, `price`, `description`, `ISBN`, `edition`, `language`, `publisher`, `author`, `image`, `pages`) VALUES
(1, 'Lord of the Flies', 'Fiction', 'Allegorical Fiction, Dystopian', 6, 'Lord of the Flies is a 1954 debut novel by Nobel Prize-winning British author William Golding. The book focuses on a group of British boys stranded on an uninhabited island and their disastrous attempt to govern themselves. Themes include the tension between groupthink and individuality, between rational and emotional reactions, and between morality and immorality.', '0-571-05686-5', 1954, 'English', 'Faber and Faber', 'William Golding', '1.jpg', 224),
(2, 'The Perks of Being a Wallflower', 'Novel', 'epistolary novel', 500, 'The Perks of Being a Wallflower is a coming-of-age epistolary novel by American writer Stephen Chbosky, which was first published on February 1, 1999, by Pocket Books. Set in the early 1990s, the novel follows Charlie, an introverted and observant teenager, through his freshman year of high school in a Pittsburgh suburb. The novel details Charlie\'s unconventional style of thinking as he navigates between the worlds of adolescence and adulthood, and attempts to deal with poignant questions spurred by his interactions with both his friends and family.', '0-671-02734-4', 1999, 'English', 'Pocket Books', 'Stephen Chbosky', '2.jpg', 225),
(3, 'The Outsiders', 'Fiction', 'Young adult fiction', 350, 'The Outsiders is a coming-of-age novel by S. E. Hinton, first published in 1967 by Viking Press. Hinton was 15 when she started writing the novel; however, she did most of the work when she was 16 and a junior in high school. Hinton was 18 when the book was published. The book details the conflict between two rival gangs divided by their socioeconomic status: the working-class \"greasers\" and the upper-class \"Socs\" . The story is told in first-person perspective by teenage protagonist Ponyboy Curtis.\r\nThe story in the book takes place in Tulsa, Oklahoma, in 1965, but this is never explicitly stated in the book.', '0670532576', 1967, 'English', 'Viking Press, Dell Publishing', 'S. E. Hinton', '3.jpg', 192),
(4, 'Romeo & Juliet', 'Tragedy', 'tragedy', 400, 'Romeo and Juliet is officially classified as a tragedy, but in some respects the play deviates from the tragic genre. Unlike other Shakespearean tragedies such as Macbeth , King Lear , and Julius Caesar , Romeo and Juliet is not concerned with a noble character whose actions have widespread consequence.', '190645650291', 1986, 'English', 'shakespeare library ', 'Folger Shakespeare ', '4.jpg', 288),
(5, 'Crime and Punishment', 'Fiction', 'Philosophical novel Psychologi', 600, 'Crime and Punishment  is a novel by the Russian author Fyodor Dostoevsky. It was first published in the literary journal The Russian Messenger in twelve monthly installments during 1866.It was later published in a single volume. It is the second of Dostoevsky\'s full-length novels following his return from ten years of exile in Siberia. Crime and Punishment is considered the first great novel of his mature period of writing. The novel is often cited as one of the supreme achievements in world literature', '26399697', 2000, 'English', 'The Russian Messenger', 'Fyodor Dostoevsky', '5.jpg', 256),
(6, 'The Alchemist ', 'Novel', 'Quest, adventure, fantasy', 399, 'The Alchemist  is a novel by Brazilian author Paulo Coelho which was first published in 1988. Originally written in Portuguese, it became a widely translated international bestseller. An allegorical novel, The Alchemist follows a young Andalusian shepherd in his journey to the pyramids of Egypt, after having a recurring dream of finding a treasure there.', '0-06-250217-4 ', 1999, 'English', 'Harper Torch', 'Paulo Coelho', '6.jpg', 136),
(7, 'The Great Gatsby', 'Tragedy', 'novel', 299, 'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway\'s interactions with mysterious millionaire Jay Gatsby and Gatsby\'s obsession to reunite with his former lover, Daisy Buchanan.\r\n\r\nThe novel was inspired by a youthful romance Fitzgerald had with socialite Ginevra King, and the riotous parties he attended on Long Island\'s North Shore in 1922. Following a move to the French Riviera, Fitzgerald completed a rough draft of the novel in 1924. He submitted it to editor Maxwell Perkins, who persuaded Fitzgerald to revise the work over the following winter. After making revisions, Fitzgerald was satisfied with the text, but remained ambivalent about the book\'s title and considered several alternatives. Painter Francis Cugat\'s cover art greatly impressed Fitzgerald, and he incorporated aspects of it into the novel.', '050000029', 2020, 'English', 'Charles Scribner\'s Sons', 'F. Scott Fitzgerald', '7.jpg', 208),
(8, 'Les Misérables', 'Biography', 'Historical', 100, 'Les Misérables s a French historical novel by Victor Hugo, first published in 1862, that is considered one of the greatest novels of the 19th century.\r\n\r\nIn the English-speaking world, the novel is usually referred to by its original French title. However, several alternatives have been used, including The Miserables, The Wretched, The Miserable Ones, The Poor Ones, The Wretched Poor, The Victims and The Dispossessed.Beginning in 1815 and culminating in the 1832 June Rebellion in Paris, the novel follows the lives and interactions of several characters, particularly the struggles of ex-convict Jean Valjean and his experience of redemption.', '15246855286', 2004, 'English', 'A. Lacroix, Verboeckhoven & Cie.', 'Victor Hugo', '8.jpg', 1420);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `user_id` varchar(30) NOT NULL,
  `order_id` int(11) NOT NULL,
  `items` varchar(500) NOT NULL,
  `amount` int(11) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `delivery` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `add_house` varchar(60) NOT NULL,
  `add_street` varchar(60) NOT NULL,
  `add_city` varchar(30) NOT NULL,
  `add_state` varchar(30) NOT NULL,
  `add_country` varchar(30) NOT NULL,
  `add_pincode` int(11) NOT NULL,
  `acc_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
