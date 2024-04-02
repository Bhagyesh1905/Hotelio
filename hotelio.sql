-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 08:45 AM
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
-- Database: `hotelio`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL
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
(7, 'Luggage Assistance', 'Common Area', 'rowater'),
(8, 'Swiming Pool', 'Common Area', 'dining'),
(9, 'Air Conditioner', 'Bedroom', 'ac'),
(10, 'Housekeeping', 'Common Area', 'washingmachine'),
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
(1, 'Delhi'),
(2, 'Mumbai'),
(3, 'Bengaluru'),
(4, 'Hyderabad'),
(5, 'Chennai'),
(6, 'Indore'),
(7, 'Jaipur'),
(8, 'Agra');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`id`, `user_id`, `property_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 2, 1),
(5, 2, 5),
(6, 3, 1),
(7, 3, 2),
(8, 3, 5),
(9, 4, 2),
(10, 4, 3),
(11, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `gender` enum('male','female','unisex') NOT NULL,
  `rent` int(11) NOT NULL,
  `rating_clean` float(2,1) NOT NULL,
  `rating_food` float(2,1) NOT NULL,
  `rating_safety` float(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `city_id`, `name`, `address`, `description`, `gender`, `rent`, `rating_clean`, `rating_food`, `rating_safety`) VALUES
(1, 1, 'Hotel Taj Palace', 'Taj Palace, New Delhi, Taj Palace, 2, Sardar patel Marg, Diplomatic Enclave, Chanakyapuri,New Delhi,Delhi 110021', 'Initially, let me express my sincere appreciation for the unparalleled hospitality provided by Taj. Our family holiday was immensely enriched by the warmth and attentiveness of the staff members. However, it is pertinent to note that the room assigned to us, while well-furnished, exhibited signs of age, characterized by a lingering musty smell. Despite this setback, the management graciously extended an offer to upgrade us to a more contemporary accommodation the following day. Regrettably, we had already settled in by then. Setting aside this minor inconvenience, our overall experience was delightful, with impeccable service and an unbeatable location, both earning a perfect score of 5.0. We thoroughly relished our time at the hotel.\r\n', 'male', 4999, 4.3, 3.4, 4.8),
(2, 1, 'De Pavilion Hotel', 'De Pavilion Hotel, Delhi, Road Number 6, Block RZ, Mahipalpur Village, Mahipalpur, New Delhi, Delhi', 'The accommodations were impeccably maintained, boasting a level of cleanliness that exceeded expectations. The staff exhibited a remarkable level of professionalism, their attentiveness and cooperation ensuring a seamless experience throughout our stay. Locating the hotel proved to be effortless, and the check-in process was conducted with utmost efficiency, reflecting the hotel\'s commitment to exceptional service. I wholeheartedly endorse this establishment to discerning travelers seeking refined yet affordable accommodations, particularly those in search of a convenient option in close proximity to the airport.', 'unisex', 5499, 2.9, 3.4, 3.8),
(3, 2, 'Radisson Blue Mumbai International Airport', 'Radisson Blue Mumbai International Airport,Marol Maroshi Road,near Marol,Mapkhan Nagar,Andheri East, Mumbai, Maharashtra 400058', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 9499, 3.9, 3.8, 4.9),
(4, 2, 'Trident Nariman point ', 'South Mumbai, Gorai no.2, Borivali South, Mumbai, Maharashtra 400092', 'A breathtaking experience from start to finish. Impeccable service, luxurious rooms, and stunning views of the ocean. The gourmet dining options left us spoiled for choice. We particularly enjoyed unwinding at the rooftop bar, indulging in delicious cocktails while watching the sunset. Highly recommend for a romantic getaway.', 'female', 8799, 4.2, 4.1, 4.5),
(5, 2, 'Novotel Mumbai Juhu Beach ', 'Chhatrapati Shivaji Airport , Andheri East, Besides, SV Rd, Daulat Nagar, Mumbai - 400066', 'Nestled amidst picturesque landscapes, this lodge offers a tranquil escape from the hustle and bustle of city life. Cozy cabins with crackling fireplaces provided the perfect ambiance for relaxation. The staff\'s hospitality surpassed expectations, and the on-site spa treatments were divine. Ideal for nature enthusiasts seeking serenity.', 'male', 8499, 4.2, 3.9, 4.6),
(6, 3, 'JW Marriott Hotel', 'JW Marriott Hotel New Delhi Aerocity, Asset Area 4 - Hospitality District, Delhi Aerocity, New Delhi, Delhi 110037, India', 'Perched high above the city, these suites offer unparalleled views and luxurious accommodations. Our suite was spacious, elegantly furnished, and equipped with modern amenities. The rooftop restaurant served delectable cuisine with panoramic vistas, a dining experience to remember. Perfect for those seeking luxury and sophistication.', 'male', 4999, 4.3, 3.4, 4.8),
(7, 4, 'Hotel The Oberoi', 'The Oberoi, Sardar Patel Marg, Diplomatic Enclave, Chanakyapuri, Hyderabad, 110021, India', 'A hidden gem tucked away by the tranquil shores of the lake. The serene setting provided the perfect backdrop for relaxation and reflection. Our room was tastefully decorated, with a cozy fireplace and a balcony overlooking the water. The lakeside bonfire in the evening was a charming touch, fostering a sense of camaraderie among guests.', 'male', 5000, 4.3, 3.4, 4.8),
(9, 4, 'ITC kakatiya', 'ITC Kakatiya, Begumpet, Hyderabad, Telangana 500016, India', ' A sanctuary for the mind, body, and soul, this retreat offers a holistic approach to wellness. From yoga and meditation classes to organic farm-to-table dining, every aspect of our stay was designed to promote rejuvenation. The peaceful Zen garden provided a serene space for reflection and contemplation. A truly transformative experience.', 'male', 5000, 4.3, 3.4, 4.8),
(10, 4, 'The Golkonda Hotel', 'The Golkonda Hotel, Banjara Hills, Masab Tank, Hyderabad, Telangana 500082, India', 'Perched high above the city, these suites offer unparalleled views and luxurious accommodations. Our suite was spacious, elegantly furnished, and equipped with modern amenities. The rooftop restaurant served delectable cuisine with panoramic vistas, a dining experience to remember. Perfect for those seeking luxury and sophistication.', 'male', 5000, 4.3, 3.4, 4.8),
(11, 4, 'The Eros Hotel', 'Hyatt Hyderabad Gachibowli, Road Number 2, Financial District, Gachibowli, Hyderabad, Telangana 500032, India', 'Set against a backdrop of majestic mountains, this lodge offers a cozy retreat for outdoor enthusiasts. Our room featured rustic decor and a balcony with breathtaking views of the snow-capped peaks. The complimentary hot chocolate bar was a hit after a day of skiing. Friendly staff made us feel right at home.', 'male', 5000, 4.3, 3.4, 4.8),
(12, 4, 'Hotel Lemon Tree', 'Lemon Tree Premier, HITEC City\r\nAddress: Plot No. 2, Survey No. 64, HITEC City, Madhapur, Hyderabad, Telangana 500081, India', 'From the moment we stepped into the lobby, we were greeted with warmth and hospitality. The elegant decor and attentive service set the tone for a memorable stay. Our room was luxurious and comfortable, offering all the amenities we could ask for. Dining experiences were exceptional, with a variety of gourmet options to choose from. The hotel\'s central location made it convenient for exploring nearby attractions. Highly recommend for a sophisticated urban getaway.', 'male', 5000, 4.3, 3.4, 4.8),
(13, 4, 'Daspalla Hotel', 'Road No. 37, Beside Bharat Petrol Pump, Jubilee Hills, Hyderabad, Telangana 500033, India', 'Surrounded by stunning natural beauty, this hotel provided a serene escape from the chaos of everyday life. The picturesque setting was complemented by the warm and welcoming hospitality of the staff. Our room was a cozy retreat, with rustic decor and modern amenities. Dining options were diverse and delicious, with farm-to-table cuisine served in a charming setting. We especially enjoyed exploring the nearby hiking trails and taking in the breathtaking views. A perfect destination for outdoor enthusiasts and nature lovers alike.', 'male', 5000, 4.3, 3.4, 4.8),
(14, 4, 'Hotel Le Méridien ', 'Windsor Place, New Delhi, Delhi 110001, India', 'This hotel offered a delightful blend of comfort and convenience, with modern amenities and attentive service. The spacious rooms were elegantly furnished, providing a relaxing retreat after a day of exploring the city. Dining options were plentiful, with a variety of restaurants serving delicious cuisine from around the world. The hotel\'s central location made it easy to access nearby attractions and shopping districts. The staff was friendly and accommodating, ensuring that our every need was met with a smile. Overall, a wonderful stay that exceeded our expectations.', 'male', 5000, 4.3, 3.4, 4.8),
(15, 1, 'Hotel ITC Maurya', 'Diplomatic Enclave, Sardar Patel Marg, New Delhi, Delhi 110021, India', 'Tucked away in a quiet corner of the city, this hotel provided a peaceful oasis for relaxation and rejuvenation. The tranquil ambiance was enhanced by the lush greenery surrounding the property. Our room was a cozy haven, with plush furnishings and modern amenities to ensure a comfortable stay. The on-site spa offered a range of indulgent treatments, perfect for unwinding after a day of sightseeing. Dining experiences were delightful, with a variety of culinary delights to tempt the taste buds. Highly recommend for a restful getaway away from the hustle and bustle.', 'male', 5000, 4.3, 3.4, 4.8),
(16, 1, 'The Claridges New Delhi', '12, Dr APJ Abdul Kalam Road, Tees January Road Area, Motilal Nehru Marg Area, New Delhi, Delhi 110011, India', 'Set against the backdrop of a bustling metropolis, this hotel provided a tranquil oasis for relaxation and rejuvenation. The serene ambiance and attentive service made us feel worlds away from the chaos of the city streets. Our room was elegantly appointed, with every modern convenience at our fingertips. Dining experiences were a highlight, with a variety of culinary delights to tempt the palate. We especially enjoyed indulging in a spa treatment, melting away stress and tension with expert care. A truly blissful retreat for the discerning traveler.', 'male', 5000, 4.3, 3.4, 4.8),
(17, 1, 'The Suryaa New Delhi', 'New Friends Colony, New Delhi, Delhi 110025, India', '\r\nSituated in the heart of the city\'s cultural district, this hotel provided a perfect blend of elegance and charm. The historic building was beautifully restored, with ornate architecture and luxurious interiors. Our room exuded old-world glamour, with antique furnishings and plush bedding. The staff\'s hospitality was exceptional, ensuring that every need was met with warmth and efficiency. Dining options were a culinary delight, with a range of gourmet restaurants offering exquisite cuisine. We especially enjoyed the evening entertainment, featuring live music and cultural performances. A truly enchanting stay that left us feeling pampered and rejuvenated.', 'male', 5000, 4.3, 3.4, 4.8),
(18, 1, 'Andaz Delhi - A Concept By Hyatt', 'Asset No.1, Aerocity, New Delhi, Delhi 110037, India', 'Located in the heart of the city\'s vibrant arts district, this hotel offered a stylish retreat with a creative flair. The contemporary design and eclectic decor created an atmosphere of urban chic that was both inviting and inspiring. Our room was a cozy haven, with modern furnishings and artistic touches throughout. The staff\'s attentive service added to the overall sense of comfort, ensuring that every need was anticipated and met with professionalism and care. Dining options were diverse and delicious, with a variety of restaurants serving innovative cuisine from around the world. We especially loved exploring the nearby galleries and theaters, immersing ourselves in the vibrant cultural scene. A truly memorable stay that left us feeling inspired and rejuvenated.', 'male', 5000, 4.3, 3.4, 4.8),
(19, 1, 'The LaLiT New Delhi', 'Barakhamba Avenue, Connaught Place, New Delhi, Delhi 110001, India', 'Tucked away in a picturesque valley, this hotel offered a tranquil retreat amidst pristine natural beauty. The lush surroundings and serene ambiance provided the perfect backdrop for relaxation and rejuvenation. Our room was a cozy sanctuary, with rustic decor and modern amenities. The staff\'s warm hospitality added to the overall sense of comfort, making us feel like cherished guests from the moment we arrived. Dining experiences were a culinary delight, with farm-to-table cuisine served in a charming dining room overlooking the valley. We especially loved exploring the nearby hiking trails and taking in the breathtaking scenery. A truly enchanting stay that left us feeling pampered and refreshed.', 'male', 5000, 4.3, 3.4, 4.8),
(20, 1, 'Pride Plaza Hotel Aerocity', 'Asset 5A, Hospitality District, Aerocity, Indira Gandhi International Airport, New Delhi, Delhi 110037, India', 'Situated amidst lush vineyards and rolling hills, this hotel offered a serene escape in the heart of wine country. The tranquil setting and rustic charm provided the perfect backdrop for relaxation and rejuvenation. Our room was a cozy retreat, with rustic decor and modern amenities. The staff\'s warm hospitality added to the overall sense of comfort, making us feel like cherished guests from the moment we arrived. Dining experiences were a culinary delight, with farm-to-table cuisine served in a charming dining room overlooking the vineyards. We especially loved exploring the nearby wineries and sampling the region\'s finest vintages. A truly enchanting stay that left us feeling pampered and refreshed.', 'male', 5000, 4.3, 3.4, 4.8);

-- --------------------------------------------------------

--
-- Table structure for table `properties_amenities`
--

CREATE TABLE `properties_amenities` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
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
  `property_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `property_id`, `user_name`, `content`) VALUES
(1, 1, 'Akash Mittal ', 'An oasis of luxury awaits at this hotel. Impeccably clean rooms, attentive staff, and a central location make it a top choice.'),
(2, 1, 'Mahendra Singh Dhoni', 'The hotel exudes elegance and sophistication. From the plush bedding to the gourmet dining options, every aspect exceeded our expectations.'),
(3, 2, 'Zoya Akhtar', 'A hidden gem! The charming decor, friendly service, and tranquil atmosphere create the perfect retreat for a relaxing getaway.'),
(4, 2, 'Farhan Akhtar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(5, 2, 'Bhagyesh Gajre', 'Exceptional attention to detail! The hotel\'s amenities, from the state-of-the-art fitness center to the serene spa, ensure a memorable stay'),
(6, 3, 'Karun Nair', 'Outstanding hospitality! From the warm welcome at reception to the personalized touches in our room, every moment felt special'),
(7, 3, 'Meghna Gulzar', 'A true culinary delight! The hotel\'s restaurant offers a tantalizing array of flavors, complemented by impeccable service and elegant ambiance.'),
(8, 4, 'Sharukh Khan', 'A heaven for business travelers! The well-equipped business center, high-speed Wi-Fi, and convenient location near key corporate hubs make it ideal'),
(9, 5, 'Joshua Phillipe', 'Perfect for families! The hotel\'s kid-friendly amenities, such as the pool and play area, ensure a fun and memorable stay for guests of all ages.'),
(10, 5, 'Venkatesh Iyer', 'An unforgettable experience! From the stunning architecture to the thoughtful touches throughout, this hotel sets the standard for excellence.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `phone`, `gender`, `Address`) VALUES
(1, 'anuj.kalbalia@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Anuj Kalbalia', '9535100112', 'male', ''),
(2, 'shadab@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Shadab Alam', '9876543210', 'male', ''),
(3, 'aditya@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Aditya Sood', '9876543210', 'male', ''),
(4, 'radhika@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Radhika Bhatia', '9876543210', 'female', ''),
(5, 'da276355@gmail.com', '216db57359c126406c5eeac8b204a9867b3a45e4', 'Adeesh Singhai', '8955263053', 'male', ''),
(6, 'bhagyeshgajre@gmail.com', '9da99845be9e8a3646f90402b2452afce8db1f40', 'Bhagyesh Gajre', '9288486832', 'male', 'SGSITS INDORE');

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
  ADD KEY `user_id` (`user_id`),
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
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD CONSTRAINT `properties_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
  ADD CONSTRAINT `properties_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
