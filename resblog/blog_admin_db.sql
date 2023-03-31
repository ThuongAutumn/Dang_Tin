-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2021 lúc 11:35 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog_admin_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_posts`
--

CREATE TABLE `banner_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` int(10) UNSIGNED NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner_posts`
--

INSERT INTO `banner_posts` (`id`, `title`, `status`) VALUES
(1, 1, 'active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(190) NOT NULL,
  `tags` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(50) NOT NULL,
  `posted` varchar(40) NOT NULL,
  `date` date DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  `category` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `tags`, `content`, `photo`, `posted`, `date`, `author`, `category`) VALUES
(1, 'Người vẽ cố nhạc sĩ Trịnh Công Sơn bằng ánh sáng', 'Nghệ thuật', '\'<div>“Đuổi hình, bắt bóng”\r\nLà một kỹ sư xây dựng nhưng Bùi Văn Tự luôn dành tình yêu cho nghệ thuật điêu khắc ánh sáng. Kể về “duyên nghề” của mình, Tự cho biết: “Khi đang là sinh viên, mình đi làm thêm bằng cách dựng những hòn non bộ. Trong quá trình đó, mình phải học cách chiếu đèn để tạo điểm nhấn cho sản phẩm. Nào ngờ vào một ngày, bóng non bộ đổ lên tường lại tạo thành hình một chú gấu. Thế là mình nảy ra ý tưởng sáng tạo nên những sản phẩm điêu khắc từ phần bóng này”.\r\nChưa từng có tiền lệ, Bùi Văn Tự gặp rất nhiều khó khăn trong quá trình hoàn thiện kỹ năng “đuổi hình, bắt bóng”. Trải qua rất nhiều thử nghiệm, từ một phương tiện để thể hiện niềm đam mê hội họa (phối hợp với công việc chính là kỹ sư xây dựng), Bùi Văn Tự quyết tâm theo đuổi bộ môn nghệ thuật mới lạ này. Anh chia sẻ: “Giữa muôn vàn nguyên vật liệu, mình chọn gỗ lũa và gốm để tạo nên tác phẩm. Bởi khi chưa chế tác, những nguyên vật liệu này đã khắc sâu dấu ấn của tự nhiên và con người”.\r\n\r\n<span style=\\\"font-size: 0.857em;\\\"></span></div>\'', 'tcs 1.jpg', 'admin', '2021-11-07', 'admin', '4'),
(2, 'Hộp xốp trong giãn cách', 'Góc nhìn', '<div>Dân chung cư tôi ở hăng hái hưởng ứng tinh thần tự nguyện giãn cách chống dịch, riêng tôi lại thấy lo.\r\nVì mỗi lần ra vào tòa nhà, tôi đều thấy từng chồng hộp xốp bọc túi nylon, đựng thức ăn đã chế biến xếp đầy trên chiếc bàn cạnh phòng bảo vệ.\r\nĐây là hiện tượng rất mới ở chung cư vài tuần nay. Mọi người hạn chế ra ngoài mua bán, thế là tất cả đều online.\r\nĐầu ngày, đủ loại thức ăn được giao đến. Từ các loại xôi, phở, bún, bánh. Hoa tươi, rau cỏ, thịt, quần áo, sách, rồi bữa trưa, bữa chiều và cả bữa tối ăn thêm. Tôi cảm tưởng các cửa hàng lớn nhỏ trong Hà Nội đều hối hả đáp ứng mọi nhu cầu đặt hàng online của bà con. Người giao hàng đến chân thang máy, điện thoại í ới gọi người mua xuống nhận.\r\nThức ăn sẵn cũng như các loại hàng đặt mua online đều được bọc bằng nylon, hộp xốp hoặc chất nhựa. Tất cả sau đó đều được vứt vào các thùng rác cạnh hành lang thang máy từng tầng.\r\nMỗi tầng đều có những thùng rác có bánh xe. Trước dịch, hầu như tôi không bao giờ thấy rác tràn ra miệng thùng. Nhưng gần đây, ngày nào tôi cũng thấy thùng rác đầy ăm ắp gấp đôi, gấp ba ngày thường.\r\nChung cư tôi ở 27 tầng, mỗi tầng 12 căn hộ. Mỗi ngày, nếu mỗi tầng có nửa số hộ gọi ít nhất một bữa ăn bên ngoài, sẽ có 15-20 hộp đựng thức ăn được bỏ ra thùng rác. Số hộp thải ra một ngày ít cũng 400-500. Một tuần, rác thải hộp xốp có thể lên tới 1.500 hoặc hơn. Thật khủng khiếp.\r\nCác thùng rác hàng ngày được chuyển xuống tầng dưới và tiếp tục được xe tải chở đến khu tập trung rác của thành phố. Chắc lại là khu Sóc Sơn, nơi lâu nay dân chúng đã quá khổ về rác.\r\nTôi chỉ nhìn ở một chung cư, còn Hà Nội mở rộng hiện nay với hơn 6 triệu người và biết bao đô thị khác, tình hình có lẽ không khác nhau nhiều.\r\nMọi chuyện vẫn cứ tự nhiên như không. Đồ ăn giao online xem chừng quá tiện lợi và thật thích hợp cho chủ trương chống dịch. Đáng tiếc là chuyện gì cũng có hai mặt.\r\n\r\n<span style=\\\"font-size: 0.857em;\\\"></span></div>', 'gocnhin1.jpg', 'admin', '2021-11-01', 'admin', '1'),
(3, 'Tuyển người ở Google', 'Góc hìn', '<div>Trung bình mỗi năm, Google nhận được hai triệu đơn xin việc trong khi chỉ tuyển vài nghìn. Nếu biết điều này sớm, tôi đã chẳng dám nộp đơn.\r\nMột thời, Google hay phỏng vấn tuyển dụng bằng những câu hỏi kiểu như: \"Một chiếc xe bus chứa được bao nhiêu quả bóng đánh golf?\". Hãng này từng thuê hẳn biển quảng cáo trên cao tốc để đăng câu hỏi \"Số nguyên tố đầu tiên có 10 chữ số trong chuỗi chữ số liên tiếp của e?\" nhằm tìm được ứng viên giỏi.\r\nChiến dịch đó tốn kém không ít tiền và đã tuyển được chính xác là 0 người phù hợp.\r\nThật may, sau đó Google cũng như nhiều hãng công nghệ đã loại bỏ kiểu hỏi đánh đố. Họ nhận ra hiệu quả của nó không cao. Giả sử tìm được một ứng viên \"Sherlock Homes\" giải được câu đố cũng không lấy gì đảm bảo người đó sẽ thành công ở công ty. Vì ngoài tư duy logic, IQ, nhân viên còn cần EQ, các kỹ năng thuyết trình, làm việc nhóm và nhiều kỹ năng khác.\r\nThay vì các câu hỏi hóc búa, Google sử dụng bài phỏng vấn Năng lực nhận thức chung (General cognitive ability - GCA) để đánh giá khả năng giải quyết vấn đề, kỹ năng xoay sở và phong cách làm việc của ứng viên.\r\nHọ sẽ hỏi những câu về tình huống giả định kiểu như, giả sử bạn phụ trách mở một trung tâm đào tạo ở Việt Nam, bạn sẽ chọn thành phố nào, kế hoạch ra sao.\r\nNếu bạn từng mở một trung tâm đào tạo cho công ty cũ rất thành công. Thế là ngay lập tức, bạn đưa ra đáp án \"nên mở trung tâm đào tạo ở TP HCM\". Và đó là câu trả lời điểm thấp điển hình.\r\n<span style=\\\"font-size: 0.857em;\\\"></span></div>', 'gocnhin2.png', 'publish', '2021-11-01', 'admin', '1'),
(4, '7 kỳ quan thiên nhiên mới của thế giới', ' giới', '<div>1. Vịnh Hạ Long nằm ở tỉnh Quảng Ninh, Việt Nam. Vịnh có bờ biển dài 120 km, diện tích 1.553 km2, với 1.969 hòn đảo lớn nhỏ, nhiều hồ bên trong những hang động đá vôi khổng lồ.\r\nVùng vịnh Hạ Long được UNESCO công nhận là di sản thiên nhiên thế giới có diện tích 434 km², như một hình tam giác với ba đỉnh là đảo Đầu Gỗ (phía tây), hồ Ba Hầm (phía nam) và đảo Cống Tây (phía đông), bao gồm 775 đảo với nhiều hang động, bãi tắm.\r\nVịnh là môi trường sống của 200 loài cá và 450 loại động vật thân mềm khác.\r\n<div>2. Amazon là rừng mưa nhiệt đới, có diện tích 7 triệu km2, trong đó, rừng già chiếm 5,5 triệu km2. Khu rừng trải rộng trên 9 quốc gia và vùng lãnh thổ của Nam Mỹ (Bolivia, Brazil, Colombia, Ecuador, Guiana, Guyana, Surianme, Venezuela).\r\nDiện tích rừng Amazon chiếm hơn ½ trong tổng diện tích các khu rừng nhiệt đới trên toàn hành tinh, với hệ đa dạng sinh học lớn nhất thế giới. Bên cạnh đó, con sông Amazon cũng là sông lớn nhất thế giới, với tổng lưu lượng nước lớn hơn 10 con sông lớn tiếp theo trên thế giới cộng lại.\r\n<div>3. Thác nước Iguazu là một trong những thác nước lớn nhất thế giới, bao gồm 275 thác nhỏ cùng tạo nên một quần thể thác lớn Iguazu. Đỉnh cao nhất của thác cao 80m. Thác nằm giữa Brazil và Argentina, được bao quanh bởi hai vườn quốc gia của hai nước này.\r\n<div>4. Jeju là một hòn đảo núi lửa ở Hàn Quốc. Đây là đảo lớn nhất và là tỉnh nhỏ nhất ở Hàn Quốc. Hòn đảo có diện tích bề mặt 1.846 km2. Tâm điểm của đảo Jeju là ngọn núi cao nhất Hàn Quốc Hallasan (đã ngưng hoạt động, cao 1.950m so với mặt nước biển). Xung quanh Hallasan còn có 360 núi lửa “vệ tinh”.\r\n<div>5. Vườn quốc gia Komodo của Indonesia bao gồm ba đảo lớn là Komodo, Rinca và Padar cùng nhiều đảo nhỏ hơn, với tổng diện tích 1.817 km2. Khuôn viên vườn quốc gia này được thành lập vào năm 1980 để bảo vệ con rồng Komodo. Sau đó, nó cũng là khu bảo tồn nhiều loài vật khác, bao gồm cả động vật biển. Những hòn đảo của công viên quốc gia có nguồn gốc núi lửa.\r\n<div>6. Sông ngầm Puerto Princesa (Philippines) là dòng chảy dưới một núi đá vôi, với chiều dài 8,2 km. Cảnh quan ở đây bao gồm những nhũ đá, măng đá và hang động. Đây được xem là sông ngầm dài nhất thế giới.\r\n<div>7. Núi Bàn là một biểu tượng của Nam Phi, cao 1.086m so với mực nước biển. Đây cũng là địa danh tự nhiên duy nhất trên hành tinh này có một chòm sao được đặt tên theo nó là Mensa, nghĩa là “bàn”.\r\nNgọn núi có đỉnh bằng phẳng đã trải qua 6 triệu năm xói mòn và tạo nên sự màu mỡ. Đây là vương quốc của những loài hoa nhỏ nhất trên trái đất với hơn 1.470 loài. Núi Bàn tự hào là nơi chứa nhiều loài động thực vật quý hiếm có nguy cơ tuyệt chủng.\r\nNúi Bàn là danh thắng được biết đến nhiều nhất ở Cape Town, cửa ngõ vào châu Phi.\r\n<span style=\\\"font-size: 0.857em;\\\"></span></div>', 'thegioi1.jpg', '', '2021-11-02', 'thuong', '2'),
(5, 'Phi hành gia thu hoạch mẻ ớt vũ trụ đầu tiên', 'Khoa học', '<div>Các phi hành gia thu hoạch ớt sau khoảng 4 tháng trồng trên Trạm Vũ trụ Quốc tế (ISS) để phân tích và chế biến thành món ăn.\r\n<div>Các phi hành gia hôm 29/10 thu hoạch mẻ ớt đầu tiên trồng trên Trạm Vũ trụ Quốc tế (ISS). Những cây ớt được trồng từ tháng 7 theo thí nghiệm Plant Habitat-04, một trong những thí nghiệm thực vật phức tạp nhất trên trạm ISS đến nay vì ớt mất nhiều thời gian để phát triển hơn các loại cây trước như rau diếp, cúc ngũ sắc và củ cải. Ớt có thể tăng hoặc giảm độ cay tùy vào lượng nước chúng nhận được và ảnh hưởng của việc sống trong điều kiện không trọng lực.\r\n<div>Sau khi thu hoạch, các phi hành gia làm sạch ớt, sau đó nếm thử một số quả ớt đỏ, xanh, và thực hiện khảo sát về hương vị cũng như kết cấu. Phi hành gia NASA Megan McArthur sau đó làm \"bánh taco vũ trụ\" từ ớt, thịt bò fagita, atisô và cà chua khô bổ sung nước.\r\n\r\n<span style=\\\"font-size: 0.857em;\\\"></span></div>', 'khoahoc1.png', 'publish', '2021-11-02', 'thuong', '3'),
(6, 'Top 5 đội bóng chuyền nữ tham dự nhiều mùa giải VĐQG Việt Nam', 'Thể thao', '<div>Năm 2004 đánh dấu bước chuyển mình của bóng chuyền Việt Nam khi giải đấu cao nhất quốc nội được đổi tên thành giải bóng chuyền VĐQG. Tính từ thời điểm này, giải đấu đã dẫn chuyển mình sang chuyên nghiệp với nhiều kỳ vọng của nhà lãnh đạo và bản thân các đội bóng trong cả nước. 18 mùa giải sắp đi qua và giải đấu chứng kiến nhiều thăng trầm của không ít cá nhân, đội bóng và ngay cả bản thân giải đấu.\r\n<div>1 - BTL Thông tin - FLC, VTV Bình Điền Long An và Ngân hàng Công thương\r\nĐây là 3 đội bóng chuyền nữ giữ vị trí thống lĩnh trên bảng xếp hạng các đội tham dự nhiều mùa giải VĐQG Việt Nam tính tới mùa giải 2021. Sau 18 mùa giải bóng chuyền VĐQG những cái tên trên chưa “lỡ nhịp” bất kỳ một mùa giải nào.\r\n<div>2 - Thái Bình\r\nCái nôi của bóng chuyền Việt Nam là đội bóng xếp thứ 2 trong bảng danh sách đặc biệt này khi tham gia 17/18 mùa giải VĐQG. Năm 2019, Thái Bình đang trên đà lao dốc và phải bước vào trận chung kết ngược trước đối thủ Tiến Nông Thanh Hóa. Trận đấu này, Bùi Thị Huệ và các đồng đội mặc dù dẫn trước 2-0 nhưng sự chùng xuống sau đó giúp đối thủ vượt lên và giành luôn tấm vé trụ hạng, đẩy đội bóng giàu truyền thống bậc nhất làng bóng chuyền nữ xuống thi đấu tai giải hạng A mùa giải 2020.\r\n<div>3 - Thanh Hóa\r\nĐội bóng nhiều năm qua đối diện với những khó khăn về tài chính là các cô gái bóng chuyền Thanh Hóa đang là đội bóng xếp thứ 3 trong danh sách các đội tham dự nhiều mùa giải VĐQG Việt Nam. Họ tham dự 16/18 mùa giải VĐQG tính tới năm 2021. Tại giải đấu này nhiều mùa giải Thanh Hóa lọt vào Top 4 đội bóng chuyền nữ mạnh nhất Việt Nam mặc dù chưa 1 lần lên ngôi vô địch.\r\n<div>4 - Truyền hình Vĩnh Long (Ninh Bình Doveco) - Than Quảng Ninh\r\nNằm trong Top 4 chính là đội bóng vừa được chuyển giao cho Ninh Bình và hiện tại đang mang tên Ninh Bình Doveco. Ninh Bình Doveco đã góp mặt tổng cộng 15/18 mùa giải bóng chuyền VĐQG (gộp cả thành tích của Truyền hình Vĩnh Long).\r\nCùng đứng tại Top 4 với Ninh Bình Doveco là đội bóng giàu truyền thống Than Quảng Ninh. Năm 2021 là một năm đặc biệt với đội bóng chuyền nữ đất Mỏ bởi họ đầu tư thuộc hàng mạnh nhất cả nước. Trên ghế huấn luyện là thuyền trưởng đội tuyển bóng chuyền nữ quốc gia cùng rất nhiều ngôi sao sáng của bóng chuyền Việt Nam.\r\n<div>5 - Hải Dương\r\nTrong Top 5 đội bóng chuyền nữ tham dự nhiều mùa giải VĐQG Việt Nam, Hải Dương là đội tham gia 12/18 mùa giải. Mùa giải 2020 sau trận chung kết ngược để thua các cô gái Hải Tiến Thanh Hóa, thầy trò HLV Nguyễn Mạnh Hà ngậm ngùi trở lại mái nhà xưa sau đúng 1 năm lên hạng nhường chỗ cho các cô gái bóng chuyền Thái Bình đã vô địch giải Hạng A toàn quốc và giành tấm vé lên hạng thi đấu tại mùa giải 2021.\r\n\r\n\r\n<span style=\\\"font-size: 0.857em;\\\"></span></div>', 'thethao1.jfif', '', '2021-11-04', 'thuylinh', '5'),
(7, 'Loạt phim gây chú ý trên màn ảnh nhỏ tháng 11', 'Giair trí', '<div>Điều gì sẽ xảy ra khi 1 công ty mai mối đặt văn phòng cạnh 1 văn phòng tư vấn ly hôn? Đó là câu chuyện xảy ra trong sitcom Văn phòng đại chiến (19g55 từ thứ Hai đến thứ Năm kể từ ngày 3/11 trên HTV7, đạo diễn Dương Ngọc Của).\r\n2 ngành nghề trái ngược nhau này là nguồn cơn dẫn đến mối tình “oan gia ngõ hẹp” giữa các chàng trai làm việc ở công ty mai mối và các nữ nhân viên trẻ đẹp của văn phòng tư vấn ly hôn bởi một bên luôn tìm cách bảo vệ và giành quyền lợi về vật chất lẫn tinh thần cho những người phụ nữ, còn một bên luôn mong muốn giúp đỡ cho các đối tượng muốn tìm được một nửa của cuộc đời.\r\nTrailer phim Văn phòng đại chiến\r\nNhân vật chính trong phim là Kiều, người đứng đầu văn phòng tư vấn ly hôn. Vốn là một cô gái mang định kiến với đàn ông sau khi chứng kiến hôn nhân của cha mẹ tan vỡ nên khi chạm mặt với Lâm, giám đốc công ty mai mối, một người đàn ông đã ly thân, cả hai thường xuyên mâu thuẫn nhau nơi công sở vì tính cách, quan điểm sống, công việc khác biệt.\r\nTương tự, trong phim còn có một bộ đôi “oan gia” khác là Mai, một cô nàng mê các “oppa” Hàn Quốc và Sơn, một chàng trai lù khù. Văn phòng đại chiến là bộ phim khá đặc biệt vì được ghi hình theo phương thức “3 tại chỗ” vào thời điểm TPHCM vừa hết thời gian giãn cách vào ngày 1/10 qua. Phim có sự tham gia của dàn diễn viên gồm Anh Tài, Vũ Ngọc Ánh, Quang Thái, Lê Lộc, Hồ Bích Trâm…\r\nNếu như Văn phòng đại chiến xoay quanh câu chuyện công sở thì Thương ngày nắng về (21g40 thứ Hai, Ba, Tư kể từ ngày 15/11 trên VTV1) đề cập chủ đề gia đình. Đây là tác phẩm mới của đạo diễn Bùi Tiến Huy, có tên cũ là Con yêu của mẹ. Nội dung xoay quanh hành trình bà Nga, một người phụ nữ bán bún riêu, nuôi ba cô con gái và cậu em trai khôn lớn.\r\nNhân vật chính trong phim là bà Nga đánh dấu sự trở lại của NSƯT Thanh Quý sau vai diễn bà mẹ ghê gớm, “sắt đá” trong Lựa chọn số phận. Phim cũng đánh dấu sự tái hợp của diễn viên Hồng Đăng và Lan Phương sau phim Cả một đời ân oán (2017). Trong phim cả hai tiếp tục vào vai một cặp vợ chồng. Ngoài ra khán giả còn gặp lại Doãn Quốc Đam, Đình Tú- hai gương mặt có vai diễn ấn tượng trong phim ăn khách Hướng dương ngược nắng.\r\nMột điểm đặc biệt ở Thương ngày nắng về là phim truyền hình đầu tiên ứng dụng công nghệ mới để làm phim. Cụ thể là công nghệ tạo mưa giúp tạo ra những giọt nước mưa đều đặn, có thể tùy chỉnh to nhỏ tùy ý.\r\nSau khi tạm hoãn thời điểm phát sóng như đã thông báo vào ngày 28/11, phim Phố trong làng (đạo diễn NSƯT Mai Hiền, phát sóng 21g từ thứ hai đến thứ sáu từ ngày 8/11 trên VTV1) chính thức lên sóng. Phim nói về cuộc chiến chống lại tệ nạn xã hội ở vùng nông thôn Bắc bộ thông qua câu chuyện của Nam, một chiến sĩ cảnh sát hình sự về nhận nhiệm vụ ở một làng quê. Trong phim, khán giả gặp lại nhiều gương mặt quen thuộc như: Anh Tuấn, Ngọc Anh, Thu Minh, Mạnh Đạt...\r\nNgoài 3 phim Việt kể trên, màn ảnh nhỏ tháng 11 còn gây chú ý với phim cổ trang Trung Quốc Thái cổ thần vương (18g hàng ngày từ 29/11 trên VTV3). Thái cổ thần vương thu hút khán giả không chỉ vì chuyển thể từ nguyên tác nổi tiếng là cuốn tiểu thuyết tiên hiệp cùng tên của Tịnh Vô Ngân mà còn ở sự kết hợp lần đầu tiên giữa 2 diễn viên trẻ đang lên Thịnh Nhất Luân và Vương Tử Văn trên màn ảnh nhỏ. Nội dung phim xoay quanh mối duyên giữa Tần Vấn Thiên (Thịnh Nhất Luân đóng) và đệ nhất thế gia của Nghệ Quốc – Mạc Khuynh Thành (Vương Tử Văn đóng).\r\nTần Vấn Thiên là con nuôi của Tần gia vốn được định duyên cho Bạch Thu Tuyết, nhưng khi phát hiện ra bộ mặt thật của gia đình thông gia, anh đã tìm cách trốn thoát. Sự cố bất ngờ này đưa Vấn Thiên đến một hành trình không tưởng, gặp gỡ nhiều người bạn tâm giao. Trong đó đáng chú ý là đệ nhất mỹ nữ Sở quốc - Mạc Khuynh Thành. Cả hai đã sát cánh cùng nhau chiến đấu lại ma tộc. Điềm nổi trội ở phim ngoài dàn diễn viên trẻ đẹp là tạo hình, phục trang và kỹ xảo được đầu tư chỉn chu, hoành tráng và có những khung hình rất đẹp của nhiều thắng cảnh ở Chiết Giang, Vân Nam, Mông Cổ.\r\n\r\n<span style=\\\"font-size: 0.857em;\\\"></span></div>', 'giaitri1.jfif', '', '2021-11-04', 'thuylinh', '6'),
(8, 'Yêu tiếng Việt qua game show', 'Giải trí', '<div>Chỉ qua năm số phát sóng, chương trình Vua tiếng Việt (20g30 thứ sáu hằng tuần trên VTV3) đã sớm gây tiếng vang, nhanh chóng lọt vào top 10 chương trình ăn khách nhất tháng Chín nhờ định dạng và nội dung mới lạ. Như tên gọi, chương trình là một sân chơi ngôn ngữ mà ở đó, người chơi phải vượt qua những câu đố, những thử thách liên quan đến từ ngữ, ngữ pháp tiếng Việt.\r\nCấp độ dễ nhất là viết đúng chính tả, sắp xếp các chữ thành từ có nghĩa, điền vào chỗ trống các câu ca dao, tục ngữ, câu thơ (vòng một: Phản xạ). Khó hơn một chút là giải nghĩa từ cho người khác đoán (vòng hai: Giải nghĩa), sắp xếp từ thành câu trong bài thơ, bài hát (vòng ba: Xâu chuỗi). Khó nhất là làm thơ theo thể loại quy định từ, cụm từ đã cho (vòng bốn: Soán ngôi). Thử thách nào cũng khiến người chơi và khán giả toát mồ hôi. Rất nhiều từ ít phổ biến (chẳng hạn cùi dìa, mông sấn, quềnh quàng, sỏ gà…) được chương trình nhắc đến khiến người xem phải ngạc nhiên vì kho tàng tiếng mẹ đẻ quá phong phú, mênh mông. Sự thú vị nằm ở chỗ để vượt qua các thử thách, ngoài sự nhanh nhẹn, vốn liếng từ ngữ bao quát, người chơi còn phải thông thạo thơ nhạc, có phông nền văn hóa tốt, cũng như phải có các trải nghiệm vùng miền, mới đưa ra được đáp án chính xác.\r\nSự phức tạp của tiếng Việt và cách chương trình tạo ra tính tương tác với khán giả (khuyến khích khán giả tham gia các thử thách tiếng Việt trên hệ thống fanpage, TikTok; nhiều câu đố, kiến thức, thông tin cập nhật trong chương trình bắt nguồn từ chính những bình luận, tin nhắn của khán giả gửi về), đã khiến một chương trình thoạt đầu tưởng như khô khan bỗng trở nên thu hút.\r\nTương tự Vua tiếng Việt, mùa một chương trình Thử thách bất ngờ (phát lúc 21g15 thứ Sáu hằng tuần trên HTV9) cũng “đánh đố” người chơi và khán giả bằng những thử thách khó nhằn như kiểm tra vốn từ (vòng một: Biệt đội ngôn ngữ), kiểm tra chính tả và ngôn ngữ (vòng hai: Câu hỏi ngôn ngữ), sắp xếp tổ hợp âm tiết thành câu có nghĩa rồi kể thành một câu chuyện (vòng ba: Câu chuyện ngôn ngữ) và giải nghĩa đoán từ (vòng bốn: Thử thách bất ngờ). So với Vua tiếng Việt, độ khó của Thử thách bất ngờ không hề thua kém, trong đó phần tìm từ đồng nghĩa hoặc trái nghĩa cũng “hành” nhiều người chơi và khán giả, không khác gì yêu cầu nhận diện từ loại ở Vua Tiếng Việt. \r\nCó hiểu mới yêu\r\nGame show hiện nay đa dạng hơn về chủ đề lẫn định dạng, nhưng một game show thuần Việt ngay từ cách lựa chọn nội dung đề cập như Thử thách bất ngờ và Vua tiếng Việt là khá hiếm trên màn ảnh nhỏ. Vì vậy, sự có mặt của game show tiếng Việt là nỗ lực đáng khen của những người làm chương trình. Ở góc độ chuyên môn, thạc sĩ Nguyễn Phước Bảo Khôi - giảng viên Khoa Ngữ văn, Đại học Sư Phạm TP.HCM, cố vấn kịch bản và là người thẩm định câu trả lời người chơi của chương trình Thử thách bất ngờ - đánh giá cao mục đích ý nghĩa của các game show tiếng Việt. Anh chia sẻ cái khó của vai trò cố vấn: “Những trò chơi truyền hình xoay quanh chủ đề tiếng Việt tạo ra sự cân bằng về nhu cầu cho người xem, vừa mang tính giải trí, vừa cung cấp ít nhiều kiến thức. Khi nhận lời cố vấn chương trình, tôi phải chuẩn bị tinh thần đón nhận những phản ứng nhất định. Đó là do trong tiếng Việt vẫn còn một số hiện tượng mà ngay cả giới chuyên môn cũng chưa hoàn toàn đồng thuận với nhau. Thêm vào đó, trên thực tế vẫn có một số khác biệt giữa tiếng Việt trong đời sống và tiếng Việt như một đối tượng của khoa nghiên cứu ngôn ngữ. Do vậy, cố vấn phải tìm cách dung hòa các quan điểm. Mọi sự kiến giải đều phải căn cứ vào tài liệu, chuyên luận uy tín. Khi xem lại chương trình, tôi có chút ngậm ngùi khi việc sử dụng đúng tiếng Việt và giữ gìn sự trong sáng của tiếng Việt vẫn chưa được một số người chơi ý thức đầy đủ và quan tâm đúng mức”. \r\nCó thể thấy những tranh cãi về tiếng Việt như lo ngại của những người làm chương trình hoàn toàn không thừa, vì đã xuất hiện phản biện về chuyên môn trong Vua tiếng Việt. Điển hình là trong tập hai, khi ban cố vấn chương trình giải thích từ “càn rỡ” để đi đến kết luận là “Tính từ bổ ngữ cho động từ”, đã khiến người xem “dậy sóng” vì không đủ sức thuyết phục. Khán giả cũng không hài lòng khi người dẫn chương trình và người chơi thỉnh thoảng dùng tiếng Anh chen vào ở một chương trình tôn vinh tiếng Việt. Còn trong Thử thách bất ngờ, ở tập 23, chương trình đưa hình ảnh con cóc để gợi ý câu thành ngữ “Cốc mò cò xơi”, trong khi từ “cốc” trong câu thành ngữ là chỉ chim cốc. Để xảy ra lỗi chính tả sai cơ bản ở một chương trình như vậy là những sơ suất khó chấp nhận. \r\nTruyền hình, ngoài chức năng giải trí còn là phương tiện giáo dục, và sự xuất hiện của những game show như Thử thách bất ngờ, Vua tiếng Việt mang lại ý nghĩa tích cực, giá trị nhân văn. Hiện nay, không khó để bắt gặp những lỗi câu chữ trong nội dung các văn bản, trong phát ngôn của nhiều người trên phương tiện truyền thông.\r\nSự lên ngôi của văn hóa mạng - môi trường vốn dung túng những từ ngữ, câu chữ buông tuồng, dễ dãi - càng khiến nỗi lo về sự mai một tiếng Việt ngày một lớn. Việc khám phá, giữ gìn tiếng Việt trở thành yêu cầu cấp bách. Những game show tiếng Việt như Thử thách bất ngờ, Vua tiếng Việt không chỉ giúp người chơi, khán giả hiểu được vẻ đẹp và sự tinh tế của tiếng Việt, mà còn khiến chúng ta thêm yêu quý, trân trọng giá trị tiếng mẹ đẻ. \r\n\r\n\r\n<span style=\\\"font-size: 0.857em;\\\"></span></div>', 'giaitri2.jfif', '', '2021-11-05', 'thuylinh', '6'),
(9, 'Nhà rường - “Di sản sống” & hướng bảo tồn thích nghi', 'Văn hóa', '<p style=\"margin: 0in; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font size=\"5\"><strong><span style=\"font-family:Roboto;color:#696161\">“Sống chi rứa cho khổ…”</span></strong><span style=\"font-family:Roboto;color:#696161\"><o:p></o:p></span></font></p>\r\n\r\n<p style=\"margin: 0in 0in 7.5pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Roboto;\r\ncolor:#696161\"><font size=\"5\">Tạt xe vào một cửa hàng bán chậu và các loại giá thể trồng hoa\r\ntrên một con đường trung tâm thành phố, tôi ngạc nhiên xen lẫn thán phục khi\r\nnhận ra giữa lòng thành phố và trên con đường đắc địa thế này mà người bán chậu\r\nvẫn giữ được khu đất mênh mông đến thế. Bởi tâm lý thường tình, và thực tế đã\r\nrất nhiều người “áp dụng”, là cắt bớt một phần để bán, thu về một đống tiền vừa\r\nđể xây sửa nhà cửa, vừa để có vốn làm ăn hoành tráng, việc gì phải còm lưng đi\r\nbán lẻ từng chiếc chậu, từng bịch phân như vậy. Gia đình này quả thật quý hóa.<o:p></o:p></font></span></p>\r\n\r\n<p style=\"margin: 0in 0in 7.5pt; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:Roboto;\r\ncolor:#696161\"><font size=\"5\">Chừng như biết suy nghĩ của tôi, người chủ cửa hàng kéo tay, chỉ\r\ncho tôi ngôi nhà rường bên trong và khoe: “Giữ cái nhà ấy mới quý tề. Kỳ công\r\nlắm…”. Từ ngạc nhiên này đến ngạc nhiên khác, tôi không ngờ khuất sau những\r\nchồng hàng hóa cao ngất ngưởng kia là một ngôi nhà rường với hệ thống cột kèo\r\nbằng gỗ lên nước đen thui, trông rất xưa cũ. Tôi đưa ngón tay cái, muốn bày tỏ\r\nsự thán phục của mình, rồi chào để rời đi. Người chủ mặt mày rạng rỡ, vẻ rất\r\nmãn nguyện.</font><o:p></o:p></span></p>', '28338100_1636525452.png', 'draft', '2021-11-10', 'thuylinh', '4'),
(11, 'HOA GIẢ QUỲ', 'Thiên nhiên', '<div class=\"bi6gxh9e\" style=\"margin-bottom: 8px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(5,=\"\" 5,=\"\" 5);=\"\" animation-name:=\"\" none=\"\" !important;=\"\" transition-property:=\"\" !important;\"=\"\"><span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql lr9zc1uh jq4qci2q a3bd9o3v b1v8xokw oo9gr5id\" style=\"line-height: 1.3333; overflow-wrap: break-word; max-width: 100%; min-width: 0px; font-family: inherit; color: var(--primary-text); word-break: break-word; animation-name: none !important; transition-property: none !important;\"><font size=\"4\">“<span style=\"font-family: inherit; animation-name: none !important; transition-property: none !important;\"><i style=\"animation-name: none !important; transition-property: none !important;\">Tôi biết rằng em mãi mãi không bao giờ thuộc về tôi, em thuộc về vùng đất lạnh đã sinh ra và nuôi dưỡng em là bông hoa của vùng đất đó. Tạm biệt em, tạm biệt loài hoa dã quỳ. Hãy sống hạnh phúc với những gì thuộc về em – em nhé</i></span>!”</font></span></div><div class=\"bi6gxh9e\" style=\"margin-bottom: 8px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(5,=\"\" 5,=\"\" 5);=\"\" animation-name:=\"\" none=\"\" !important;=\"\" transition-property:=\"\" !important;\"=\"\"><span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql lr9zc1uh jq4qci2q a3bd9o3v b1v8xokw oo9gr5id\" style=\"line-height: 1.3333; overflow-wrap: break-word; max-width: 100%; min-width: 0px; font-family: inherit; color: var(--primary-text); word-break: break-word; animation-name: none !important; transition-property: none !important;\"><font size=\"4\">Hoa dã quỳ – một loài hoa lộng lẫy với sắc vàng rực cả khung trời mỗi khi vào mùa hoa nở. Không chỉ là loài hoa tượng trưng cho tình yêu, sức sống mãnh liệt và sự thủy chung mà hoa dã quỳ còn là biểu tượng của lòng kiêu hãnh, không khuất phục, hi sinh để bảo vệ người yêu. Bản chất là một loài hoa dại mang trong mình nét đẹp mê mẩn, đắm say, hoa dã quỳ luôn khiến người ta phải xao xuyến, rung động mỗi khi nó khoe sắc.</font></span></div><div class=\"bi6gxh9e\" style=\"margin-bottom: 8px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(5,=\"\" 5,=\"\" 5);=\"\" animation-name:=\"\" none=\"\" !important;=\"\" transition-property:=\"\" !important;\"=\"\"><span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql lr9zc1uh jq4qci2q a3bd9o3v b1v8xokw oo9gr5id\" style=\"line-height: 1.3333; overflow-wrap: break-word; max-width: 100%; min-width: 0px; font-family: inherit; color: var(--primary-text); word-break: break-word; animation-name: none !important; transition-property: none !important;\"><font size=\"4\">Mùa hoa Dã Quỳ tại Gia Lai thường diễn ra vào tháng 11 hàng năm tại núi lửa Chư Đăng Ya và thung lũng Glar. Mùa nắng ấm và tiết trời se se lạnh của Tây Nguyên rơi vào dịp cuối năm cũng là mùa các loài hoa dại khoe sắc rực vàng những cánh rừng, tím hồng những rảng cỏ bên những đồi thông cổ thụ của phố núi Gia Lai. Nhiệt độ ở Chư Đăng Ya luôn cao hơn 1-2 độ so với các nơi khác ở Gia Lai do đất bazan núi lửa đã trải qua nhiều ngày khô hạn. Tuy nhiên, hoa cỏ, cây cối tại đây vẫn xanh tươi.</font></span></div><div class=\"bi6gxh9e\" style=\"margin-bottom: 8px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(5,=\"\" 5,=\"\" 5);=\"\" animation-name:=\"\" none=\"\" !important;=\"\" transition-property:=\"\" !important;\"=\"\"><span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql lr9zc1uh jq4qci2q a3bd9o3v b1v8xokw oo9gr5id\" style=\"line-height: 1.3333; overflow-wrap: break-word; max-width: 100%; min-width: 0px; font-family: inherit; color: var(--primary-text); word-break: break-word; animation-name: none !important; transition-property: none !important;\"><font size=\"4\">Trên đường đến đây, du khách sẽ đi qua thắng cảnh hồ T\'nưng (hay còn gọi là Biển Hồ) - địa điểm nổi tiếng của tỉnh Gia Lai, được biết đến nhiều qua ca khúc \"Đôi mắt Pleiku\". muốn ngắm trọn vẻ đẹp của núi lửa Chư Đăng Ya, bạn phải mất khoảng 20 phút đi bộ để leo lên đỉnh núi. Từ đây bạn có thể ngắm trọn vẹn một vùng trời Gia Lai thanh bình với những mảng xanh của núi rừng, màu vàng của hoa dã quỳ hòa rực rỡ trên nền đất bazan.</font></span></div><div class=\"bi6gxh9e\" style=\"margin-bottom: 8px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(5,=\"\" 5,=\"\" 5);=\"\" animation-name:=\"\" none=\"\" !important;=\"\" transition-property:=\"\" !important;\"=\"\"><span class=\"d2edcug0 hpfvmrgz qv66sw1b c1et5uql lr9zc1uh jq4qci2q a3bd9o3v b1v8xokw oo9gr5id\" style=\"line-height: 1.3333; overflow-wrap: break-word; max-width: 100%; min-width: 0px; font-family: inherit; color: var(--primary-text); word-break: break-word; animation-name: none !important; transition-property: none !important;\"><font size=\"4\">Đây được coi là “cung đường vàng”, trọng điểm du lịch quan trọng nhất của tỉnh Gia Lai hiện nay, gồm: Biển Hồ - viên ngọc bích giữa mênh mông đất đỏ Tây Nguyên, con đường thông bạt ngàn xã Nghĩa Hưng, đồi chè xanh ngát, chùa Bửu Minh,... núi lửa Chư Đăng Ya. Mùa hoa thường kéo dài đến hết tháng 12 hàng năm và nở đẹp nhất trong khoảng 2 tuần. Dã quỳ khoe sắc trong nắng sớm. Hoa còn có các tên gọi khác như cúc quỳ, sơn quỳ... thuộc họ cúc, có màu vàng cam. Cuối tháng 10 đến đầu tháng 11 hàng năm, loài hoa này đồng loạt bung nở trên nhiều địa phương của Việt Nam, như vườn quốc gia Ba Vì (Hà Nội) và các tỉnh Lâm Đồng, Gia Lai.</font></span></div>', '66734800_1636638271.jpg', 'publish', '2021-11-11', 'thuthuong', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`) VALUES
(1, 'Góc nhìn'),
(2, 'Thế giới'),
(3, 'Khoa học'),
(4, 'Văn hóa - Nghệ thuât'),
(5, 'Thể thao'),
(6, 'Giải trí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `editors_choice`
--

CREATE TABLE `editors_choice` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `editors_choice`
--

INSERT INTO `editors_choice` (`id`, `blog`) VALUES
(2, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email`
--

CREATE TABLE `email` (
  `ID` int(11) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(40) DEFAULT NULL,
  `twitter` varchar(40) DEFAULT NULL,
  `googleplus` varchar(40) DEFAULT NULL,
  `pinterest` varchar(40) DEFAULT NULL,
  `dribble` varchar(40) DEFAULT NULL,
  `comments_script` text DEFAULT NULL,
  `sharing_script` text DEFAULT NULL,
  `javascript` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `links`
--

INSERT INTO `links` (`id`, `facebook`, `twitter`, `googleplus`, `pinterest`, `dribble`, `comments_script`, `sharing_script`, `javascript`) VALUES
(1, 'http://www.facebook.com', '', '', '', '', '<div class=\"fb-comments container\" data-href=\"http://www.uoecu.org/newsview.php?id=<?php echo $row[\'id\'];?>\" data-numposts=\"20\" width=\"100%\"></div>', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `membership_grouppermissions`
--

CREATE TABLE `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT 0,
  `allowEdit` tinyint(4) NOT NULL DEFAULT 0,
  `allowDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(1, 2, 'titles', 1, 3, 3, 3),
(2, 2, 'links', 1, 3, 3, 3),
(3, 2, 'blog_categories', 1, 3, 3, 3),
(4, 2, 'blogs', 1, 3, 3, 3),
(5, 2, 'banner_posts', 1, 3, 3, 3),
(6, 2, 'editors_choice', 1, 3, 3, 3),
(32, 3, 'titles', 0, 0, 0, 0),
(33, 3, 'links', 0, 0, 0, 0),
(34, 3, 'blog_categories', 0, 3, 0, 0),
(35, 3, 'blogs', 1, 1, 1, 1),
(36, 3, 'editors_choice', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `membership_groups`
--

CREATE TABLE `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Nhóm ẩn danh', 0, 0),
(2, 'Admins', 'Nhóm quản trị viên', 0, 1),
(3, 'authors', 'chứa tất cả các tác giả khách mời', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `membership_userpermissions`
--

CREATE TABLE `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT 0,
  `allowEdit` tinyint(4) NOT NULL DEFAULT 0,
  `allowDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `membership_userrecords`
--

CREATE TABLE `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'titles', '1', 'admin', 1524766759, 1636710993, 2),
(2, 'links', '1', 'admin', 1524766827, 1524878963, 2),
(3, 'blog_categories', '1', 'admin', 1524773915, 1524773915, 2),
(4, 'blog_categories', '2', 'admin', 1524773923, 1524773923, 2),
(5, 'blog_categories', '3', 'admin', 1524773931, 1524773931, 2),
(6, 'blog_categories', '4', 'admin', 1524773941, 1524773941, 2),
(7, 'blog_categories', '5', 'admin', 1524773974, 1524773974, 2),
(9, 'banner_posts', '1', 'admin', 1524779492, 1524779492, 2),
(13, 'editors_choice', '1', 'admin', 1524799889, 1524799889, 2),
(14, 'editors_choice', '2', 'admin', 1524799903, 1524799903, 2),
(17, 'blog_categories', '6', '', 1524858044, 1524858044, 3),
(19, 'blogs', '8', 'admin', 1636300226, 1636300226, 2),
(20, 'blog_categories', '7', 'admin', 1636300634, 1636300634, 2),
(21, 'blog_categories', '8', 'admin', 1636300657, 1636300657, 2),
(22, 'blogs', '9', 'thuylinh', 1636525397, 1636681375, 3),
(23, 'blogs', '11', 'thuthuong', 1636638211, 1636638271, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `membership_users`
--

CREATE TABLE `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text DEFAULT NULL,
  `custom2` text DEFAULT NULL,
  `custom3` text DEFAULT NULL,
  `custom4` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'lovenguyen510@gmail.com', '2021-11-07', 2, 0, 1, 'Nguyen Thi Thu Thuong', 'So 2 Vo Oanh, Phuong 25', 'Ho Chi Minh', '0985471774', '', NULL, NULL),
('guest', NULL, NULL, '2021-11-11', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2021-11-11', NULL, NULL),
('thuong', '202cb962ac59075b964b07152d234b70', 'lovenguyen510@gmail.com', '2021-11-07', 2, 0, 1, 'Nguyen Thi Thu Thuong', 'So 2 Vo Oanh, Phuong 25', 'Ho Chi Minh', 'Quan Binh Thanh', '', NULL, NULL),
('thuthuong', 'e10adc3949ba59abbe56e057f20f883e', '1951120061@sv.ut.edu.vn', '2021-11-11', 3, 0, 1, '', '', '', '', 'member signed up through the registration form.', NULL, NULL),
('thuylinh', 'ea3005c2df146c5f22485b264af65d8c', '1951120034@sv.ut.edu.vn', '2021-11-10', 3, 0, 1, 'Lâm Thị Thùy Linh', 'Tiền Giang', '', '', 'member signed up through the registration form.', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_hits`
--

CREATE TABLE `page_hits` (
  `page` varchar(255) CHARACTER SET utf8 NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `page_hits`
--

INSERT INTO `page_hits` (`page`, `count`) VALUES
('7 kỳ quan thiên nhiên mới của thế giới', 6),
('HOA GIẢ QUỲ', 4),
('Hộp xốp trong giãn cách', 4),
('Loạt phim gây chú ý trên màn ảnh nhỏ tháng 11', 1),
('Người miền Trung', 4),
('Người vẽ cố nhạc sĩ Trịnh Công Sơn bằng ánh sáng', 6),
('Nhà rường - “Di sản sống” & hướng bảo tồn thích nghi', 8),
('Phi hành gia thu hoạch mẻ ớt vũ trụ đầu tiên', 7),
('Top 5 đội bóng chuyền nữ tham dự nhiều mùa giải VĐQG Việt Nam', 3),
('Tuyển người ở Google', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `titles`
--

CREATE TABLE `titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `website_name` varchar(40) DEFAULT NULL,
  `tagline` varchar(40) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `keywords` varchar(220) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `bannertext1` varchar(150) DEFAULT NULL,
  `bannertext2` varchar(150) DEFAULT NULL,
  `bannertext3` varchar(150) DEFAULT NULL,
  `bannertext4` varchar(150) DEFAULT NULL,
  `detailed_description` text DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `googlemap` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `titles`
--

INSERT INTO `titles` (`id`, `website_name`, `tagline`, `icon`, `keywords`, `short_description`, `bannertext1`, `bannertext2`, `bannertext3`, `bannertext4`, `detailed_description`, `address`, `email`, `phone`, `googlemap`) VALUES
(1, 'News Express  ', '  HTL News Express', 'tuong.jpg', 'blog,tech blog,tricks,hacks,technology news,fantastic blog', 'Đây là trang web tin tức tin cậy. Quý vị có thể đóng góp tài nguyên cho chúng tôi qua mục contact. Chúc quý vị và các bạn có những trải nghiệm tuyệt vời tại News Express.h', 'Tạo phong cách sống <span> bạn mong muốn </span>', 'Tham gia có mục đích <span> và sáng tạo </span>', 'Tạo phong cách sống <span> bạn mong muốn </span>', 'Tham gia có mục đích <span> và sáng tạo </span>', 'Đây là trang web tin tức tin cậy, được cập nhật hàng giờ. Quý vị có thể đăng ký tài khoản và gửi bài cho chúng tôi qua mục contact.\r\nNhững đóng góp quý báu của các bạn sẽ được chúng tôi xét duyệt và đăng lên. Chúng tôi sẽ gửi nhuận bút cho những bài phù hợp, xác thực được đăng tải.\r\nChúc quý vị và các bạn có những trải nghiệm tuyệt vời tại News Express!', 'Bình Thạnh, Tp.HCM', 'lovenguyen510@gmail.com', '0985471774', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.0835321075647!2d106.71489441462275!3d10.804914192302213!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529ee6c5d3563%3A0xbe1be1c17b50b3f3!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBHaWFvIHRow7RuZyBW');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visitor_info`
--

CREATE TABLE `visitor_info` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time_accessed` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `visitor_info`
--

INSERT INTO `visitor_info` (`id`, `ip_address`, `user_agent`, `time_accessed`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:10:00'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:19:08'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:27:40'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:27:55'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:28:01'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:28:12'),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:28:19'),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:28:22'),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:28:29'),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:28:32'),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:28:35'),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:28:38'),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:29:05'),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:29:09'),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:29:18'),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:29:25'),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:29:28'),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:29:51'),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:29:57'),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:30:00'),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:30:07'),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:30:15'),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:39:41'),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:40:41'),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2021-11-07 16:41:27'),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:26:10'),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:27:34'),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:28:20'),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:28:42'),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:26'),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:38'),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:41'),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:43'),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:45'),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:48'),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:51'),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:53'),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:56'),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:59'),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:02'),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:05'),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:07'),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:10'),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 19:08:04'),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 19:08:14'),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:43:06'),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:47:01'),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:47:08'),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:48:58'),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:49:18'),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 22:22:28'),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:41:41'),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:43:58'),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:46:23'),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-07 15:17:47'),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-07 15:17:58'),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 04:53:56'),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 04:56:57'),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 05:54:15'),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:02:48'),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:04:19'),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:11:51'),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:14:26'),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:17:15'),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:25:58'),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:46:17'),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:51:31'),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:52:04'),
(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:59:11'),
(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 06:59:40'),
(71, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:00:55'),
(72, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:00:59'),
(73, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:03:11'),
(74, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:03:44'),
(75, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:05:32'),
(76, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:10:13'),
(77, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:10:28'),
(78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:10:33'),
(79, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:10:40'),
(80, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:10:46'),
(81, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:11:15'),
(82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:11:16'),
(83, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:17:51'),
(84, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:20:34'),
(85, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:20:54'),
(86, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:30:13'),
(87, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:38:51'),
(88, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:43:27'),
(89, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:47:44'),
(90, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 07:50:16'),
(91, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 08:11:38'),
(92, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 08:18:08'),
(93, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 08:18:12'),
(94, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 08:18:16'),
(95, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 08:18:21'),
(96, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 08:18:33'),
(97, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 08:51:57'),
(98, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 14:46:48'),
(99, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 14:47:02'),
(100, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44', '2021-11-10 15:29:39'),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-11 13:31:26'),
(102, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-11 13:31:43'),
(103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-11 14:13:21'),
(104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-11 14:13:26'),
(105, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-11 14:13:31'),
(106, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-11 14:13:36'),
(107, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-12 01:35:04'),
(108, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-12 10:27:15'),
(109, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2021-11-12 10:27:26');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner_posts`
--
ALTER TABLE `banner_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Chỉ mục cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `editors_choice`
--
ALTER TABLE `editors_choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog` (`blog`);

--
-- Chỉ mục cho bảng `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Chỉ mục cho bảng `membership_groups`
--
ALTER TABLE `membership_groups`
  ADD PRIMARY KEY (`groupID`);

--
-- Chỉ mục cho bảng `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Chỉ mục cho bảng `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  ADD PRIMARY KEY (`recID`),
  ADD UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  ADD KEY `pkValue` (`pkValue`),
  ADD KEY `tableName` (`tableName`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Chỉ mục cho bảng `membership_users`
--
ALTER TABLE `membership_users`
  ADD PRIMARY KEY (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Chỉ mục cho bảng `page_hits`
--
ALTER TABLE `page_hits`
  ADD PRIMARY KEY (`page`);

--
-- Chỉ mục cho bảng `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `visitor_info`
--
ALTER TABLE `visitor_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner_posts`
--
ALTER TABLE `banner_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `editors_choice`
--
ALTER TABLE `editors_choice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `email`
--
ALTER TABLE `email`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `membership_groups`
--
ALTER TABLE `membership_groups`
  MODIFY `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  MODIFY `recID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `visitor_info`
--
ALTER TABLE `visitor_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
