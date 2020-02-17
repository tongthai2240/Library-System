SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libery`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_infos`
--

CREATE TABLE `book_infos` (
  `BookNo` int(11) NOT NULL,
  `BookName` varchar(100) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book_infos`
--

INSERT INTO `book_infos` (`BookNo`, `BookName`, `Author`, `Description`) VALUES
(1001, 'พัฒนา Web Apps ด้วย React Bootstrap + Redux', 'ศุภชัย สมพานิช', 'เรียนรู้การสร้างส่วนแสดงผลด้วย React อธิบายเป็นขั้นตอน Step By Step มีตัวอย่างประกอบให้เห็นผลชัดเจน หลักการทำงาน Redux และ Context API วิธีใช้งานระบบฐานข้อมูล SQL Server 2019'),
(1002, 'คู่มือเขียนโปรแกรมภาษา Python ฉบับปรับปรุง', 'ณัฐวัตร คำภักดี', 'Python เบื้องต้นโดยใช้ Jupyter Notebook, เขียนโปรแกรม Graphical User Interface (GUI), Object-Oriented Programming (OOP), เชื่อมต่อฐานข้อมูล MariaDB, Django Web Framework'),
(1003, 'คู่มือพัฒนาเว็บแอพพลิเคชั่นด้วย Angular', 'ศุภชัย สมพานิช', 'ใช้ร่วมกับ Ionic Framework สร้างเว็บแอพแบบ Responsive ด้วย Bootstrap ครอบคลุม Angular เวอร์ชั่น 8 และ 9 เป็นต้นไป เหมาะสำหรับนักเรียน นักศึกษา นักพัฒนาโปรแกรม และผู้สนใจทั่วไป'),
(1004, 'Artificial Intelligence with Machine Learning', 'รศ.ดร. ปริญญา สงวนสัตย์', 'เรียนอัลกอริทึมของ Machine Learning เพื่อสร้างสมองอันทรงพลังให้กับงานด้าน AI, Data Mining, Pattern Recognition, Computer Vision และงานสาขาอื่นที่เกี่ยวข้อง'),
(1005, 'พัฒนาเว็บแอพพลิเคชันด้วย Node.js Express+MongoDB', 'จีราวุธ วารินทร์', 'เรียนรู้การสร้างเว็บแอพพลิเคชันด้วย Node.js+Express และวิธีจัดการฐานข้อมูล MongoDB อธิบายพื้นฐานการใช้งาน Node.js ครบทุกเรื่องที่จำเป็น เรียนรู้เกี่ยวกับโมดูล พร้อมตัวอย่างการใช้งานโมดูลยอดนิยม ฯลฯ'),
(1006, 'พัฒนา IOT บนแพลตฟอร์ม Arduino ด้วย NodeMCU', 'ภาสกร พาเจริญ', 'IOT เบื้องต้น, เตรียมอุปกรณ์ และโปรแกรมให้พร้อม, การทดสอบ และอัพโหลดโปรแกรม, ขาอินพุต/เอาต์พุต GPIO, การเชื่อมต่อ ADC, Pulse Width Modulation (PWM), การรับส่งข้อมูลระหว่างอุปกรณ์ ฯลฯ'),
(1007, 'คู่มือเขียนโปรแกรมด้วยภาษา C ฉบับสมบูรณ์', 'อรพิน ประวัติบริสุทธิ์', 'คู่มือเขียนโปรแกรมด้วยภาษา C ฉบับสมบูรณ์\r\nเรียนรู้การเขียนโปรแกรมภาษา C เพื่อต่อยอดสู่ Objective-C, C#, C++, PHP, Java'),
(1008, 'คณิตศาสตร์วิศวกรรมไฟฟ้า', 'ศ.กิตติคุณ มงคล เดชนครินทร์', 'หนังสือโครงการตำราภาควิชาวิศวกรรมไฟฟ้าเพื่อเป็นเสาหลักเเห่งปัญญา คณะวิศวกรรมศาสตร์ จุฬาลงกรณ์มหาวิทยาลัย'),
(1009, 'สัญญาณ ระบบ และการควบคุม', 'วัชรพงษ์ โขวิฑูรกิจ', 'หนังสือเล่มนี้เหมาะสำหรับนิสิตนักศึกษา วิศวกร และผู้ที่สนใจศึกษาเกี่ยวกับสัญญาณ ระบบ และการควบคุม ซึ่งเป็นพื้นฐานสำคัญในด้านวิศวกรรมไฟฟ้าและศาสตร์อื่น ๆ ที่เกี่ยวข้อง\r\n'),
(1010, 'การวิเคราะห์โครงสร้าง', 'ผศ.ดร. ณัฐพงศ์ ดำรงวิริยะนุภาพ', 'หนังสื่อเล่มนี้มีวัตถุประสงค์เพื่อเสริมสร้างความเข้าใจในพื้นฐานของการวิเคาระห์โครงสร้างและพฤติกรรมของโครงสร้างภายใต้น้ำหนักบรรทุก ซึ่งจะเป็นการวิเคราะห์โครงสร้างดีเทอร์มิเนททางสถิตโดยวิธีต่างๆ');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `BorrowID` int(11) NOT NULL,
  `BorrowDate` date NOT NULL,
  `BookID` int(11) NOT NULL,
  `StudentCode` int(11) NOT NULL,
  `ReturnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`BorrowID`, `BorrowDate`, `BookID`, `StudentCode`, `ReturnDate`) VALUES
(1, '2020-02-29', 1006, 2240, '2020-03-01'),
(2, '2020-02-15', 1002, 2340, NULL),
(3, '2020-02-27', 1001, 3340, NULL),
(4, '2020-02-19', 1010, 4427, '2020-02-20'),
(5, '2020-02-21', 1008, 4428, '2020-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentCode` char(10) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `BirthDate` date NOT NULL,
  `Age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentCode`, `StudentName`, `Department`, `BirthDate`, `Age`) VALUES
('2240', 'A', 'CPE', '1999-01-05', 21),
('2340', 'B', 'CPE', '1999-10-15', 20),
('2440', 'C', 'CPE', '1998-06-05', 20),
('2540', 'D', 'CPE', '1999-10-14', 20),
('2640', 'F', 'CPE', '1999-09-09', 19),
('4427', 'G', 'EE', '1999-05-21', 20),
('4428', 'H', 'EE', '1999-02-23', 20),
('4429', 'I', 'EE', '1999-08-12', 20),
('3340', 'J', 'EE', '1999-11-04', 19),
('3341', 'K', 'EE', '1999-11-14', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_infos`
--
ALTER TABLE `book_infos`
  ADD PRIMARY KEY (`BookNo`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`BorrowID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_infos`
--
ALTER TABLE `book_infos`
  MODIFY `BookNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
