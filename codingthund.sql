-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 06:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthund`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'Vinay Maheshwari', '7982043775', 'Hi ! I\'m Vinay Maheshwari', '2020-07-12 14:59:10', 'vinaymaheshwari35@gmail.com'),
(2, 'Vikas Maheshwari', '7838612164', 'Hi ! I\'m Vikas Maheshwari', '2020-07-12 15:00:14', 'vikas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Python pip', 'Basic pip Documentation', 'v-pip', 'Pip is a package manager for Python that allows you to install additional libraries and packages that are not part of the standard Python library such as the ones found in the Python Package Index. It is a replacement for easy install. If your version of Python is 2.7.9 (or greater) or Python 3.4 (or greater), then PIP comes pre-installed with Python, in other cases you will have to install it separately. \r\n\r\nPIP is a recursive acronym for “Preferred Installer Program” or “PIP Installs Packages”. It is a command-line utility that installs, reinstalls, or uninstalls PyPI packages with one simple command: pip. You may be familiar with the term package manager if you have used other languages like Ruby uses Gem, JavaScript uses npm for package management, and .NET uses NuGet. Pip has become the standard package manager for Python. \r\n\r\nThe Python installer installs pip automatically, so it is ready for you to use, unless you have installed an older version of Python. You can also verify if pip is available on your Python version by running the command below:\r\n\r\nPIP in Python\r\n\r\nOn running the command mentioned above, a similar output should be displayed which will show the pip version, along with the location and version of Python. If you are using an older version of Python, the pip version will not be displayed. Then you can install it separately. ', 'about.jpg', '2020-07-13 21:57:38'),
(2, 'Flask Basics', 'Basic Flask Documentation', 'v-flask', 'Flask is a web application framework written in Python. Armin Ronacher, who leads an international group of Python enthusiasts named Pocco, develops it. Flask is based on Werkzeug WSGI toolkit and Jinja2 template engine. Both are Pocco projects.', 'about.jpg', '2020-07-11 21:29:52'),
(3, 'Jinja Templates', 'Basics About Jinja Templating', 'v-jinja', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\r\n\r\n', 'home.jpg', '2020-07-11 21:46:44'),
(4, 'The Jupyter Notebook', 'Jypyter Notebook Ducumentation', 'v-jupyternotebook', 'The notebook extends the console-based approach to interactive computing in a qualitatively new direction, providing a web-based application suitable for capturing the whole computation process: developing, documenting, and executing code, as well as communicating the results. The Jupyter notebook combines two components\r\n\r\nA web application: a browser-based tool for interactive authoring of documents which combine explanatory text, mathematics, computations and their rich media output.\r\n\r\na representation of all content visible in the web application, including inputs and outputs of the computations, explanatory text, mathematics, images, and rich media representations of objects.', 'contact.jpg', '2020-07-11 22:11:00'),
(8, 'Python pip', 'Basic pip Documentation', 'v-pip', 'Pip is a package manager for Python that allows you to install additional libraries and packages that are not part of the standard Python library such as the ones found in the Python Package Index. It is a replacement for easy install. If your version of Python is 2.7.9 (or greater) or Python 3.4 (or greater), then PIP comes pre-installed with Python, in other cases you will have to install it separately. \r\n\r\nPIP is a recursive acronym for “Preferred Installer Program” or “PIP Installs Packages”. It is a command-line utility that installs, reinstalls, or uninstalls PyPI packages with one simple command: pip. You may be familiar with the term package manager if you have used other languages like Ruby uses Gem, JavaScript uses npm for package management, and .NET uses NuGet. Pip has become the standard package manager for Python. \r\n\r\nThe Python installer installs pip automatically, so it is ready for you to use, unless you have installed an older version of Python. You can also verify if pip is available on your Python version by running the command below:\r\n\r\nPIP in Python\r\n\r\nOn running the command mentioned above, a similar output should be displayed which will show the pip version, along with the location and version of Python. If you are using an older version of Python, the pip version will not be displayed. Then you can install it separately. ', 'about.jpg', '2020-07-17 19:56:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
