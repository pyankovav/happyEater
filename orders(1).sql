-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2016 at 04:05 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `orders`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('admin', 'admin'),
('newadmin', 'newadmin'),
('yesadmin', 'yesadmin');

-- --------------------------------------------------------

--
-- Table structure for table `custinfo`
--

CREATE TABLE IF NOT EXISTS `custinfo` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `FirstName` varchar(10) NOT NULL,
  `LastName` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `zipcode` varchar(9) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custinfo`
--

INSERT INTO `custinfo` (`username`, `password`, `FirstName`, `LastName`, `email`, `address`, `zipcode`, `phone`, `comments`) VALUES
('customer', '1234', 'abcd', 'klmn', 'a', '', '1', '1', 'azxcvvgfd er ui nbhgt'),
('mn', 'mnbv', 'nv', 'nv', 'n@nb.com', 'nb', '10010', '1', ''),
('nb', 'hg', 're', 'tr', 'yt@nj.com', 'rt', '11111', '1', ''),
('new', '1234', '', 'hghg', 'q@mbm.com', 'hgjt', '10010', '1', ''),
('newcustome', '1234', 'v', '', 'sfgh@mnkh.com', 'd', '10010', '1', ''),
('nmk', 'ghj', 'gh', 'ggg', 'e@nbn.com', 'hgh', '10010', '1', ''),
('user', 'user', 'q', 'a', 'a@gmail.com', 'rt', '11111', '11111111111', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemTitle` varchar(50) NOT NULL,
  `ItemDesc` text NOT NULL,
  `Price` double NOT NULL,
  `category` varchar(15) NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ItemID`, `ItemTitle`, `ItemDesc`, `Price`, `category`) VALUES
(8, 'Fruits', 'Golden Fruits', 11, 'All Day'),
(9, 'Pink Shrimp & Sea Scallops', 'Dungeness crab, calamari in ocean herbal broth', 23, 'Lunch'),
(10, 'Chocolate Vanilla cocoa "truff"', 'Cocoa meringue batons and toasted gelato', 18, 'All Day'),
(11, 'Le  vacherin d’ete', 'Salad of raspberries, lemon meringue, lime mascarpone, fresh basil, toasted almonds', 25, 'All Day'),
(12, 'Mandarin and clementine tart', 'Mandarin and clementine tart', 12, 'All Day'),
(13, 'Organic farm egg', 'Serrano ham, steamed polenta, artichoke, sunchoke in coconut garlic broth', 23, 'Breakfast'),
(14, '3 Eggs Any Style ', 'Available All Day. Served with homemade potatoes, toast, coffee or tea, included ''til 11:30am ', 8, 'Breakfast'),
(15, 'NEW Lumber Jack Pancakes', 'rra odio. Fusce sollicitudin tincidunt ante scelerisque euismod.ue sit amet dapibus nunc. Proin vel finibus mi.', 33, 'Breakfast'),
(16, 'Lumber Jack Pancakes', 'Tus nec nibh ut augue dapibus elementum et quis dui. Praesent sit amet sollicitudin ipsum. Ut eleifend dapibus libero, nesemper magna. Aliquam auctor ut libero nec euismod. Donec tincidunt pharetra metus nec fringilla. Vivamus est sapien, blandit', 11, 'All Day'),
(17, 'New York State foie gras', 'Sour, sweet and bitter cherries, Pedro Ximenez 25.00 Supplement', 43, 'Dinner'),
(18, 'Forager’s treasure of wild mushrooms', 'Sweet garlic, special spices, grilled toro', 22, 'Dinner'),
(19, 'Maine Lobster', 'Hudson Valley peas, fava, green asparagus, wild Oregon watercress,Australian black truffle Blood orange dressing', 38, 'Dinner'),
(20, 'Wild Alaskan salmon', 'Prepared in a summer manner', 38, 'Dinner'),
(21, 'Grass fed Canadian buffalo', 'Sheeps milk and rosemary gnocchi, glazed sweet onions', 58, 'Dinner'),
(24, 'Fry', 'Crunchy French Fry', 3, 'All Day'),
(28, 'Cinnamon Roll', 'Fresh baked daily and topped with rich cream cheese icing.', 2, 'Breakfast'),
(29, 'Bottomless Cup of Tea', 'Cup of Tea', 3, 'Breakfast'),
(31, 'Fruits', 'Sometimes the most simple recipes are the best ones. This is no exception. This simple fruit salad can be made with 10 to 12 cups of any of your favorite', 10, 'All Day'),
(33, '', 'Applewood Smoked Bacon, Sausage, Sausage Patties, Chicken Apple Sausage, Grilled Ham', 2, 'All Day'),
(34, 'Hearty Extras', 'Applewood Smoked Bacon, Sausage, Sausage Patties, Chicken Apple Sausage, Grilled Ham', 2, 'Breakfast'),
(36, 'Pizza', 'Got marinara sauce running through your veins? Get your pizza fix delivered when you order up a yummy slice of Italy online with delivery.com. Just enter your address and start browsing neighborhood pizzerias for that perfect pie. Mangia! Mangia!', 12, 'Lunch'),
(37, 'Hamburger Meal', 'Is it possible that fast food became even more convenient? With delivery.com, you can order delivery or takeout online from your favorite fast food restaurants like McDonalds or Subway. Having fries, chicken nuggets, footlongs, and more delivered right to your door just feels right.', 15, 'All Day'),
(38, 'Cruasanes fruits and coffee', 'Breakfast with coffee, croissants and fresh fruits', 12, 'Breakfast'),
(42, 'hgutiroM', '', 888, ''),
(43, 'Cinnamon Oatmeal Breakfast', 'eifend dapibus libero, nec semper magna. Aliquam auctor ut libero nec euismod. Donec tincidunt pharetra metus nec fringilla. Vivamus est sapien, blandit vel est eget, pharetra vehicula magna. Sed vel tincidunt nisl. Nam eu auctor felis, quis aliquet magna.', 8, 'Breakfast'),
(46, 'Happy Cake', 'tincidunt ante scelerisque euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean non nunc ac metus accumsan egestas. Aenean ante quam, vestibulum non ligula nec, mattis aliquet nisl. Integer', 18, 'All Day'),
(54, 'Strawberry and Rosemary Chicken and Waffles', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing', 12, 'Breakfast'),
(55, 'Strawberry & Cream Cheese Crispers', 'Delicious strawberries combined with sweet cream cheese tucked inside two hand-rolled wraps, lightly fried and dusted with powdered sugar.', 11, 'Breakfast'),
(56, 'Strawberry & Cream  Crispers', 'Delicious strawberries combined with sweet cream cheese tucked inside two hand-rolled wraps, lightly fried and dusted with powdered sugar', 15, 'All Day'),
(58, 'Beef Cheese Casadia', 'Served with with French Fries or Potato Salad', 9, 'Lunch'),
(59, 'Matzo ball soup', 'Home made.', 5, 'Lunch'),
(60, 'Steak with onion rings', 'Steak with a slice of butter and some onion rings, garnish with fried basil and serve with green beans.', 34, 'Dinner'),
(61, 'Chicken Taco Bowl', 'Grilled Chicken Strips over Garden Salad. Topped with Cheddar Cheese in a Tortilla Shell. Served with Sour Cream and Salsa Sauce', 11, 'Lunch'),
(62, 'Seafood Kebab', 'Shrimp and scallops with tomato, peppers and onion over rice', 12, 'Lunch'),
(63, 'Coffee', 'Cup of coffee', 5, 'Lunch'),
(64, 'Coffe', 'Cup of coffee', 3, 'Breakfast'),
(65, 'Minion Cake', 'They always bring a smile, and that’s a great reason to celebrate those cute little guys in cake form.', 34, 'Lunch'),
(68, 'bnh', 'sssss', 23, 'Breakfast');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
