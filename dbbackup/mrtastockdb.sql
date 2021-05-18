-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2021 at 01:51 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itgecoth_stockdbft`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(7) NOT NULL,
  `empid` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `cizid` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `imei` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `passcode` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `prename` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salary` decimal(7,2) NOT NULL,
  `birthdate` date NOT NULL,
  `avatar` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `empid`, `cizid`, `imei`, `passcode`, `prename`, `firstname`, `lastname`, `email`, `password`, `tel`, `address`, `gender`, `position`, `department`, `salary`, `birthdate`, `avatar`, `status`) VALUES
(1, '5601234', '3243439230654', '0245958746', '785496', 'นาย', 'พงษ์สิทธิ์', 'อินคา', 'pongsit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '08956487953', '20/2 moo.2 bangsue bangkok 10300', 'ชาย', 'พนักงานระบบงานคอมพิวเตอร์ 7', 'ฝ่ายปฎิบัติการเทคโนโลยีสารสนเทศน์', '28500.00', '1982-02-15', 'https://images.megapixl.com/4707/47075236.jpg', 1),
(2, '5601965', '7127225663620', '4587965289', '632548', 'นางสาว', 'วารุณี', 'ศรีสุข', 'warunee@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0898398928233', '366 moo.6 ladprao bangkok 10200', 'หญิง', 'พนักงานฝ่ายจัดสินเชื่อ', 'สินเชื่อและการขาย', '23500.00', '1988-06-10', 'https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg', 1),
(3, '7777777', '3770400404433', '956895487', '256986', 'นาย', 'สามิตร', 'โกยม', 'samit@gmail.com', '96e79218965eb72c92a549dd5a330112', '089389038033', '3/25 บางใหญ่ นนทบุรี 10250', 'ชาย', 'เจ้าหน้าที่ปฎิบัติการ', 'ไอที', '28000.00', '2020-09-08', 'https://www.itgenius.co.th/backend/assets/images/user_avatar/gsb8hg5j5qyh98fefujthj3kct4uteqz.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(5) NOT NULL,
  `topic` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `imageurl` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkurl` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `topic`, `detail`, `imageurl`, `linkurl`, `created_at`, `status`) VALUES
(1, 'DJI Osmo Pocket กล้องจิ๋วกันสั่นสเปคเทพ', 'โดยเจ้ากล้องรุ่นนี้ คือ DJI Osmo Pocket ที่มีขนาดเล็กจนน่าตกใจ แต่สเปคเทพสุดๆ มาพร้อมกันสั่นแบบ 3 แกน ให้ภาพที่นิ่งไม่สั่นไหว คุณภาพความคมชัด 4K เซนเซอร์รับภาพขนาด 1/ 2.3 นิ้ว F/2.0 ให้ภาพมุมกว้าง 80 องศา ตั้งค่าแบบ Manual ได้ ถ่ายไฟล์ RAW ได้ เหมาะแก่การพกพา แบตเตอรี่ใช้งานได้นานสูงสุดถึง 2 ชั่วโมง 20 นาที มีจอแสดงผลแบบทัชสกรีน ที่สำคัญราคา 13,500 บาท เท่านั้น งานนี้ Gopro Hero 7 Black มีหนาวๆ ร้อนๆ เลยทีเดียว แต่มันเอาลงน้ำไม่ได้นะ ต้องหาอุปกรณ์เสริมมาใช้ แล้วถ้าจะต่อไมค์ต้องหาซื้ออแดปเตอร์มาใช้เพิ่มด้วยเช่นกัน..สงสัยว่าจะต้องซื้ออุปกรณ์เสริมอีกหลายอย่างกันเลยทีเดียว', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/genius-41614494834724466.jpg', 'https://bit.ly/34NHTpP', '2020-09-22 09:26:57', 1),
(2, 'ผูกบัตรเครดิตกับแอปฯ ระวังเงินหายไม่รู้ตัว', 'ผูกบัตรเครดิตกับแอปฯ ระวังเงินหายไม่รู้ตัว\r\nเดี๋ยวนี้จะทำอะไร จะซื้ออะไรก็ง่ายไปหมด ไม่ว่าจะเป็นการจ่ายเงินค่าโทรศัพท์​ ซื้อของออนไลน์ จ่ายเงินค่าสตรีมมิ่งออนไลน์ต่างๆ แต่อย่าลืมว่าง่ายเราก็ง่ายเขาได้เหมือนกัน สิ่งที่ตามมานั่นคือบางครั้งเราอาจโดนเอาเปรียบแบบไม่รู้ตัว หรือข้อมูลส่วนตัวของเราถูกนำไปใช้โดยที่เราไม่ยินยอม', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/1-4-2563%2013-15-05-ik26svswveev.jpg', 'https://bit.ly/34NHTpP', '2020-09-22 11:13:06', 1),
(3, 'เปิดตัวแล้ว Intel Core รุ่นที่ 11 (Tiger Lake) สุดยอดเทคโนโลยี เพื่อ Notebook รุ่นบางเบา', 'เปิดตัวแล้ว Intel Core รุ่นที่ 11 (Tiger Lake) สุดยอดเทคโนโลยี เพื่อ Notebook รุ่นบางเบา\r\nเรียกได้ว่าไม่ปล่อยให้คู่แข่งได้ตั้งตัวกันเลยทีเดียว สำหรับ Intel ได้เผยโฉมขุมพลังรุ่นใหม่ Intel Core รุ่นที่ 11 ที่มีสถาปัตยกรรมขนาด 10 นาโนเมตร แต่มีชื่อการพัฒนาว่า Tiger Lake เสือน้อยตัวนี้มีดีหลายจุดและสิ่งใหม่ๆ ภายในเยอะมากมายไม่ว่าจะเป็น และถือว่าเป็นการเปิดตัว Logo ของ Intel ใหม่ด้วยเช่นเดียวกัน', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/3-9-2563%2013-34-05-d76j2fwvt4z4.png', 'https://bit.ly/34NHTpP', '2020-09-17 11:16:18', 1),
(4, 'ซัมซุงรุกตลาดอีสปอร์ต ปั้นซับแบรนด์ Odyssey ตอกย้ำผู้นำอันดับหนึ่งเกมมิ่งมอนิเตอร์ระดับโลก', 'ซัมซุง ผู้นำอันดับหนึ่งของโลกในตลาดเกมมิ่งมอนิเตอร์ปี 2019 เปิดตัวซับแบรนด์ Odyssey (โอดิสซี) รุกตลาดเกมเต็มตัว พร้อมส่ง Odyssey G9 (โอดิสซี จี 9) สุดยอดนวัตกรรมจอโค้ง 1000R ที่ใหญ่ที่สุดในโลกขนาด 49 นิ้ว โดดเด่นด้วยดีไซน์แบบ Futuristic การันตีด้วยรางวัล CES Innovation Awards ปี 2020 และรุ่นน้องอย่าง Odyssey G7 (โอดิสซี จี 7) จอเกมสำหรับเกมเมอร์ตัวจริง', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/28-8-2563%2014-42-57-2sgwuxf8dc9i.png', 'https://bit.ly/34NHTpP', '2020-09-29 11:16:50', 1),
(5, 'realme เปิดฉากเข้าร่วมงาน IFA เป็นครั้งแรก พร้อมเผยกลยุทธ์แบรนด์และผลิตภัณฑ์ล่าสุด', 'realme เปิดฉากเข้าร่วมงาน IFA เป็นครั้งแรก พร้อมเผยกลยุทธ์แบรนด์และผลิตภัณฑ์ล่าสุด\r\nrealme แบรนด์สมาร์ทโฟนที่เติบโตเร็วที่สุดในโลกประกาศเข้าร่วมงาน IFA 2020 งานแสดงสินค้าอิเล็กทรอนิกส์และเครื่องใช้ไฟฟ้าชั้นนำระดับโลกเป็นครั้งแรก โดย realme ได้จัดงานแถลงข่าว ‘2020 realme Brand Launch Conference’ ในวันที่ 4 กันยายน 2563 เวลา 17.25 – 18.10 น. ณ กรุงเบอร์ลิน เพื่อเผยกลยุทธ์แบรนด์ล่าสุดและการวางแผนด้านผลิตภัณฑ์ ตามแนวคิด “Dare to Leap” เพื่อส่งเสริมให้คนรุ่นใหม่ทั่วโลกกล้าที่จะออกนอกกรอบ สร้างสรรค์ทำในสิ่งที่พวกเขาต้องการ', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/1-9-2563%2015-35-10-z28j4lz93mnn.png', 'https://bit.ly/34NHTpP', '2020-09-23 11:17:38', 1),
(6, 'CORSAIR เปิดตัว KATAR PRO WIRELESS และ KATAR PRO เมาส์ Gaming ที่บางเบาดีไซน์จับถนัดมือ', 'CORSAIR ได้เปิดตัวเมาส์เกมมิ่งใหม่สองรุ่นอันได้แก่ KATAR PRO WIRELESS พร้อมเทคโนโลยี SLIPSTREAM WIRELESS และ KATAR PRO Ultralight โดยเมาส์ทั้งสองรุ่นนี้มีน้ำหนักเพียง 96 และ 69 กรัม ตามลำดับ\r\n\r\nโดยถือว่าเป็นเมาส์มีสาย และไร้สาย ที่เบาและแข็งแกร่งที่สุดตั้งแต่ที่ CORSAIR เคยสร้างมาดีไซน์กะทัดรัด และรูปทรงแบบสมมาตร ทำให้เมาส์ทั้งคู่นั้นสามารถเข้ากับสไตล์การจับเมาส์ของผู้เล่นเกมพีซีได้ทุกแบบ ในราคาที่คุ้มค่า\r\n\r\nKATAR PRO WIRELESS นั้นยังคงไว้ซึ่งสมรรถนะความเป็นเมาส์เกมมิ่งด้วยค่าหน่วงเวลาที่ต่ำกว่า 1 มิลลิวินาที ที่ต้องขอบคุณเทคโนโลยี SLIPSTREAM WIRELESS ที่ให้การเชื่อมต่ออันรวดเร็วกว่าการเชื่อมต่อด้วยสาย ทำให้ทุกท่วงท่าการเลื่อนเมาส์ คลิก หรือสกอร์ เป็นไปได้อย่างรวดเร็วแม่นยำ\r\n\r\nตัวเมาส์ใช้พลังงานจากแบตเตอร์รี่ขนาด AA ที่ใช้งานต่อเนื่องได้ยาวนานสูงสุด 135 ชั่วโมง KATAR PRO WIRELESS ใช้ออฟติคอลเซ็นเซอร์ความละเอียด 10,000 DPI และมีช่องสำหรับตั้งค่า DPI เผื่อเลือกไว้ได้ถึง 3 ช่องพรีเซ็ต ที่สามารถปรับเปลี่ยนค่าได้ระหว่างการใช้งาน ปุ่มกดบนเมาส์ทั้งหมด 6 ปุ่มสามารถโปรแกรมคำสั่งผ่านซอฟต์แวร์ iCUE ได้ ทำการรวมคำสั่งหรือคอมโบกดปุ่มต่างๆ ลงในปุ่มคำสั่งเดียวที่อยู่ในตำแหน่งที่กดได้สะดวกรวดเร็วเป็นเรื่องง่าย\r\n\r\nKATAR PRO รุ่นมีสายพร้อมใช้งานสไตล์ plug-and-play เข้ากับพอร์ต USB น้ำหนักเบาเพียง 69 กรัม มาพร้อมความแม่นยำที่ทำให้คุณพร้อมในทุกสนามเกม ด้วยเซ็นเซอร์ออฟติคอลความละเอียด 12,400 DPI จาก PixArt และช่องสำหรับตั้งค่า DPI พรีเซ็ต 3 ช่อง เช่นเดียวกับรุ่นไร้สาย อีกทั้งยังสามารถโปรแกรมปุ่มมาโครต่าง ๆ ปรับแต่งค่า DPI และปรับตั้งค่าเอฟเฟคแสงไฟได้จากซอฟต์แวร์ iCUE ได้อย่างง่ายดาย\r\n\r\nเมาส์ทั้งสองรุ่นนี้ แม้ว่าจะมาพร้อมกับความเบาขั้นสุดตั้งแต่ CORSAIR เคยผลิตเมาส์มา ก็ยังมาพร้อมกับราคาเบา ๆ เอื้อมถึงได้ง่าย KATAR PRO WIRELESS และ KATAR PRO เมาส์น้ำหนักเบาระดับไลท์เวท ที่มาพร้อมประสิทธิภาพและสมรรถนะระดับเฮฟวี่เวท\r\n\r\nCORSAIR KATAR PRO WIRELESS และ CORSAIR KATAR PRO มีวางจำหน่ายแล้ววันนี้ผ่านตัวแทนจำหน่ายสินค้า CORSAIR ทั่วประเทศ พร้อมการรับประกันนานถึง 2 ปี สำหรับราคาล่าสุดของ CORSAIR KATAR PRO WIRELESS อยู่ที่ 1,490 บาท และ CORSAIR KATAR PRO อยู่ที่ 690 บาท', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/30-10-2563%2015-35-43-1wb5ejm6gj8w.png', 'https://bit.ly/34NHTpP', '2020-11-01 00:00:00', 1),
(7, 'ระวัง! การสื่อสารที่ “ไม่เห็นหน้า” หนทางสู่ความขัดแย้ง', 'ระวัง! การสื่อสารที่ “ไม่เห็นหน้า” หนทางสู่ความขัดแย้ง\r\n\r\nการสื่อสารแบบที่ไม่เห็นหน้า บ่อยครั้งนำไปสู่ความเข้าใจผิด ยกตัวอย่างง่าย ๆ เมื่อคุณถามเพื่อนผ่านโปรแกรมแชตในโซเชียลมีเดียว่า “กินข้าวหรือยัง” หลังจากนั้น 2 ชั่วโมงเพื่อนก็ตอบกลับมาว่า “กินแล้ว” หลายคนคงจะเริ่มรู้สึกเลิ่กลั่ก กังวลใจแล้วว่า “เพื่อนฉันเป็นอะไร” เพราะตัวอักษรที่เพื่อนตอบน้ำเสียงที่แฝงมาดู “ห้วน ๆ” ชวนให้คิดว่าเพื่อนกำลังไม่พอใจหรืองอนอะไรเราหรือเปล่า แถมยังเว้นระยะเวลาในการตอบไปนานเสียด้วย\r\n\r\nทั้งที่ความจริงแล้วเมื่อ 2 ชั่วโมงที่เพื่อนหายไปนั้น เพื่อนแค่ไม่มีเวลาอ่าน ไม่มีเวลาตอบ เมื่อพอจะมีเวลาว่าง 5-10 นาที เพื่อนก็เลยตอบกลับมาสั้น ๆ โดยที่เขาก็ไม่ได้คิดอะไร ไม่ได้คิดว่าคนอ่านอาจเข้าใจผิด ตัวเขาปกติดี ไม่ได้หงุดหงิด ไม่ได้งอน ไม่ได้โกรธอะไรใคร\r\n\r\nคงเป็นเพราะปัจจุบัน เราคุ้นชินกับการพูดคุยกับเพื่อนผ่านตัวอักษร และทุกครั้งที่พูดคุยก็มักจะเป็นตัวอักษรพร้อมกับสัญรูปอารมณ์ที่ทำให้เกิด “เสียง” สัญรูปอารมณ์เหล่านั้นทำให้คำพูดที่พูดคุย “ซอฟต์” ลง เช่น เวลาที่คุยกับเพื่อน เราจะต้องมี 555 แสดงอารมณ์ขัน และแสดงความเป็นมิตร หรือมีการใช้อิโมจิหรืออิโมติคอนประกอบ เพื่อให้บรรยากาศในการสนทนาดูเป็นกันเอง ดูเป็นมิตรกว่าการจบบทสนทนาแบบสั้น ๆ ห้วน ๆ แต่เมื่อใดที่ 555 หรืออิโมจิ หายไป เหลือเพียงคำพูดห้วน ๆ ให้อ่าน เราจะเริ่มระแวงในความสัมพันธ์ทันที\r\n\r\nสื่อสารให้เข้าใจ หาใช่แค่คำพูด\r\nการสื่อสารเป็นเรื่องใกล้ตัวที่เราใช้กันอยู่ทุกวันในชีวิตประจำวัน แทบจะเป็นไปไม่ได้เลยที่วัน ๆ เราจะไม่พูด ไม่คุย ไม่ติดต่อสื่อสารกับใครเลย เราเลยมองว่าการสื่อสารเป็นปกติง่าย ๆ ทั่ว ๆ ไป แต่หารู้ไม่ว่าการสื่อสารนี่แหละที่เป็นต้นเหตุให้คนตีกัน ถ้าเราไม่ให้ความสำคัญ ความสำเร็จหรือประสิทธิผลที่เราคาดหวังจากการสื่อสารในครั้งนั้น ๆ ก็อาจจะอยู่ไกลเกินไปก็ได้\r\n\r\nความสำเร็จหรือประสิทธิผลในการสื่อสาร คือ การที่ ผู้รับสาร เข้าใจ สาร ที่ ผู้ส่งสาร ต้องการจะบอก ง่าย ๆ ก็คือเข้าใจตรงกันแล้วนำไปปฏิบัติต่อ อย่างไรก็ตาม ภาษา เป็นเครื่องมือที่เราใช้สื่อสารไม่ได้มีแค่เสียงพูดและตัวหนังสือ แบบที่เราเรียกว่า “วัจนภาษา” เท่านั้น แต่ภาษายังมี “อวัจนภาษา” ที่เป็นกิริยาอาการต่าง ๆ ที่ใช้สื่ออารมณ์ ความรู้สึก ความต้องการ เป็นตัวบ่งบอกความรู้สึกและบุคลิกภาพของผู้ที่สื่อออกมา รวมถึงสิ่งที่ปรากฏต่อสายตาและการได้ยิน (แบบที่ไม่ใช่เสียงพูด) การรับรู้อวัจนภาษา จึงรับรู้ได้ผ่านการมองเห็นและการได้ยิน\r\n\r\nดังนั้น การสื่อสารที่ประสบความสำเร็จ จำเป็นต้องอาศัยทั้งวัจนภาษาและอวัจนภาษาควบคู่กันไป โดยเฉพาะอย่างยิ่งอวัจนภาษา เพราะคนเราจะรับรู้ความหมายของสารด้วยการแสดงออกมากกว่าคำพูดเสียอีก เช่น คนที่ปากไม่ตรงใจ เราก็จะมองออก สีหน้าท่าทางดูกังวลกลับฟ้องผู้รับสารได้มากกว่าคำพูดที่พูดออกมาแล้วดูดี', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/29-10-2563%2010-33-32-ygx8akzy4jgd.png', 'https://bit.ly/34NHTpP', '2020-11-01 00:00:00', 1),
(8, 'โซนี่ไทยอวดโฉมกล้องคอมแพ็คท์ ZV-1 สีขาว พร้อมเปิดให้สั่งจองวันนี้', 'โซนี่ไทยอวดโฉมกล้องคอมแพ็คท์ ZV-1 สีขาว พร้อมเปิดให้สั่งจองวันนี้\r\nบริษัท โซนี่ ไทย จำกัด เดินหน้าสร้างสีสันให้ตลาดกล้องเมืองไทยอีกครั้ง ด้วยการอวดโฉมกล้องดิจิตอลคอมแพ็คท์ยอดนิยมรุ่น ZV-1 สีขาว ในรูปลักษณ์สุดดึงดูดด้วยการออกแบบตัวบอดี้สีขาวล้ำเทรนด์ตัดกับจอแสดงผล LCD สีดำได้อย่างโดดเด่นสวยงาม มาพร้อมพู่กันลมสีขาวที่สวยสะอาดกลมกลืนกับตัวกล้องเป็นอย่างดี\r\n\r\nให้ผู้ใช้ได้สร้างสรรค์ผลงานสุดคูล ไปพร้อมกับไลฟ์สไตล์ส่วนตัวสุดชิค ที่สะท้อนคาแรคเตอร์ส่วนตัวของผู้ใช้ได้อย่างแตกต่างไม่เหมือนใคร โดยกล้อง ZV-1 สีขาวนี้ ยังคงไว้ซึ่งคุณสมบัติที่เพียบพร้อมสำหรับการถ่ายภาพ และวิดีโอไว้ได้อย่างครบถ้วนเต็มคุณภาพ\r\n\r\nสำหรับกล้องคอมแพ็คท์ ZV-1 ได้ทำการเปิดตัวไปเมื่อช่วงกลางปีผ่านมาและได้รับการตอบรับเป็นอย่างดีจนถึงปัจจุบัน โดยกล้อง ZV-1 เป็นกล้องแบบ “All-In-One” ที่มีขนาดกะทัดรัด น้ำหนักเบา สามารถตอบโจทย์การใช้งานถ่ายวิดีโอได้อย่างสะดวกสบาย โดยมาพร้อมฟังก์ชั่นการใช้งานง่ายๆ อาทิ ปุ่ม Background Bokeh หรือ การตั้งค่า Product Showcase ผสานกับเทคโนโลยีการถ่ายภาพระดับมืออาชีพได้อย่างสมบูรณ์แบบ', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/26-10-2563%2013-23-48-kxvyyyu1ocq1.png', 'https://bit.ly/34NHTpP', '2020-11-01 00:00:00', 1),
(9, 'Microsoft เปิดตัว Azure Space สนับสนุนอุตสาหกรรมอวกาศ', 'Microsoft ได้เปิดตัว Azure Space แพลตฟอร์มคลาวด์คอมพิวติงสำหรับสนับสนุนภารกิจอวกาศให้กับองค์กรภาครัฐและเอกชน โดยได้พัฒนาระบบคลาวด์ที่สามารถตอบสนองความต้องการด้านอวกาศโดยเฉพาะ ประกอบด้วย การจำลองภารกิจบนอวกาศ (เพื่อศึกษาและทดสอบดาวเทียมก่อนส่งไปสู่วงโคจร) การรวบรวมข้อมูลจากดาวเทียมและการประมวลผลเชิงลึก\r\n\r\nรวมทั้งยังส่งเสริมการสร้างนวัตกรรมต่าง ๆ ทั้งบนโลกและนอกอวกาศ ซึ่งภาครัฐและเอกชนไม่ต้องสร้างและยิงดาวเทียมขึ้นไปเองแต่สามารถดึงข้อมูลจากดาวเทียมมาประมวลผลใช้งานได้ ซึ่งดูเหมือนจะออกมาแข่งกับ Amazon Web Services ที่เปิดตัวเมื่อกลางปีว่าจะขยายบริการคลาวด์สู่อุตสาหกรรมการบินและอวกาศ\r\n\r\nนอกจากนี้ Microsoft ได้ประกาศจับมือกับพันธมิตรรายใหม่ คือ SpaceX เจ้าของเครือข่าย Starlink ดาวเทียมบรอดแบนด์ความเร็วสูงความหน่วงต่ำ เพื่อช่วยขยายการเข้าถึงศูนย์ข้อมูลให้บริการคลาวด์ของ Azure แบบเคลื่อนที่ (Azure Modular Datacenter : MDC) เหมาะสำหรับหน่วยงานที่ทำงานในพื้นที่ห่างไกลและจุดที่อินเทอร์เน็ตแบบสายเคเบิ้ลหรือไฟเบอร์ออปติกเข้าไม่ถึง เช่น หน่วยทหาร หน่วยสำรวจแร่ ขุดเจาะน้ำมัน ภาคการเกษตรและเรือขนส่งสินค้า ที่สำคัญ SpaceX เป็นคู่แข่งกับ Blue Origin ของ Jeff Bezos ผู้ก่อตั้ง Amazon ดังนั้นจึงเป็นการร่วมกันสู้ที่มีพลังอย่างน่าติดตาม\r\n\r\nเดือนกันยายน Microsoft ได้จับมือกับ Intelsat และ Viasat ประกอบด้วย เครือข่ายดาวเทียมวงโคจรของโลกระดับกลาง (MEO), ดาวเทียมวงโคจรพ้องคาบโลก (GEO) และดาวเทียมถ่ายภาพระยะไกลสำหรับใช้ในการเชื่อมต่อเข้ากับบริการคลาวด์ Azure Orbital ซึ่งเป็นสถานีภาคพื้นดิน เพื่อใช้เครือข่ายดาวเทียมขยายการเข้าถึงบริการคลาวด์และสามารถใช้ข้อมูลจากดาวเทียม นับว่าเป็นคู่แข่งโดยตรงกับ AWS Ground Station ของ Amazon เช่นกัน\r\n\r\nล่าสุดนอกจาก SpaceX แล้ว Microsoft ได้ร่วมมือกับบริษัทการสื่อผ่านดาวเทียมเพิ่มเติม ได้แก่ KSAT, Kratos, AMERGINT, Kubos และ Electrodynamics เพื่อให้สามารถเข้าถึงบริการคลาวด์ได้ครอบคลุมพื้นที่ได้ทั่วโลกผ่านเครือข่ายดาวเทียมระดับต่าง ๆ', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/21-10-2563%2013-25-36-4l6tz4ldfi0m.png', 'https://bit.ly/2Gge33C', '2020-11-01 00:00:00', 1),
(10, 'สรุปข้อมูล \"iPhone 12\" ทุกรุ่นหลังจบงาน \"Apple Event 2020\"', 'สรุปข้อมูล \"iPhone 12\" ทุกรุ่นหลังจบงาน \"Apple Event 2020\" มีอะไรเด็ดๆ บ้าง ? มาดูกัน\r\n\r\nผ่านพ้นกันไปแล้วครับสำหรับงานเปิดตัว Apple Event ครั้งล่าสุด ในรอบนี้ก็มีการเปิดตัว Product ใหม่ของ Apple เยอะพอสมควร และคำว่า Hi, Speed ก็คงเห็นแล้วว่ามันคืออะไร และเช่นเคยทีม Sanook Hitech จะมีสรุปการเปิดตัวออกมาโดยมีรายละเอียดดังนี้\r\n\r\niPhone 12\r\n\r\nสำหรับในเรื่องราวที่ผ่านมา iPhone เป็นมือถือที่ขายดีและได้รับความนิยมเพราะว่ามี Application มากมายและได้รับความน่าเชื่อถือและ ปลอดภัย สำหรับในรุ่นนี้การเปลี่ยนแปลงกับรุ่นใหม่รองรับเทคโนโลยี 5G ที่ตอบสนองการความเร็วสูง\r\n\r\niPhone 12 ตัวแรกที่เปิดตัวรุ่นนี้มาพร้อมกับหน้าจอที่มีขนาด 6.1 นิ้วมีค่า Contrast 2,000,000 : 1 หน้าจอสวยและความละเอียดมากกว่า iPhone 11  รองรับ Dolby Vision และกระจกเป็นแบบ Ceramic Shield แข็งแรงกว่าเดิม 4 เท่า ตัวเครื่องบางลง 11%, เบาขึ้น 16% และ เล็กลง 15% เมื่อเทียบกับ iPhone 11\r\n\r\nตัวเครื่อง iPhone 12 มีให้เลือก 5 สีคือ เขียว, ขาว, ดำ, น้ำเงิน และ Product Red\r\n\r\nแน่นอนว่าครั้งนี้มากับเทคโนโลยี 5G ความโดดเด่นอยู่ที่เสาอากาศ และมี Smart Data Mode ปรับเปลี่ยนการใช้งานระหว่าง 4G และ 5G ได้เหมาะสมทั้งการจับสัญญาณ, พลังงานของเครื่องให้เหมาะสม ณ เวลานั้นให้ความเร็วสูงสุด 3.5 Gbps แบบ Sub-6 และ รองรับ 5G แบบ mmWave ที่ให้คุณภาพดีระดับ 4Gbps (คาดว่าเฉพาะในสหรัฐฯ เท่านั้น)\r\n\r\nด้านประสิทธิภาพของ iPhone 12 จะมาพร้อมกับ CPU Apple A14 และมาพร้อมกับขนาด 5 นาโนเมตรที่เร็วกว่าเดิม 50% ทั้ง CPU GPU พร้อม Neural Engine ที่มีขนาด 16 Core รายละเอียดสามารถอ่านต่อได้ที่บทความนี้ ทั้งหมดนี้ส่งผลให้การเล่นเกมของมือถือรุ่นนี้ทำได้ดี\r\n\r\nกล้องหลังจะเปลี่ยนแปลงที่กล้องตัวหลักจะเพิ่มรูรับแสงให้กว้างขึ้นถึง f1.6 ทำให้ถ่ายภาพกลางคืนได้ดีและมีการเก็บรายละเอียดภาพที่ดีขึ้น และมีการเก็บรับละเอียดได้มากขึ้น Night Mode จะดีขึ้นและสามารถถ่ายภาพ ออกมาสวยแม้จะถ่าย Selfie\r\n\r\nวิดีโอของ iPhone 12 จะเพิ่มคุณภาพที่ดีขึ้นกับ Night Mode Time-Lapse เพราะรูรับแสงจับได้กว้างมากขึ้นทำให้การเก็บรายละเอียดภาพกลางคืนได้ดีมากกว่าเดิม\r\n\r\nWireless Charging มีการฟีเจอร์ MagSafe จะทำให้การชาร์จไฟไร้สายมีปัญหาน้อยลงและทำให้การออกแบบเคสจะมีแม่เหล็กฝั่งภายในแต่ไม่มีผลการทำงานอื่นๆ ด้วยเช่นเดียวกัน แถมยังรองรับเกี่ยวกับนำไป Recycle สุดๆ และจึงทำให้ในกล่องของ iPhone 12 ทุกรุ่นจะมีการไม่ได้ให้ปลั๊กชาร์จไฟ (Adaptor) และหูฟังอีกต่อไป ทำให้กล่องจะบางลง ลดการเกิด Carbon ได้อีก แต่ที่แถมยังคงเป็น USB-C To Lightning Port เช่นเคย', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/14-10-2563%2010-14-03-yo7zmq1cgr44.png', 'https://www.itgenius.co.th/article/%E0%B8%AA%E0%B8%A3%E0%B8%B8%E0%B8%9B%E0%B8%82%E0%B9%89%E0%B8%AD%E0%B8%A1%E0%B8%B9%E0%B8%A5-iphone-12-%E0%B8%97%E0%B8%B8%E0%B8%81%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%88%E0%B8%9A%E0%B8%87%E0%B8%B2%E0%B8%99-apple-event-2020.html', '2020-11-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `product_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `product_barcode` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `product_qty` int(4) NOT NULL,
  `product_price` decimal(7,2) NOT NULL,
  `product_date` date NOT NULL,
  `product_image` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `product_category` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'electronic',
  `product_status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_detail`, `product_name`, `product_barcode`, `product_qty`, `product_price`, `product_date`, `product_image`, `product_category`, `product_status`) VALUES
(4, 'Pepsi is a carbonated soft drink manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brad\'s Drink, it was renamed as Pepsi-Cola in 1898,[1] and then shortened to Pepsi in 1961.\r\n\r\nPepsi was first introduced as \"Brad\'s Drink\"[1] in New Bern, North Carolina, United States, in 1893 by Caleb Bradham, who made it at his drugstore where the drink was sold. It was renamed Pepsi-Cola in 1898 after the Greek word for \"digestion\" (πέψη, pronounced the same as Pepsi), which the drink was purported to aid, and \"cola\" after the kola nut. The original recipe also included sugar and vanilla.[1] Bradham sought to create a fountain drink that was appealing and would aid in digestion and boost energy.[1]\r\n\r\n\r\nThe original stylized Pepsi-Cola wordmark used from 1898 until 1905.\r\nIn 1903, Bradham moved the bottling of Pepsi-Cola from his drugstore to a rented warehouse. That year, Bradham sold 7,968 gallons of syrup. The next year, Pepsi was sold in six-ounce bottles, and sales increased to 19,848 gallons. In 1909, automobile race pioneer Barney Oldfield was the first celebrity to endorse Pepsi-Cola, describing it as \"A bully drink...refreshing, invigorating, a fine bracer before a race.\" The advertising theme \"Delicious and Healthful\" was then used over the next two decades.[2]\r\n\r\n\r\nA 1919 newspaper ad for Pepsi-Cola\r\nIn 1923, the Pepsi-Cola Company entered bankruptcy—in large part due to financial losses incurred by speculating on the wildly fluctuating sugar prices as a result of World War I. Assets were sold and Roy C. Megargel bought the Pepsi trademark.[1] Megargel was unsuccessful in efforts to find funding to revive the brand and soon Pepsi\'s assets were purchased by Charles Guth, the president of Loft, Inc. Loft was a candy manufacturer with retail stores that contained soda fountains. He sought to replace Coca-Cola at his stores\' fountains after the Coca-Cola Company refused to give him additional discounts on syrup. Guth then had Loft\'s chemists reformulate the Pepsi-Cola syrup formula.[3]', 'Pepsi', '78545955898', 100, '100.00', '0000-00-00', 'https://www.itgenius.co.th/sandbox_api/cpallstockapi/public/images/stock/pepsi.jpg', 'drink', 1),
(6, 'In botany, a fruit is the seed-bearing structure in flowering plants (also known as angiosperms) formed from the ovary after flowering.\r\n\r\nFruits are the means by which angiosperms disseminate seeds. Edible fruits, in particular, have propagated with the movements of humans and animals in a symbiotic relationship as a means for seed dispersal and nutrition; in fact, humans and many animals have become dependent on fruits as a source of food.[1] Accordingly, fruits account for a substantial fraction of the world\'s agricultural output, and some (such as the apple and the pomegranate) have acquired extensive cultural and symbolic meanings.\r\n\r\nIn common language usage, \"fruit\" normally means the fleshy seed-associated structures of a plant that are sweet or sour, and edible in the raw state, such as apples, bananas, grapes, lemons, oranges, and strawberries. On the other hand, in botanical usage, \"fruit\" includes many structures that are not commonly called \"fruits\", such as bean pods, corn kernels, tomatoes, and wheat grains.[2][3] The section of a fungus that produces spores is also called a fruiting body.[4]', 'Tipco น้ำองุ่นแดง', '8851013797980', 10, '20.00', '0000-00-00', 'https://www.itgenius.co.th/sandbox_api/cpallstockapi/public/images/stock/tipco.jpg', 'drink', 1),
(7, 'Sprite is a colorless, lemon and lime-flavored soft drink created by The Coca-Cola Company. It was first developed in West Germany in 1959 as Fanta Klare Zitrone (\"Clear Lemon Fanta\") and was introduced in the United States under the current brand name Sprite in 1961 as a competitor to 7 Up.\r\n\r\nSprite advertising often makes use of the portmanteau word lymon, a combination of the words \"lemon\" and \"lime\".[1]\r\n\r\nBy the 1980s, Sprite had developed a large following among teenagers. In response, Sprite began to cater to this demographic in their advertisements in 1987. \"I Like the Sprite In You\" was the brand\'s first long-running slogan, and many jingles were produced around it before its discontinuation in 1994.\r\n\r\nIn 1994, Sprite revamped their marketing logo, and slogan, as well. The new, more vibrant logo stood out more on packaging, and featured a blue-to-green gradient with silver \"splashes\" and subtle white \"bubbles\" in the background. The product name, \"Sprite\" had a blue backdrop shadow on the logo. The words; \"Great Lymon Taste!\" which had been present on the previous logo, were removed. This logo was used in the United States until 2006, and similar variants were used in other countries until this year as well.', 'Sprite', '8851959135365', 30, '8.00', '0000-00-00', 'https://www.itgenius.co.th/sandbox_api/cpallstockapi/public/images/stock/sprite.jpg', 'drink', 1),
(8, 'Starbucks Corporation is an American coffee company and coffeehouse chain. Starbucks was founded in Seattle, Washington, in 1971. As of early 2019, the company operates over 30,000[5] locations worldwide.\r\n\r\nStarbucks has been described as the main representative of \"second wave coffee,\" a retrospectively termed movement that popularized artisanal coffee, particularly darkly roasted coffee.[6][7] Since the 2000s, third wave coffee makers have targeted quality-minded coffee drinkers with hand-made coffee based on lighter roasts, while Starbucks nowadays uses automated espresso machines for efficiency and safety reasons.[6][8', 'Starbuck Coffee', '7579756974378', 20, '300.00', '0000-00-00', 'https://www.itgenius.co.th/sandbox_api/cpallstockapi/public/images/stock/starbuck_coffee.jpg', 'drink', 1),
(66, 'For someone', 'Lenovo Notebook', '454545454542', 102, '60000.00', '2020-12-19', 'https://notebookspec.com/nbs/upload_notebook/20190419-171124_c.jpg', 'electronic', 1),
(78, 'เมื่อวันที่ 12 มิถุนายน 2563 Sony ได้เปิดตัว PlayStation 5 พร้อมเผยภาพตัวเครื่องอย่างเป็นทางการ ซึ่งจะมีแบ่งออกเป็น 2 รุ่น ได้แก่ PlayStation 5 รุ่นปกติที่จะมาพร้อมช่องใส่แผ่น Ultra HD Blu-ray กับรุ่น PlayStation 5 Digital Edition ที่ไม่มีช่องใส่แผ่น สำหรับเล่นเกมแบบ Digital Download เท่านั้น พร้อมทั้งเปิดตัวอุปกรณ์เสริมอย่างเช่น หูฟัง Pulse 3D Headset, แท่นชาร์จจอย, HD Camera และ Media Remote ซึ่งจะขายแยกต่างหากกับตัวเครื่อง', 'PlayStation 5', '345363224', 100, '16000.00', '2021-01-15', 'https://s359.kapook.com/pagebuilder/c765c5d3-ddf8-4460-b477-3946c6733bad.jpg', 'electronic', 1),
(79, 'Aunwa for new futrue macbook', 'Macbook Aunwa', '999999999999', 1, '99999.00', '2021-01-15', 'https://notebookspec.com/web/wp-content/uploads/2013/11/AAEAAQAAAAAAAAchAAAAJDNiMjQ3MTYzLTE3YzAtNDU5Ny04MjE3LTEyNDM2M2Q2YWYxMg.jpg', 'electronic', 1),
(85, 'Pond2 3310TI', 'Pond2', '584696563310', 1, '1500.00', '2021-01-15', 'https://www.aquascapeinc.com/upload/Pond-Fish-Health-4.jpg', 'electronic', 1),
(87, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro nam non earum praesentium modi, quibusdam labore dignissimos quisquam unde aliquam! Adipisci, illo? Possimus sed vero dignissimos libero beatae maxime suscipit.', 'Asus notebook', '20800898948040', 50, '25800.00', '2021-01-15', 'https://shop.quidlab.com/2306-large_default/notebook-asus-zenbook-13-ux334fl-a4086t-royal-blue.jpg', 'electronic', 1),
(89, 'ไม่มี', 'สินค้าของฉัน', '112451522423', 10, '2000.00', '2021-01-15', 'https://bit.ly/3qjlSaf', 'electronic', 1),
(108, 'Lonove 2021 Detail', 'Lonove 2021', '89565598956259', 20, '30000.00', '2021-01-15', 'https://f.btwcdn.com/store-39850/product-thumb/27a0d72c-520d-9131-381d-5fd4a7e5eaab.jpg', 'electronic', 1),
(109, 'Lonove 2021 Detail', 'Lonove 2022', '89565598956259', 10, '45000.00', '2021-01-15', 'https://f.btwcdn.com/store-39850/product-thumb/27a0d72c-520d-9131-381d-5fd4a7e5eaab.jpg', 'electronic', 1),
(110, 'asdasfa55666', 'PlayStation 5', '121231414112sds', 6, '1900.00', '2021-01-15', 'https://swoo.sh/3bFzF6Q', 'electronic', 1),
(112, 'IdeaPad Flex 5 (14) เพื่อชีวิตที่ปรับเปลี่ยนได้ ขุมพลังที่เราภาคภูมิใจสูงสุดถึงโมบายโพรเซสเซอร์ Intel generation 11th IdeaPad Flex 5 ขนาด 14\" เครื่องนี้นำเสนอความยอดเยี่ยมในทุกด้านสำหรับคุณ ไม่ว่าจะเป็นกราฟิก หรือแม้แต่การทำงานต่างๆ นี่คืออุปกรณ์ที่คุณไฝ่หาอย่างแท้จริง', 'LENOVO NOTEBOOK IDEAPAD FLEX 5 14ITL05-82HS009LTA GREY', '112451522423', 20, '24990.00', '2021-01-15', 'https://www.bnn.in.th/pub/media/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/e/Lenovo-Notebook-IdeaPad-Flex-5-14ITL05-82HS009LTA-Grey-1-1610642854.jpg', 'electronic', 1),
(116, 'test Lonove 2022', 'Lonove 2022', '986589565959', 333, '25800.00', '2021-01-15', 'https://f.btwcdn.com/store-39850/product-thumb/27a0d72c-520d-9131-381d-5fd4a7e5eaab.jpg', 'electronic', 1),
(118, 'IdeaPad Flex 5 (14) เพื่อชีวิตที่ปรับเปลี่ยนได้ ขุมพลังที่เราภาคภูมิใจสูงสุดถึงโมบายโพรเซสเซอร์ Intel generation 11th IdeaPad Flex 5 ขนาด 14\" เครื่องนี้นำเสนอความยอดเยี่ยมในทุกด้านสำหรับคุณ ไม่ว่าจะเป็นกราฟิก หรือแม้แต่การทำงานต่างๆ นี่คืออุปกรณ์ที่คุณไฝ่หาอย่างแท้จริง', 'LENOVO NOTEBOOK YOGA6 13ARE05-82FN003RTA BLUE (A)', '88545579885', 20, '30990.00', '2021-01-15', 'https://www.bnn.in.th/pub/media/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/e/Lenovo-Notebook-IdeaPad-Flex-5-14ITL05-82HS009LTA-Grey-1-1610642854.jpg', 'electronic', 1),
(119, 'asfsafsaf', 'Lonove 2023', '89565598956259', 333, '222.00', '2021-01-15', 'https://shop.quidlab.com/2306-large_default/notebook-asus-zenbook-13-ux334fl-a4086t-royal-blue.jpg', 'electronic', 1),
(120, 'asfsafas', 'Lonove new one 22', '986589565959', 333, '25800.00', '2021-01-15', 'https://shop.quidlab.com/2306-large_default/notebook-asus-zenbook-13-ux334fl-a4086t-royal-blue.jpg', 'electronic', 1),
(121, 'noteBook Pro is best', 'noteBook Pro ', '1254353613', 5, '34567.00', '2021-01-15', 'https://www.ovinitsolutions.com/wp-content/uploads/2020/12/108-1083009_transparent-woman-office-worker-clipart-computer-with-girl.png', 'electronic', 1),
(123, 'Pepsi is a carbonated soft drink manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brad\'s Drink, it was renamed as Pepsi-Cola in 1898,[1] and then shortened to Pepsi in 1961.\r\n\r\nPepsi was first introduced as \"Brad\'s Drink\"[1] in New Bern, North Carolina, United States, in 1893 by Caleb Bradham, who made it at his drugstore where the drink was sold. It was renamed Pepsi-Cola in 1898 after the Greek word for \"digestion\" (πέψη, pronounced the same as Pepsi), which the drink was purported to aid, and \"cola\" after the kola nut. The original recipe also included sugar and vanilla.[1] Bradham sought to create a fountain drink that was appealing and would aid in digestion and boost energy.[1]\r\n\r\n\r\nThe original stylized Pepsi-Cola wordmark used from 1898 until 1905.\r\nIn 1903, Bradham moved the bottling of Pepsi-Cola from his drugstore to a rented warehouse. That year, Bradham sold 7,968 gallons of syrup. The next year, Pepsi was sold in six-ounce bottles, and sales increased to 19,848 gallons. In 1909, automobile race pioneer Barney Oldfield was the first celebrity to endorse Pepsi-Cola, describing it as \"A bully drink...refreshing, invigorating, a fine bracer before a race.\" The advertising theme \"Delicious and Healthful\" was then used over the next two decades.[2]\r\n\r\n\r\nA 1919 newspaper ad for Pepsi-Cola\r\nIn 1923, the Pepsi-Cola Company entered bankruptcy—in large part due to financial losses incurred by speculating on the wildly fluctuating sugar prices as a result of World War I. Assets were sold and Roy C. Megargel bought the Pepsi trademark.[1] Megargel was unsuccessful in efforts to find funding to revive the brand and soon Pepsi\'s assets were purchased by Charles Guth, the president of Loft, Inc. Loft was a candy manufacturer with retail stores that contained soda fountains. He sought to replace Coca-Cola at his stores\' fountains after the Coca-Cola Company refused to give him additional discounts on syrup. Guth then had Loft\'s chemists reformulate the Pepsi-Cola syrup formula.[3]', 'Pepsi 500', '78545955898', 55, '15.00', '2021-01-15', 'https://www.itgenius.co.th/sandbox_api/cpallstockapi/public/images/stock/pepsi.jpg', 'electronic', 1),
(126, 'Google Detail', 'Google Home', '8759555559', 5, '35000.00', '2021-01-25', 'https://www.itgenius.co.th/assets/frondend/images/picarticle/25-1-2564%2012-07-21-zukq2qxvoj4c.png', 'electronic', 1),
(127, 'Samsung Detail', 'Samsung Note 2030', '989895989', 3, '25000.00', '2021-01-25', 'https://images.samsung.com/th/smartphones/galaxy-note20/buy/001-note20series-productimage-mo-720.jpg', 'electronic', 1),
(129, 'Samsung Detail', 'Samsung Note 20', '989895989', 6, '25000.00', '2021-01-25', 'https://images.samsung.com/th/smartphones/galaxy-note20/buy/001-note20series-productimage-mo-720.jpg', 'electronic', 1),
(130, 'momomo', 'mookrata', '1231231232', 20, '111.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(131, 'ซัมซุง อิเลคโทรนิคส์ เปิดตัว Galaxy S21 Series เป็นที่เรียบร้อยแล้ว ในงาน Galaxy Unpacked 2021 ซึ่งไฮไลต์เด็ดที่หลายคนรอคอย ต้องยกให้สมาร์ทโฟนเรือธง 3 รุ่นใหม่ล่าสุด ที่รองรับ 5G อย่าง Galaxy S21, Galaxy S21+ และ Galaxy S21 Ultra ไทยรัฐออนไลน์จะพาคุณมาอัปเดตสเปกเครื่อง พร้อมราคา ซื้อรุ่นไหนคุ้มค่ากว่ากัน', 'Samsung S21', '986589565959', 50, '35600.00', '2021-01-25', 'https://www.techoffside.com/wp-content/uploads/2020/10/Samsung-Galaxy-S21-Ultra-renders-1.jpg', 'electronic', 1),
(132, 'good', 'Anker powerbank', '12345678', 10, '1250.00', '2021-01-25', 'https://www.anker.com/products/variant/powercore-ii-6700/A1220011', 'electronic', 1),
(133, 'good', 'Anker powerbank', '12345678', 10, '1250.00', '2021-01-25', 'https://images.samsung.com/th/smartphones/galaxy-note20/buy/001-note20series-productimage-mo-720.jpg', 'electronic', 1),
(134, 'good', 'Anker powerbank', '12345678', 10, '1250.00', '2021-01-25', 'https://d2211byn0pk9fi.cloudfront.net/spree/products/63234/product/A1220011.jpg', 'electronic', 1),
(135, 'momomo', 'mookrata2', '1231231232', 1, '999.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(136, 'momomo', 'mookrata2', '1231231232', 1, '999.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(137, 'good', 'Anker powerbank', '12345678', 10, '1250.00', '2021-01-25', 'https://d2211byn0pk9fi.cloudfront.net/spree/products/63234/product/A1220011.jpg', 'electronic', 1),
(138, 'momomo', 'mookrata2', '1231231232', 1, '999.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(139, 'test desc', 'Lenovo Idea Pad 1010', '4959565656566', 2, '35500.00', '2021-01-25', 'https://www.bnn.in.th/pub/media/amasty/amoptmobile/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/e/Lenovo-Notebook-IDEAPAD3-14ADA05-81W0003RTA-1-1600794862.jpg', 'electronic', 1),
(140, 'good', 'Anker powerbank', '12345678', 10, '1250.00', '2021-01-25', 'https://d2211byn0pk9fi.cloudfront.net/spree/products/63234/product/A1220011.jpg', 'electronic', 1),
(141, 'momomo', 'mookrata2', '1231231232', 1, '999.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(142, 'test desc', 'Lenovo Idea Pad 1010', '4959565656566', 2, '35500.00', '2021-01-25', 'https://www.bnn.in.th/pub/media/amasty/amoptmobile/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/e/Lenovo-Notebook-IDEAPAD3-14ADA05-81W0003RTA-1-1600794862.jpg', 'electronic', 1),
(143, 'test desc', 'Lenovo Idea Pad 1010', '4959565656566', 2, '35500.00', '2021-01-25', 'https://www.bnn.in.th/pub/media/amasty/amoptmobile/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/e/Lenovo-Notebook-IDEAPAD3-14ADA05-81W0003RTA-1-1600794862.jpg', 'electronic', 1),
(144, 'test desc', 'Lenovo Idea Pad 1010', '4959565656566', 2, '35500.00', '2021-01-25', 'https://www.bnn.in.th/pub/media/amasty/amoptmobile/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/e/Lenovo-Notebook-IDEAPAD3-14ADA05-81W0003RTA-1-1600794862.jpg', 'electronic', 1),
(145, 'momomo', 'mookrata2', '1231231232', 1, '999.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(146, 'momomo', 'mookrata2', '1231231232', 1, '999.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(147, '233242', 'aaaa', '3333333', 22, '3333.00', '2021-01-25', 'https://www.bnn.in.th/pub/media/amasty/amoptmobile/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/e/Lenovo-Notebook-IDEAPAD3-14ADA05-81W0003RTA-1-1600794862.jpg', 'electronic', 1),
(148, 'momomo', 'mookrata2', '1231231232', 1, '999.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(149, 'good', 'Anker powerbank', '12345678', 10, '1250.00', '2021-01-25', 'https://d2211byn0pk9fi.cloudfront.net/spree/products/63234/product/A1220011.jpg', 'electronic', 1),
(150, 'momomo', 'mookrata2', '1231231232', 1, '999.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(151, 'momomo', 'mookrata2', '1231231232', 1, '999.00', '2021-01-25', 'https://s.isanook.com/tr/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3RyLzAvdWQvMjg1LzE0MjUwNzMvcmRiLmpwZw==.jpg', 'electronic', 1),
(152, 'afasafa', 'asffsafsa', '32324242', 3233, '23333.00', '2021-01-25', 'https://www.bnn.in.th/pub/media/amasty/amoptmobile/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/e/Lenovo-Notebook-IDEAPAD3-14ADA05-81W0003RTA-1-1600794862.jpg', 'electronic', 1),
(153, 'afasafa', 'asffsafsa', '32324242', 3233, '23333.00', '2021-01-25', 'https://www.bnn.in.th/pub/media/amasty/amoptmobile/catalog/product/cache/c687aa7517cf01e65c009f6943c2b1e9/L/e/Lenovo-Notebook-IDEAPAD3-14ADA05-81W0003RTA-1-1600794862.jpg', 'electronic', 1),
(154, 'test desc', 'โน๊ตบุ๊ค lenovo', '09389830833', 20, '3999.00', '2021-01-25', 'https://shop.quidlab.com/2306-large_default/notebook-asus-zenbook-13-ux334fl-a4086t-royal-blue.jpg', 'electronic', 1),
(155, 'very fast', 'benz', '1321312', 1, '20.00', '2021-01-25', 'https://s.isanook.com/au/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2F1LzAvdWQvMTUvNzg3NDgvMDIwMS5qcGc=.jpg', 'electronic', 1),
(156, 'good', 'Anker powerbank', '12345678', 10, '1250.00', '2021-01-25', 'https://d2211byn0pk9fi.cloudfront.net/spree/products/63234/product/A1220011.jpg', 'electronic', 1),
(157, 'หฟดหฟดฟห', 'Lonove 2023', '986589565959', 333, '35500.00', '2021-01-25', 'https://www.techoffside.com/wp-content/uploads/2020/10/Samsung-Galaxy-S21-Ultra-renders-1.jpg', 'electronic', 1),
(158, 'For someone', 'Lenovo Notebook', '454545454542', 102, '60000.00', '2021-01-25', 'https://notebookspec.com/nbs/upload_notebook/20190419-171124_c.jpg', 'electronic', 1),
(159, 'For someone', 'Lenovo Notebook', '454545454542', 102, '60000.00', '2021-01-25', 'https://notebookspec.com/nbs/upload_notebook/20190419-171124_c.jpg', 'electronic', 1),
(160, 'Good condition', 'Bottle', '12298393', 1, '200.00', '2021-01-25', 'https://cdn3.vectorstock.com/i/1000x1000/29/37/thermo-water-bottle-kawaii-cute-cartoon-vector-18162937.jpg', 'electronic', 1),
(161, 'test smartwach detail', 'Smart Watch', '983903903390', 20, '3999.00', '2021-01-26', 'https://shop.quidlab.com/2306-large_default/notebook-asus-zenbook-13-ux334fl-a4086t-royal-blue.jpg', 'electronic', 1),
(162, 'test 999', 'Hms', '399393993999', 9, '999.00', '2021-01-26', 'https://f.btwcdn.com/store-39850/product-thumb/27a0d72c-520d-9131-381d-5fd4a7e5eaab.jpg', 'electronic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `img_profile` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `img_profile`, `status`) VALUES
(1, 'user', 'e10adc3949ba59abbe56e057f20f883e', 'Guest', 'guest.jpg', 1),
(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Administrators', 'admin.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
