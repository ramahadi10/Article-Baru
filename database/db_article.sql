-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 11:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_article`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp(),
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `content`, `category`, `create_date`, `update_date`, `status`, `user_id`) VALUES
(8, 'aaaa', '<p>aa jadi update</p>', 'Anime', '2021-12-29 03:49:03', '2021-12-29 08:00:55', 'Publish', 1),
(9, 'eeee', '<p>eeeee</p>', 'Politik', '2021-12-29 03:51:25', NULL, 'Draft', 1),
(10, 'uuuu', '<p>uuuuu</p>', 'Teknologi', '2021-12-29 03:51:41', NULL, 'Thrash', 1),
(12, 'cobaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '<p>cobaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', 'kok', '2021-12-29 08:48:22', '2021-12-29 10:56:33', 'Publish', 1),
(13, 'SampaiUjungUsiaKita.', '<p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Namaku adalah Riko Agung Pratama, kawanku di kampus sering sekali memanggilku Agung, entah apa yang mereka pikirkan memanggilku dengan nama tengahku. Aku sedang kuliah di salah satu universitas swasta di Depok, dengan jurusan Sistem Komputer.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Pada waktu itu, tepat hari Jumat, dimana aku akan menuju ke Lab Robotika untuk menguji alat yang kubuat. Tapi, siapa sangka, sesampainya aku disana aku bertemu dengan dosen yang mengajarku pada semester 6 lalu. Dia adalah Pak Lingga, mengajar mata kuliah Matematika Diskrit waktu itu.</p>', 'CNT', '2021-12-29 08:56:55', '2021-12-29 10:56:21', 'Publish', 1),
(14, 'PersahabatanSejatiKita', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">Saat ini aku berada di kelas 3 SMP, setiap hari kujalani bersama dengan ketiga sahabatku yaitu Aris, Andri, dan Ana. Kita berempat sudah bersahabat sejak kecil.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">Suatu saat kami menulis surat perjanjian persahabatan di sobekan kertas yang dimasukkan ke dalam sebuah botol, kemudian botol tersebut dikubur di bawah pohon yang nantinya surat tersebut akan kami buka saat kami menerima hasil ujian kelulusan.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">Hari yang kami berempat tunggu akhirnya tiba, kami pun menerima hasil ujian dan hasilnya kita berempat lulus semua.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">Kami serentak langsung pergi berlari ke bawah pohon yang pernah kami datangi dan menggali tepat di mana botol yang dahulu dikubur berada.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">Kemudian, kami berempat membuka botol tersebut dan membaca tulisan yang dulu pernah kami tulis. Kertas tersebut bertuliskan “<em style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Kami berjanji akan selalu bersama untuk selamanya.</em>”</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">Keesokan hari, aris berencana untuk merayakan kelulusan kami berempat. Malamnya kami berempat pergi bersama ke suatu tempat dan di situlah saat-saat yang tidak bisa aku lupakan karena aris berencana untuk menyatakan perasannya kepadaku. Akhirnya aku dan anis berpacaran.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">Begitu juga dengan Andri, dia pun berpacaran dengan Ana. Malam itu sungguh malam yang istimewa untuk kami berempat. Kami pun bergegas untuk pulang.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">Ketika perjalanan pulang, entah mengapa perasaanku tidak enak.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">“Perasaanku&nbsp;<em style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">ngga</em>&nbsp;enak banget ya?” Ucapku penuh cemas.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\"><em style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">“Udahlah</em>&nbsp;ndi, santai aja, kita&nbsp;<em style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">ngga</em>&nbsp;bakalan kenapa-kenapa” jawab andri dengan santai.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">Tidak lama setelah itu, hal yang dikhawatirkan Nindi terjadi.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: &quot;Open Sans&quot;; vertical-align: baseline; color: rgb(51, 51, 51);\">“Arissss awasss! di depan ada juang!” Teriak Nindi.</p>', 'SBT', '2021-12-29 08:59:23', '2021-12-29 10:56:00', 'Publish', 1),
(16, 'ArtiKejujuranManusia', '<p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Waktu itu, saat aku masih duduk di bangku SMP, aku mengerti tentang apa itu kejujuran. Pilihan untuk berbohong dan jujur, hal itu yang aku hadapi saat aku menghadapi ujian sekolah. Saat ujian, teman sekelasku banyak yang mencontek dengan berbagai cara. Ada yang membawa catatan kecil hingga menyembunikan buku di bawah meja.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\"><span style=\"font-family: source_serif;\">“ Zul, lo mau nyontek ga? Gue bawa contekan nih” bisik Fadil di sebelahku saat ujian berlangsung.</span><br></p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">“Wih! Boleh juga” ucapku dengan mengambil kertas kecil darinya.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Pada saat itu, aku masih belum percaya buah dari sebuah kejujuran. Aku akan mencontek jika menghadapi ujian matematika, fisika hingga kimia, karena aku kurang begitu suka dengan angka. Hingga akhirnya pengumuman kenaikan kelas pun tiba, aku dan teman-temanku begitu tegang saaat menunggu nilai rapot yang akan diberikan.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Setelah kuterima rapot dari wali kelas, lalu wali kelasku mengatakan bahwa aku naik kelas. Namun, saat aku membuka rapot itu aku melihat nilai pelajaran matematika, fisika serta kimia mendapat nilai yang kurang memuaskan bahkan kurang dari rata-rata.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Saat itu ku merenung, bernostalgia di saat aku ujian dan mencontek di salah satu mata pelajaran tersebut, kemudian hasilnya mendapat nilai buruk. Sedangkan mata pelajaran yang lain yang aku kerjakan dengan kemampuanku meraih hasil yang baik.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Lalu hal tersebut aku terapkan untuk menghadapi ujian di kelas berikutnya. Ketika ujian nanti, diriku niatkan untuk berusaha jujur dalam mengerjakan soal yang diberikan, sesulit apapun. Kali ini materi yang telah kupelajari dan yang diajarkan guruku di kelas semuanya keluar. Tanganku menuliskan jawaban di LJK dengan tenang tanpa suatu keraguan. Hingga akhirnya pelaksanaan ujian pun selesai, kini hanya tinggal menunggu hasilnya.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Hari pembagian rapot pun tiba. Aku kembali tegang dengan hasil yang akan aku dapat nanti. Kemudian ibu wali kelas membacakan satu per satu para siswa yang meraih peringkat lima besar paralel hingga tepat pembacaan siswa yang meraih peringkat pertama</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">“Siswa yang meraih peringkat pertama adalah…” ucap ibu wali kelas,</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Semua siswa begitu tegang menunggu kelanjutan ucapan dari ibu wali kelas tersebut.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">“Zulfikar Al Husein” ucapnya sambil mengarahkan matanya padaku.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Diiringi bahagia dan harus atas kerja kerasku belajar selama ini tidak sia-sia. Kemudian semua teman memberi selamat padaku, lalu ibu wali kelas mengatakan padaku bahwa peraih peringkat pertama akan mendapat beasiswa sekolah di SMA. Diriku begitu senang mendengarnya. Anggapanku tentang kejujuran itu memang benar “kalau jujur itu membawa bahagia walau awalnya itu sulit”</p>', 'TKT', '2021-12-29 09:06:14', '2021-12-29 09:50:04', 'Publish', 1),
(17, 'GotongRoyongKosIdjo.', '<p><span style=\"color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Aku, teman-teman dan seluruh penghuni Kos Idjo sudah berkumpul di depan mushola, untuk merumuskan konsep gotong royong besok sore. Mulai dari peralatan yang harus digunakan hingga pembagian tugas tiap masing masing orang.</span></p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">“Dikarenakan musim kemarau yang berkepanjangan di daerah kita, halaman Kosan Idjo beberapa pekan ini penuh dengan sampah dedaunan kering hingga sampah ranting yang berjatuhan memenuhi halaman. Untuk itu, besok sore ibu meminta kalian bergotong royong membersihkan semua sampah itu” Buka ibu kos<em style=\"box-sizing: inherit;\">.</em></p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Setelah itu, ibu kos membagi kami menjadi beberapa kelompok, serta pembagian area mana saja yang akan dibersihkan. Tidak lupa beliau mengingatkan kepada kita bahwa kegiatan ini semata-mata untuk kenyamanan bersama.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Keesokan harinya selepas ba’da ashar, semua telah berkumpul di lokasi yang ditentukan. Pekerjaan pun dimulai, sampah mulai dibersihkan dan diangkut ke pembuangan akhir. Aku berada satu regu dengan kawanku yang bernama Putu. Kita membersihkan halaman depan gedung 1, tepat di depan kamarku dan kamarnya.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">“Put, lo haus ga? Gue mau beli minum nih di warung depan, mau nitip ga?” tanyaku pada putu.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">“Engga deh, di kamar gue masih ada minuman dingin, ko.” Balas putu.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">Bersih-bersih pun selesai, semua berkumpul lagi, kemudian ibu kos membuka percakapan kembali.</p><p style=\"box-sizing: inherit; margin: 30px 0px 0px; padding: 0px; color: rgb(65, 65, 65); font-family: source_serif; font-size: 18px; word-spacing: 1px;\">“Terima kasih saya ucapkan untuk semuanya yang sudah berpartisipasi pada gotong royong ini, tanpa kalian semua, mungkin pekerjaan kita tidak akan selesai secepatnya ini..”&nbsp;ucap ibu kos.</p>', 'tes', '2021-12-29 09:08:40', '2021-12-29 09:48:56', 'Publish', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `role` enum('admin','member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fullname`, `avatar`, `role`) VALUES
(1, 'admin', '$2y$10$0OAcT33SnZu0nzOIDtr3JemPpkqt7oaTOnv39uZhK5yCV/JCwTS7i', 'Ramahadi', '0a9e567180ac3b42bd3b4a6d58f538c7.jpg', 'admin'),
(5, 'member', '$2y$10$YKGeNqEwhz7CWYfn46YR/eCJwRwLvsumM29SP3iPIIlNNslBRyHLu', 'member', '266a1293ffb5b63e8f5180018ab8db0f.jpg', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
