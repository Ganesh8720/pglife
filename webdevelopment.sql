-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2025 at 09:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdevelopment`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `type`, `icon`) VALUES
(1, 'Wifi', 'Common Area', 'wifi'),
(2, 'Power Backup', 'Building', 'powerbackup'),
(3, 'Fire Extinguisher', 'Building', 'fireext'),
(4, 'TV', 'Common Area', 'tv'),
(5, 'Bed with Mattress', 'Bedroom', 'bed'),
(6, 'Parking', 'Building', 'parking'),
(7, 'Water Purifier', 'Common Area', 'rowater'),
(8, 'Dining', 'Common Area', 'dining'),
(9, 'Air Conditioner', 'Bedroom', 'ac'),
(10, 'Washing Machine', 'Common Area', 'washingmachine'),
(11, 'Lift', 'Building', 'lift'),
(12, 'CCTV', 'Building', 'cctv'),
(13, 'Geyser', 'Washroom', 'geyser');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Tirupati'),
(2, 'Amaravathi'),
(3, 'Bengaluru'),
(4, 'Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`id`, `user_id`, `property_id`) VALUES
(28, 28, 4),
(32, 0, 3),
(38, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `rent` int(11) NOT NULL,
  `rating_clean` float(3,1) DEFAULT NULL,
  `rating_food` float(3,1) DEFAULT NULL,
  `rating_safety` float(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `city_id`, `name`, `address`, `description`, `gender`, `rent`, `rating_clean`, `rating_food`, `rating_safety`) VALUES
(1, 1, 'Sri Balaji PG', '18-9-45 Tirumala Bypass Road, Tirupati, Andhra Pradesh 517501', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 5000, 4.3, 3.4, 4.8),
(2, 1, 'ABC Residency', 'Renigunta Road, Tirupati, Andhra Pradesh 517501', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', '', 6000, 2.9, 3.4, 3.8),
(3, 2, 'Amaravathi Stays', 'Vijayawada-Guntur Expressway, Amaravathi, Andhra Pradesh', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 9500, 3.9, 3.8, 4.9),
(4, 2, 'PG Elite Amaravathi', 'Near Assembly Building, Velagapudi, Amaravathi, Andhra Pradesh', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 8000, 4.2, 4.1, 4.5),
(5, 2, 'Green Homes', 'Tullur Road, Amaravathi, Andhra Pradesh', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 8500, 4.2, 3.9, 4.6),
(6, 3, 'Comfort PG for Men', 'No.12, 5th Cross, Koramangala 6th Block, Bengaluru, Karnataka 560095', 'Fully furnished PG located in the heart of Koramangala, Bengaluru. Enjoy access to restaurants, parks, and tech hubs within walking distance. Common area with TV, kitchen facility, and weekly housekeeping.', 'male', 7000, 4.0, 3.7, 4.5),
(7, 3, 'Green Nest Ladies PG', 'No. 88, 17th Main, HSR Layout Sector 3, Bengaluru, Karnataka 560102', 'Spacious rooms with attached bathrooms, nutritious meals served thrice a day, and CCTV-secured premises. Ideal for students and working professionals.', 'female', 9500, 4.5, 4.0, 4.7),
(8, 3, 'Tech Stay PG', 'Plot No. 45, Near Manyata Tech Park, Nagavara, Bengaluru, Karnataka 560045', 'Perfect PG for tech professionals. 5-minute walk from Manyata Tech Park. High-speed Wi-Fi and clean surroundings make this a convenient choice.', 'male', 9000, 4.1, 3.8, 4.6),
(9, 3, 'Student Corner PG', 'Building 7, Near Christ University, Hosur Road, Bengaluru, Karnataka 560029', 'PG for students with common study room, Wi-Fi, meals, and easy access to public transport.', 'male', 8500, 4.3, 3.9, 4.4),
(10, 3, 'Serene Stay Ladies PG', '3rd Floor, Jayanagar 4th Block, Bengaluru, Karnataka 560011', 'Women’s PG with hygienic food, 24/7 water supply, and close proximity to metro and shopping complexes.', 'female', 7800, 4.4, 4.2, 4.8),
(11, 4, 'Sri Sai PG for Gents', 'Old No. 13, New No. 23, Mylapore, Chennai, Tamil Nadu 600004', 'Spacious PG with AC rooms, daily housekeeping, and vegetarian meals. Close to major temples and cultural centers.', 'male', 6200, 3.9, 3.6, 4.2),
(12, 4, 'Chennai Comfort Ladies PG', 'No. 78, Anna Nagar West, Chennai, Tamil Nadu 600040', 'Ladies PG with good security, home-cooked food, and proximity to colleges and markets.', 'female', 8500, 4.2, 4.0, 4.6),
(13, 4, 'Metro PG for Working Men', 'Plot No. 52, Velachery Main Road, Chennai, Tamil Nadu 600042', 'Clean and affordable accommodation for IT professionals. 24/7 power and Wi-Fi.', 'male', 7200, 4.0, 3.7, 4.3),
(14, 4, 'Peace Nest PG for Girls', 'No. 9, 1st Street, Adyar, Chennai, Tamil Nadu 600020', 'Located in peaceful residential area with well-ventilated rooms, three meals, and laundry facility.', 'female', 7800, 4.3, 4.1, 4.7),
(15, 4, 'Budget PG for Boys', 'Plot 105, T. Nagar, Chennai, Tamil Nadu 600017', 'Budget-friendly PG for college students with bunk beds, mess food, and Wi-Fi.', 'male', 5500, 3.8, 3.5, 4.0),
(16, 1, 'Balaji Boys PG', 'D.No. 10-2-39, Near Railway Station, Tirupati, Andhra Pradesh 517501', 'Located close to Tirupati Railway Station, this PG offers spacious rooms, high-speed internet, and vegetarian meals. Ideal for students and working men.', 'male', 4800, 4.0, 3.6, 4.3),
(17, 1, 'Sri Padmavathi Girls PG', 'No. 12-3-17, Near SPW Degree College, Tirupati, Andhra Pradesh 517502', 'Secure and clean PG for girls, located near colleges. Includes 3 meals per day, study tables, and CCTV surveillance.', 'female', 5500, 4.4, 4.0, 4.6),
(18, 1, 'Vishnu Residency PG', 'Plot No. 8, R.C. Road, Tirupati, Andhra Pradesh 517501', 'Peaceful residential PG with modern amenities like geysers, Wi-Fi, and a shared kitchen. Suitable for students.', 'male', 5200, 3.9, 3.7, 4.1),
(19, 2, 'Amaravati PG for Boys', 'House No. 3-21, Secretariat Road, Velagapudi, Amaravathi, Andhra Pradesh 522237', 'Spacious rooms with ventilation, purified drinking water, and near government offices. Great option for working professionals.', 'male', 6000, 4.1, 3.8, 4.4),
(20, 2, 'Sri Durga Ladies PG', 'Building 22, Beside Guntur-Vijayawada Highway, Amaravathi, Andhra Pradesh 522503', 'Ladies PG near Amaravathi city center with homely food and 24/7 security. Fully furnished rooms available.', 'female', 7200, 4.3, 4.1, 4.7),
(21, 2, 'Urban Nest PG', 'Plot No. 66, Near AIIMS Mangalagiri, Amaravathi, Andhra Pradesh 522503', 'Modern PG for students and interns near AIIMS with high-speed internet, attached bathrooms, and mess facility.', 'male', 6500, 4.2, 4.0, 4.5);

-- --------------------------------------------------------

--
-- Table structure for table `properties_amenities`
--

CREATE TABLE `properties_amenities` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `amenity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties_amenities`
--

INSERT INTO `properties_amenities` (`id`, `property_id`, `amenity_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 5),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(8, 1, 10),
(9, 1, 11),
(10, 1, 13),
(11, 2, 1),
(12, 2, 2),
(13, 2, 3),
(14, 2, 4),
(15, 2, 5),
(16, 2, 7),
(17, 2, 8),
(18, 2, 9),
(19, 2, 10),
(20, 2, 11),
(21, 2, 13),
(22, 3, 1),
(23, 3, 2),
(24, 3, 3),
(25, 3, 4),
(26, 3, 5),
(27, 3, 7),
(28, 3, 8),
(29, 3, 10),
(30, 3, 11),
(31, 3, 12),
(32, 3, 13),
(33, 4, 1),
(34, 4, 3),
(35, 4, 4),
(36, 4, 5),
(37, 4, 7),
(38, 4, 8),
(39, 4, 10),
(40, 4, 11),
(41, 4, 12),
(42, 4, 13),
(43, 5, 1),
(44, 5, 3),
(45, 5, 4),
(46, 5, 5),
(47, 5, 7),
(48, 5, 8),
(49, 5, 10),
(50, 5, 11),
(51, 5, 12),
(52, 5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `content` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `property_id`, `user_name`, `content`) VALUES
(1, 1, 'Ashutosh Gowariker', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(2, 1, 'Karan Johar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(3, 2, 'Zoya Akhtar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(4, 2, 'Farhan Akhtar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(5, 2, 'Anurag Kashyap', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(6, 3, 'Mira Nair', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(7, 3, 'Meghna Gulzar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(8, 4, 'Farah Khan', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(9, 5, 'Rajkumar Hirani', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(10, 5, 'Sanjay Leela Bhansali', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `college_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `phone`, `gender`, `college_name`) VALUES
(0, 'ganeshinternships@gmail.com', '7ab515d12bd2cf431745511ac4ee13fed15ab578', 'Kondigatti Ganesh Kumar', '9381369610', 'male', 'svec'),
(0, 'ram@gamil.com', 'asdfgh', 'ram', '8956231478', 'male', 'svec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD CONSTRAINT `interested_users_properties_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD CONSTRAINT `properties_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `properties_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
