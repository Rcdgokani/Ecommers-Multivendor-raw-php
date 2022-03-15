-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 11:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_detail`
--

CREATE TABLE `admin_user_detail` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(256) NOT NULL,
  `user_password` varchar(256) NOT NULL,
  `admin_name` varchar(256) NOT NULL,
  `admin_phone.` bigint(20) NOT NULL,
  `admin_country` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_user_detail`
--

INSERT INTO `admin_user_detail` (`user_id`, `user_name`, `user_password`, `admin_name`, `admin_phone.`, `admin_country`) VALUES
(1, 'rushi', 'Rushi', 'Rushi ', 7016031546, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `ban_id` bigint(20) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_detail`
--

CREATE TABLE `category_detail` (
  `cat_id` bigint(20) NOT NULL,
  `cat_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_detail`
--

INSERT INTO `category_detail` (`cat_id`, `cat_name`) VALUES
(1, 'Women'),
(3, 'Kids'),
(4, 'Men');

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

CREATE TABLE `customer_cart` (
  `cart_id` bigint(20) NOT NULL,
  `cust_id` bigint(20) NOT NULL,
  `pr_id` bigint(20) NOT NULL,
  `added_date` datetime NOT NULL,
  `pr_status` tinyint(4) NOT NULL,
  `Total_price` double NOT NULL,
  `pr_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail`
--

CREATE TABLE `customer_detail` (
  `cust_name` varchar(256) NOT NULL,
  `cust_email` varchar(256) NOT NULL,
  `cust_phone` varchar(20) NOT NULL,
  `cust_password` varchar(256) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(256) NOT NULL,
  `cust_state` varchar(256) NOT NULL,
  `cust_country` varchar(256) NOT NULL,
  `cust_zip_code` varchar(32) NOT NULL,
  `cust_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_detail`
--

INSERT INTO `customer_detail` (`cust_name`, `cust_email`, `cust_phone`, `cust_password`, `cust_address`, `cust_city`, `cust_state`, `cust_country`, `cust_zip_code`, `cust_status`) VALUES
('Friend', 'friend@gmail.com', '9408965707', 'Rushi123@#', 'nathakuva street', 'rajkot', 'gujarat', 'India', '336655', 'In-Active'),
('rushi', 'rgoka1ni851@rku.ac.in', '1234567890', 'Rushi123@#', 'nathsnnaosdg', 'Dwarka', 'gujarat', 'india', '1234567', 'Active'),
('rushi', 'rgokan1i851@rku.ac.in', '7016031546', 'Rushi123@#', 'nathsnnaosdg', 'dwarka', 'gujarat', 'India', '1234567', 'Active'),
('rushi', 'rgokani851@rku.ac.in', '7016031546', 'Hentai@000', 'nathsnnaosdg', 'dwarka', 'gujarat', 'India', '1234567', 'Active'),
('rushi', 'rushi@gmail.com', '9408965707', 'Rushi123@', 'nathakuva street', 'rajkot', 'gujarat', 'India', '336655', 'In-Active'),
('rushi', 'rushigokani124@gmail.com', '9408965707', 'Rushigokani124@', 'nathakuva street', 'rajkot', 'gujarat', 'India', '336655', 'In-Active'),
('RUSHI', 'suryaprasadtripathy8@gmail.com', '7016031546', 'Hentai000@', 'fsghsbvjfdvbhsuo', 'fdjk', 'jdvbs', 'sskdvbshk', '59556', ''),
('Rushi', 'dummyitem123@gmail.com', '7016031546', 'Rushi123@#', '\"SAI SWARG\"\r\nNATHAKUVA SYREET\r\nB/h. Hotel Radha Madhav\r\nNear Aavkar Hair art\r\nDwarka', 'Dwraka', 'GUJARAT', 'India', '361335', ''),
('Rushi', 'fjsdkv@gmail.com', '7016031546', 'Rushi123@#', '\"SAI SWARG\"\r\nNATHAKUVA SYREET\r\nB/h. Hotel Radha Madhav\r\nNear Aavkar Hair art\r\nDwarka', 'Dwraka', 'GUJARAT', 'India', '361335', 'In-Active'),
('Rushi', 'fjsdkv@gmail.com', '7016031546', 'Rushi123@#', '\"SAI SWARG\"\r\nNATHAKUVA SYREET\r\nB/h. Hotel Radha Madhav\r\nNear Aavkar Hair art\r\nDwarka', 'Dwraka', 'GUJARAT', 'India', '361335', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `ord_id` bigint(20) NOT NULL,
  `cust_id` bigint(20) NOT NULL,
  `pr_id` bigint(20) NOT NULL,
  `added_date` datetime NOT NULL,
  `ord_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `pr_id` bigint(20) NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `main_id` bigint(20) NOT NULL,
  `sub_cat_id` bigint(20) NOT NULL,
  `pr_name` varchar(256) NOT NULL,
  `pr_price` bigint(20) NOT NULL,
  `pr_image` varchar(256) NOT NULL,
  `pr_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`pr_id`, `cat_id`, `main_id`, `sub_cat_id`, `pr_name`, `pr_price`, `pr_image`, `pr_details`) VALUES
(20, 0, 1, 0, 'WMNS Long Sleeve Maxi Dress - Floral Print', 780, '6095038601d0254c60c7.jpg', 'This long sleeve maxi floral dress will give you the look of glamour that you are looking for. Individuals that are looking for something that is soft and elegant then this is the dress for you. It will stop just below your ankle. It will appear to be form fitting and it seems to flare out below the waist, as it makes its way to your knees. The dress has long sleeve and you will also notice that there are very soft colored flowers on the dress. This is a great way to break up the clean white look of the dress. Find a thin white sweater that you can pair with this dress on cool evenings.'),
(21, 0, 1, 0, 'U.S. POLO ASSN. Short Sleeve Cotton Linen Shirt', 9000, '1 (3)601d033f37a52.jpg', 'Composition and care 35% Cotton, 65% Linen Machine wash Specs Spread collar Short sleeves Full button placket Chest patch pocket Curved hem Regular fit The model is 6ft1in tall and is wearing a size M'),
(22, 0, 1, 0, 'Fayon Kids Chanderi Embroidered Lehenga Set', 2000, '1601d03a74408b.jpg', 'Pink lehenga with floral embroidered motifs & side tassel detail. Paired with blouse & dupatta. Components: 3 Fabric: Chanderi, Cotton, Net Neckline: Round Sleeve Length: Short Color: Green, Pink Embroidered Ruffle sleeves Embroidered dupatta'),
(23, 0, 1, 0, 'Brocade Kurta & Dhoti Pant Set', 6700, 'fk1574-0994514001602233869601d040b4a023.jpg', 'Green kurta with floral motifs & placement embroidered detail. Paired with dhoti pant. Components: 2 Fabric: Brocade, Cotton Silk, Shantoon Neckline: Mandarin Sleeve Length: Full Color: Green Welt pocket'),
(25, 0, 2, 0, 'Vintage Midi Dress - Red Plaid / Full Length Sleeves / Bow Belted', 1200, '5460180601d053449826.jpg', 'Our vintage style winter dress is a popular choice among women of all body types. The nice, full skirt portion of the dress is capable of hiding all kinds of figure flaws, while providing a soft, comfortable fit. The bodice is a snug fit and has a relatively high, rounded neckline. The sleeves are long and close fitting. They do not have cuffs. The waistline is defined by a matching fabric belt that ties into a decorative bow on one side. The skirt portion of the dress is nice and full to provide a comfortable and wide range of motion. The hemline ends well below the knees at the mid thigh area of the leg.'),
(26, 0, 2, 0, 'Men White Button-Down Collar Solid Oxford Shirt', 1200, '1 (1)601d06e644f86.jpg', 'Composition and care Cotton blend Machine wash Specs Button-down collar Chest patch pocket Full button placket Long sleeves with rounded cuffs Curved hem Solid Country Of Origin - India'),
(27, 0, 2, 0, 'Silk Bundi & Embroidered Kurta Set', 999, '132601d0754f08a5.JPG', 'Green kurta with embroidered motifs on hem and collar. Comes with pant and bundi. Component: 3 Embroidery Neckine: Kurta: Band collar; Bundi: Round Sleeve Length: Kurta: Full; Bundi: Sleeveless Fabric: Pant: 100% Cotton; Bundi & Kurta: Silk blend Color: Green Closure: Bundi: Front button placket Kurta: Front button placket Pant: Elasticated waist '),
(28, 0, 2, 0, 'Men Blue Drawstring Hood Logo Sweatshirt', 980, '233601d07b4ce484.jpg', 'Composition and care 100% Cotton Machine Wash Specs Attached drawstring hood Long sleeves with ribbed hems Two waist pockets Ribbed hemline Appliqued and printed logo at front Country Of Origin - India The model is 6ft2in tall and is wearing a size M'),
(30, 0, 3, 0, 'Women Black & Pink Printed Wrap Dress', 2000, '1601d095c3b25a.jpg', 'Black and pink printed woven wrap dress with tie-up detail, has a v-neck, three-quarter sleeves, concealed zip closure, an attached lining, and flared hem'),
(31, 0, 3, 0, 'Men Navy Perforated Stylized Bomber Jacket', 1000, 'new601d0a1402b14.jpg', 'Composition and care Body: 100% Viscose Trim: 100% Polyester Professional wash Specs Stand collar Full zip up front Textured long sleeves with elbow patches and ribbed hems Two pockets Elasticized front hem and ribbed back hem Fully lined Perforated The model is 6ft1in tall and is wearing a size S'),
(32, 0, 3, 0, 'Embroidered Lehenga Set', 5000, '4601d0a752dd6f.jpg', 'Red lehenga with embroidered floral motifs and sequin motifs. Comes with top. Component: 1 Embroidery Neckine: Round Sleeve Length: Sleeveless Color: Red Fabric: Silk, Chanderi, Mul Mul Scallop hem on lehenga Sequin embroidered motifs on top Pleated detail on neckline & sleeve hems'),
(33, 1, 0, 0, 'Vintage Midi Dress - Red Plaid / Full Length Sleeves / Bow Belted', 1200, '5460180601d0ae42141c.jpg', 'Our vintage style winter dress is a popular choice among women of all body types. The nice, full skirt portion of the dress is capable of hiding all kinds of figure flaws, while providing a soft, comfortable fit. The bodice is a snug fit and has a relatively high, rounded neckline. The sleeves are long and close fitting. They do not have cuffs. The waistline is defined by a matching fabric belt that ties into a decorative bow on one side. The skirt portion of the dress is nice and full to provide a comfortable and wide range of motion. The hemline ends well below the knees at the mid thigh area of the leg.'),
(34, 1, 0, 0, 'WMNS LONG SLEEVE MAXI DRESS - FLORAL PRINT', 780, '6095038601d0b0d2e42f.jpg', 'This long sleeve maxi floral dress will give you the look of glamour that you are looking for. Individuals that are looking for something that is soft and elegant then this is the dress for you. It will stop just below your ankle. It will appear to be form fitting and it seems to flare out below the waist, as it makes its way to your knees. The dress has long sleeve and you will also notice that there are very soft colored flowers on the dress. This is a great way to break up the clean white look of the dress. Find a thin white sweater that you can pair with this dress on cool evenings.'),
(35, 1, 0, 0, 'WOMEN BLACK & PINK PRINTED WRAP DRESS', 2000, '1601d0b59a53a4.jpg', 'Black and pink printed woven wrap dress with tie-up detail, has a v-neck, three-quarter sleeves, concealed zip closure, an attached lining, and flared hem'),
(36, 1, 0, 0, 'Long Floral Printed Long Sleeve Maxi Dress', 3400, '2601d0ba6533c2.jpg', 'This dress is for the woman who is a little modest and doesn’t want to show off her body. It’s a long sleeved, floral print evening dress. It comes in different main colors: pink, green, white, black and navy blue and six sizes: S, M, L, XL, XXL and XXXL. A great dress to wear for an evening out, lunch date with someone, going to work and a cute alternative to jeans and a shirt while running errands. A straw hat and flat sandals are the perfect accessories to this colorful dress. How about getting one in every color? Be bold!'),
(38, 1, 0, 0, 'Plus Size Midi Dress - Three Quarter Sleeves / Black / Teal', 3000, '3665251601d0cc5de571.jpg', 'If you are a plus size woman who is looking for a great “black teal midi dress” for those spring and summer cocktail parties, this one with three quarter sleeves is the dress for you! It comes in black bodice, teal skirt and was fashioned from a silk-like, soft, high quality cotton blend fabric. This is a collarless dress that has a high, simple neckline. The sleeves are relatively close-fitting, and short. The overall cut of this dress is loose and roomy, providing a comfortable fit. The asymmetrical hemline add some nice visual interest as it flatters the figure. In front, the hemline ends approximately 8″ above the knees. In back, it ends at the upper calf. The dress closes in back with a long, concealed zipper.'),
(40, 1, 0, 0, 'Women Tunic  - Scooped Neckline / Striped Sleeves', 2000, 'new1601d0f2c51036.jpg', 'This womens tunic-length top looks fantastic on virtually any body type. Its longer length gives the illusion of an elongated torso, and causes the wearer to appear taller and more slender. It is made from our best quality cotton blend fabric, and comes in four great color combinations. The tunic features a scooped neckline that has been double reinforced with stitching to help it retain its original shape. It also features uniquely striped sleeves. Ribbed knit trim appears at the ends of the sleeves. The hemline is rounded and has small slits on each side. The top is available for purchase in your choice of deep red, classic black, fern green or teal blue. Pair it with jeans and hit the town!'),
(41, 1, 0, 0, 'Womens Long Sleeve Maxi Dress - Floral Print', 3400, '3270302601d0faa465cc.jpg', 'When the days are cold you certainly want to wear something light. This black and blue long sleeve maxi dress will make a statement and give you the ability to look simply amazing without drawing to much attention to yourself. The dress is long sleeve and it will have a rounded collar. The soft pleats that are found in the skirt will help it move with you when you walk. You are going to see a number of different flowers on this dress. It is going to have a few different shades of blue as well as white. Those that are thin will love the fact that this dress is going to be able to help accentuate their mid section. It is also a wonderful way to show off your legs and smooth skin.'),
(42, 1, 0, 0, 'Womens Loose Fitting Blouse - Bell Sleeves / Mesh Inserts', 4000, 'images601d102f701af.jpg', 'Take your casual look up a notch in this beautifully-designed women’s loose fitting blouse. It comes with three quarter length bell sleeves, which have mesh inserts encircling the bottom halves. The blouse has a deeply-plunging vee neckline and a loose fit through the torso. The longer hemline provides a figure flattering look by causing the torso to look longer than it actually is. This makes the wearer look more slender. The hemline ends at the lowermost line of the hips. This blouse is made from our linen-like cotton blend fabric and is available for purchase in four outrageously gorgeous colors! Select the one you prefer from magenta, white, pale blue, red or pale pink. You are going to flip when you see how great this blouse is!'),
(43, 1, 0, 0, 'WMNS Floor Length Maxi Dress - Cuffed Long Sleeve ', 3400, '7390123601d106f938fe.jpg', 'There is something special when a garment has a combination of various look used to create a new and exciting one. This dress is an item which has this special designer magic. The top has a design of a button up style top. The front panels have been given breast pockets. The button closure of the top extends all the way the full length of the dress to the hemline. The top has a pointed style collar. The long sleeves have a tolled cuff design. The skirt has been attached at the natural waistline level. This is a full skirt which has been attached in a gather style. This skirt has an A frame style cut. This skirt extends down to the floor level. This is a skirt which sweeps the floor as you walk. The coloring given to the fabric of this dress is quite fetching and eye catching.'),
(44, 1, 0, 0, 'Womens Long Cable Knit Sweater - Open Front', 3000, '5200034601d1099d6116.jpg', 'For a look that keeps on giving, please consider this wonderful women’s long, cable knit sweater. It features long, roomy sleeves that have flattering ribbed knit cuffs. Ribbed knitting also appears around the hemline of this sweater. The hemline ends at the mid thigh. This sweater features machine cable knitting that helps keep the warmth in during the coldest months of the year. It is made from our finest acrylic blend yarn, and is very easy to maintain. You will adore its softness, and will want to wear it every day. The sweater is available for purchase in your choice of five wonderful colors. Select the one you like best from winter white, butterscotch, pale gray, classic black or fern green. Pair it with anything from your casual wardrobe for an outstanding look that everyone will love seeing you wear!'),
(45, 1, 0, 0, 'Womens Button Front Cardigan - Long Sleeves', 3000, '5965208601d111895f2e.jpg', 'This womens button front, lightweight cardigan has what it takes to tie an outfit together with a pop of color. It is made from our best quality cotton acrylic blend fabric and provides a close, stretchy fit. The cardi has long sleeves that have ribbed knit trim at the cuffs. A single row of close-set, contrasting snap-buttons appears along one side of the front opening. While the sweater is intended to be worn open and loose, it can be snapped closed, if desired. The sweater is made from our finest cotton blend fabric, which contains a small percentage of Elastane for a comfortable stretch. This sweater is available for purchase in your choice of six great colors. Select your favorite from classic black, maroon, teal, white, red, or pistachio green. You all love the way you look in this great looking sweater!'),
(46, 1, 0, 0, 'Womens Straight Seamed Wool Vest', 3400, '5495016601d116f487a3.jpg', 'There are some days when the weather simply requires you to wear a vest. On these days you will want to have this one at the ready in your closet. This one is made of a high quality wool material. This is material which has a great and traditional look. It’s also a material which feels very soft. It will keep you warm and cozy when you are wearing it. The collar has a high design. This design also works to help keep you warm. The front has a long zipper closure. The side seams are straight and offers a dropped hemline. This hem comes to the upper thigh area. Slated and trimmed pockets have been added at the hip area. You can wear this vest with pain long sleeve shirts or turtlenecks. This vest will make these types of shirts look great.'),
(47, 2, 0, 0, 'U.S. POLO ASSN. SHORT SLEEVE COTTON LINEN ', 9000, '1 (3)601d124735b2f.jpg', 'Composition and care 35% Cotton, 65% Linen Machine wash Specs Spread collar Short sleeves Full button placket Chest patch pocket Curved hem Regular fit The model is 6ft1in tall and is wearing a size M'),
(48, 2, 0, 0, 'MEN WHITE BUTTON-DOWN COLLAR SOLID OXFORD', 1200, '1 (1)601d128dd1b3c.jpg', 'Composition and care Cotton blend Machine wash Specs Button-down collar Chest patch pocket Full button placket Long sleeves with rounded cuffs Curved hem Solid Country Of Origin - India'),
(49, 2, 0, 0, 'MEN BLUE DRAWSTRING HOOD LOGO SWEATSHIRT', 980, '233601d12c03383b.jpg', 'Composition and care 100% Cotton Machine Wash Specs Attached drawstring hood Long sleeves with ribbed hems Two waist pockets Ribbed hemline Appliqued and printed logo at front Country Of Origin - India The model is 6ft2in tall and is wearing a size M'),
(50, 2, 0, 0, 'MEN NAVY PERFORATED STYLIZED BOMBER JACKET', 1000, 'new601d1372dbdce.jpg', 'Composition and care Body: 100% Viscose Trim: 100% Polyester Professional wash Specs Stand collar Full zip up front Textured long sleeves with elbow patches and ribbed hems Two pockets Elasticized front hem and ribbed back hem Fully lined Perforated The model is 6ft1in tall and is wearing a size S'),
(51, 2, 0, 0, 'Grey Toucan Print Cotton Polo Shirt', 3400, '3443601d143e99b40.jpg', 'Composition and care 100% Cotton Machine wash Specs Ribbed polo collar Short button placket Short sleeves with ribbed hems Uneven vented hem Printed Regular fit The model is 6ft2in tall and is wearing a size M'),
(52, 2, 0, 0, 'White Floral Print Cotton Shirt', 1200, '321601d148dcbaa9.jpg', 'Composition and care 100% Cotton Machine wash Manufacturer / Importer Details : Punit Creation, Sy#42 ,Near Macaulay English School, Bengaluru, Karnataka, India, 560068 Specs Spread collar Chest patch pocket Short sleeves Printed Brand fit: Tailored fit Fit Mapping: Regular fit'),
(53, 2, 0, 0, 'Men Off White Crew Neck Brand Print Sweater', 3400, '4332601d15228e46a.jpg', 'Composition and care 100% Cotton Machine Wash Specs Crew neck Long sleeves Ribbed neck, sleeve hems and hemline Brand print at front Country Of Origin - India The model is 6ft tall and is wearing a size M'),
(54, 2, 0, 0, 'Men Blue Check Cotton Stretch Shirt', 1200, '3443332601d15578aa53.jpg', 'Composition and care 95% Cotton, 5% Spandex Machine wash Specs Button-down collar Long sleeves with barrel cuffs Checked Slim fit The model is 6ft3in tall and is wearing a size M'),
(55, 2, 0, 0, 'Men Blue Slim Fit Button Down Shirt', 2000, '235601d160154a78.jpg', 'Composition and care 97% Cotton, 3% Spandex Machine wash Specs Button-down collar Long sleeves with barrel cuffs Full button placket Curved hem Checked Slim fit The model is 6ft1in tall and is wearing a size M'),
(56, 2, 0, 0, 'Men Blue Crew Neck Brand Print T-Shirt', 1200, '3252601d16cfe3548.jpg', 'Composition and care Cotton-blend Machine wash Specs Ribbed crew neck Short sleeves Printed branding at front'),
(57, 2, 0, 0, 'Men Blue Slim Fit Western Shirt In Denim', 3200, '566601d17218a0ce.jpg', 'Composition and care 100% Cotton Machine wash Specs Premium 1969 denim Medium indigo wash Long sleeves, snap-button cuffs Spread collar, button front Snap-flap patch pockets at chest Curved shirttail Tailored, slim fit Hits at the hip Made to be worn tucked or untucked The model is 6ft3in tall and is wearing a size M'),
(58, 2, 0, 0, 'Men Blue Denim Shirt', 2300, '980601d17a627013.jpg', 'Composition and care 100% Cotton Machine wash Specs Spread collar Striped at chest Long sleeves with barrel cuffs Full button placket Washed Curved hemline The model is 6ft3in tall and is wearing a size M'),
(59, 3, 0, 0, 'FAYON KIDS CHANDERI EMBROIDERED LEHENGA ', 1200, '1601d17e4e762b.jpg', 'Pink lehenga with floral embroidered motifs & side tassel detail. Paired with blouse & dupatta. Components: 3 Fabric: Chanderi, Cotton, Net Neckline: Round Sleeve Length: Short Color: Green, Pink Embroidered Ruffle sleeves Embroidered dupatta'),
(60, 3, 0, 0, 'BROCADE KURTA & DHOTI PANT SET', 6700, 'fk1574-0994514001602233869601d18a119b71.jpg', 'Green kurta with floral motifs & placement embroidered detail. Paired with dhoti pant. Components: 2 Fabric: Brocade, Cotton Silk, Shantoon Neckline: Mandarin Sleeve Length: Full Color: Green Welt pocket'),
(61, 3, 0, 0, 'SILK BUNDI & EMBROIDERED KURTA SET', 999, '2601d18c66b613.jpg', 'Green kurta with embroidered motifs on hem and collar. Comes with pant and bundi. Component: 3 Embroidery Neckine: Kurta: Band collar; Bundi: Round Sleeve Length: Kurta: Full; Bundi: Sleeveless Fabric: Pant: 100% Cotton; Bundi & Kurta: Silk blend Color: Green Closure: Bundi: Front button placket Kurta: Front button placket Pant: Elasticated waist'),
(62, 3, 0, 0, 'EMBROIDERED LEHENGA SET', 5000, '4601d18ece99a3.jpg', 'Red lehenga with embroidered floral motifs and sequin motifs. Comes with top. Component: 1 Embroidery Neckine: Round Sleeve Length: Sleeveless Color: Red Fabric: Silk, Chanderi, Mul Mul Scallop hem on lehenga Sequin embroidered motifs on top Pleated detail on neckline & sleeve hems'),
(63, 3, 0, 0, 'Bandhani Kurta Set', 2750, '3601d1948b6f9e.jpg', 'Orange kurta with Bandhani print & embroidered detail. Paired with patiala. Component: 2 Printed Neckine: Mandarin Sleeve Length: Full Fabric: Cotton, Cotton Silk Color: Orange Bandhani motifs'),
(64, 3, 0, 0, 'Velvet Embroidered Kurta ', 14000, '5601d19d530a7a.jpg', 'Aqua long kurta with placement mirror work & bead embellishments. Comes with floral motif jaal print pants. Components: 2 Fabric: Velvet; Lining: Voile, Cotton Silk Neckline: Round Sleeve Length: Three Quarter Color: Green Embroidered Split neck'),
(65, 3, 0, 0, 'Embroidered Lehenga Set', 2300, 'nk20e-19-0125884001608355739601d1a8c7b193.jpg', 'Peach lehenga with side tassel detail & frill detail. Paired with mirror work embroidered halter blouse & dupatta. Component: 3 Embroidered Neckine: Halter Sleeve Length: Sleeveless Fabric: Sequins Fabric, Cotton Color: Peach Back tie-up Note: Potli shown in the image is not for sale'),
(66, 3, 0, 0, 'Checkered Kurta & Dhoti Pant Set', 1200, 'lp-boys-kdh-140-0814266001609772221601d1add40654.jpg', 'Orange kurta with checkered motifs. Paired with checkered dhoti pant. Components:2 Neckline:Mandarin Sleeve Length:Full Fabric:Cotton Color:Orange Note: Brooch worn by the model is not for sale'),
(67, 3, 0, 0, 'Bhuri Kali Naavya Chogha & Kurta ', 3400, 'bchpn36-0977348001611152623601d1b1dd1011.jpg', 'White front-open long jacket with all-over floral motifs, lace trim border & flared sleeves. Comes with handwoven linen short kurta & panel detail pants. Components:3 Printed, Embroidered Neckline:Kurta: Round Sleeve Length:Jacket: Long Fabric:Jacket & Pants: Silk Organza; Kurta & Pants: Handwoven Linen Color:White, Red Front open Side slits Split neck Scallop hem Panel pants Flared sleeves'),
(68, 3, 0, 0, 'Striped One Shoulder Playsuit', 999, 'mk1150-0228440001610712922601d1b5f2650c.jpg', 'Yellow one shoulder playsuit with ruffle overlay & contrast stripes. Component: 1 Printed Neckine: Asymmetric Sleeve Length: Asymmetric Fabric: Cotton Color: Yellow Tie-up detail Side pockets'),
(69, 3, 0, 0, 'Printed Dress', 1300, 'lp-girls-drs-165-0813764001609814878601d1b9b012e0.jpg', 'Off white dress with printed motifs, lace border & front tie-up. Component: 1 Printed Neckine: Notched Sleeve Length: Short Fabric: Cotton Color: White Flared sleeves'),
(70, 3, 0, 0, 'Embroidered Kurta Set', 2750, 'tt2011051-0447055001612263569601d1bf21ccb9.jpg', 'Maroon kurta with embroidered bodice. Paired with churidar. Components:2 Embroidered Neckline:Mandarin Sleeve Length:Full Fabric:Vicose Silk, Cotton Color:Maroon Cotton churidar');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`id`, `email`) VALUES
(1, 'ajay.suneja25@gmail.com'),
(2, 'tutorialspoint2016@gmaoil.com');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `sl_id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `collection` varchar(256) NOT NULL,
  `Image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`sl_id`, `name`, `collection`, `Image`) VALUES
(41, 'Mens Wears', 'Collection 2021', 'unnamed601ce4f6a7eec.jpg'),
(42, 'Womens Wear', 'Collection 2021', 'Bannerhomepage1601ce519ae5ac.jpg'),
(43, 'Kids Wear', 'Collection 2021', 'banner_ctg_39601ce53a0fc6c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_detail`
--

CREATE TABLE `sub_category_detail` (
  `sub_cat_id` bigint(20) NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `sub_cat_name` varchar(256) NOT NULL,
  `sub_cat_alias` varchar(256) NOT NULL,
  `sub_cat_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `t_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `token` varchar(256) NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `Email`, `t_time`, `token`, `otp`) VALUES
(9, 'rgokani851@rku.ac.in', '2021-02-05 07:19:35', '8dc97a86d5f21d8489b2aa3dcf9cfbb76ac1ea7e9f1d0a2090f7a03be12eb351c6a96f02ca60f9f55fa9630975863578204ead22f3967cc0717eef0e0a0d6a50', 597016);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user_detail`
--
ALTER TABLE `admin_user_detail`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `category_detail`
--
ALTER TABLE `category_detail`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_cart`
--
ALTER TABLE `customer_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `ban_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_detail`
--
ALTER TABLE `category_detail`
  MODIFY `cat_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `pr_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `sl_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
