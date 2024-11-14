
1. σ gender = "m" (pegawai)

2. σ emp_no < "10010" (pegawai)

3. hire_date >= "1990-01-01" (pegawai)

4. O birth_date <= "1952-12-31" (pegawai)

5. TT emp_no, first_name, last_name, gender ( 10030 <= emp_no AND emp_no <= 10040 (pegawai))

6. Thire_date( first_name, last_name, hire_date (pegawaikampus))

CREATE TABLE `anggota` (
  `idAnggota` int(11) NOT NULL,
  `namaAnggota` varchar(100) NOT NULL,
  `npm` varchar(20) DEFAULT NULL,
  `alamatAnggota` varchar(255) DEFAULT NULL,
  `noTelepon` varchar(15) DEFAULT NULL,
  `idJurusan` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAnggota`)
);





INSERT INTO `anggota` (`idAnggota`, `namaAnggota`, `npm`, `alamatAnggota`, `noTelepon`, `idJurusan`) VALUES
(1, 'Adi Kurniawan', '20230051', 'Jl. Kebayoran Lama No.51, Jakarta', '081245671234', 1),
(2, 'Beny Firmansyah', '20230052', 'Jl. Cendrawasih No.52, Bogor', '081245671235', 2),
(3, 'Cici Wulandari', '20230053', 'Jl. Rajawali No.53, Depok', '081245671236', 3),
(4, 'Dika Putra', '20230054', 'Jl. Dago No.54, Bandung', '081245671237', 4),
(5, 'Fina Ayu', '20230055', 'Jl. Cempaka Putih No.55, Surabaya', '081245671238', 5),
(6, 'Gilang Saputra', '20230056', 'Jl. Sudirman No.56, Solo', '081245671239', 6),
(7, 'Hana Pratiwi', '20230057', 'Jl. Mangga Dua No.57, Semarang', '081245671240', 7),
(8, 'Iman Setiawan', '20230058', 'Jl. Pandanaran No.58, Yogyakarta', '081245671241', 8),
(9, 'Jaya Pratama', '20230059', 'Jl. Mangkubumi No.59, Makassar', '081245671242', 9),
(10, 'Kiki Andayani', '20230060', 'Jl. Malioboro No.60, Manado', '081245671243', 10),
(11, 'Lusi Puspita', '20230061', 'Jl. Gatot Subroto No.61, Palembang', '081245671244', 11),
(12, 'Miko Hartono', '20230062', 'Jl. Irian Jaya No.62, Medan', '081245671245', 12),
(13, 'Nia Kusuma', '20230063', 'Jl. Hasanudin No.63, Pekanbaru', '081245671246', 13),
(14, 'Oka Pratama', '20230064', 'Jl. Sutoyo No.64, Lampung', '081245671247', 14),
(15, 'Pipit Santika', '20230065', 'Jl. Ahmad Yani No.65, Malang', '081245671248', 15),
(16, 'Qori Maulana', '20230066', 'Jl. Pahlawan No.66, Denpasar', '081245671249', 16),
(17, 'Rina Maharani', '20230067', 'Jl. Gajah Mada No.67, Balikpapan', '081245671250', 17),
(18, 'Sandi Permana', '20230068', 'Jl. Slamet Riyadi No.68, Samarinda', '081245671251', 18),
(19, 'Tari Salsabila', '20230069', 'Jl. Diponegoro No.69, Jambi', '081245671252', 19),
(20, 'Udin Santoso', '20230070', 'Jl. Patimura No.70, Banda Aceh', '081245671253', 20),
(21, 'Vivi Oktaviani', '20230071', 'Jl. Merdeka No.71, Padang', '081245671254', 21),
(22, 'Wawan Prasetyo', '20230072', 'Jl. Cikini No.72, Pontianak', '081245671255', 22),
(23, 'Yuni Lestari', '20230073', 'Jl. A. Yani No.73, Tangerang', '081245671256', 23),
(24, 'Zaki Firmansyah', '20230074', 'Jl. Kartini No.74, Cirebon', '081245671257', 24),
(25, 'Asih Purwanti', '20230075', 'Jl. Pemuda No.75, Probolinggo', '081245671258', 25),
(26, 'Bambang Sudarmo', '20230076', 'Jl. Dipati Ukur No.76, Tasikmalaya', '081245671259', 26),
(27, 'Catur Widodo', '20230077', 'Jl. Pancasila No.77, Kediri', '081245671260', 27),
(28, 'Dewi Cahyani', '20230078', 'Jl. Brawijaya No.78, Blitar', '081245671261', 28),
(29, 'Edi Hidayat', '20230079', 'Jl. Asia Afrika No.79, Magelang', '081245671262', 29),
(30, 'Fina Sari', '20230080', 'Jl. Sultan Agung No.80, Tegal', '081245671263', 30),
(31, 'Gatot Purnomo', '20230081', 'Jl. Angkasa No.81, Surakarta', '081245671264', 31),
(32, 'Hilda Wati', '20230082', 'Jl. Teuku Umar No.82, Serang', '081245671265', 32),
(33, 'Ihsan Lazuardi', '20230083', 'Jl. Jenderal Sudirman No.83, Lhokseumawe', '081245671266', 33),
(34, 'Jeni Permana', '20230084', 'Jl. Basuki Rahmat No.84, Banda Aceh', '081245671267', 34),
(35, 'Kurniawan Taufik', '20230085', 'Jl. Panjaitan No.85, Ambon', '081245671268', 35),


INSERT INTO `buku` (`idBuku`, `judulBuku`, `tahunTerbit`, `jumlahBukuTersedia`, `idPenerbit`, `idKategori`) VALUES
(1, 'Dasar-dasar Pemrograman Java', '2021', 6, 1, 1),
(2, 'Robotika dan Kecerdasan Buatan', '2019', 2, 2, 2),
(3, 'Manajemen Operasional Efektif', '2020', 4, 3, 3),
(4, 'Kimia Analisis Lingkungan', '2017', 5, 4, 4),
(5, 'Teori Matematika Diskrit', '2023', 6, 5, 5),
(6, 'Prinsip-prinsip Elektronika', '2016', 8, 6, 6),
(7, 'Struktur dan Statika Teknik', '2022', 10, 7, 7),
(8, 'Ilmu Konstruksi Sipil', '2018', 7, 8, 8),
(9, 'Panduan Ekologi Terapan', '2020', 6, 9, 9),
(10, 'Ekonomi Mikro Modern', '2017', 12, 10, 10),
(11, 'Pemikiran Ekonomi Global', '2019', 7, 11, 11),
(12, 'Keuangan dan Investasi', '2021', 5, 12, 12),
(13, 'Akuntansi Pajak Terapan', '2022', 9, 13, 13),
(14, 'Inovasi Pemasaran Digital', '2018', 6, 14, 14),
(15, 'Psikologi Perkembangan', '2020', 10, 15, 15),
(16, 'Sosiologi untuk Pemula', '2017', 3, 16, 16),
(17, 'Politik dalam Negeri', '2021', 8, 17, 17),
(18, 'Pengantar Studi Hukum', '2019', 4, 18, 18),
(19, 'Sejarah Peradaban Dunia', '2018', 5, 19, 19),
(20, 'Etika dan Moralitas', '2022', 7, 20, 20),
(21, 'Antropologi Budaya', '2019', 4, 21, 21),
(22, 'Fonologi Bahasa Dunia', '2020', 9, 22, 22),
(23, 'Filsafat Pendidikan', '2022', 6, 23, 23),
(24, 'Ilmu Kesehatan Masyarakat', '2018', 8, 24, 24),
(25, 'Dasar Anatomi Manusia', '2021', 3, 25, 25),
(26, 'Farmasi dan Farmakologi', '2020', 10, 26, 26),
(27, 'Panduan Ilmu Kedokteran Gigi', '2019', 4, 27, 27),
(28, 'Panduan Praktik Keperawatan', '2022', 7, 28, 28),
(29, 'Teknologi Pertanian Modern', '2021', 9, 29, 29),
(30, 'Manajemen Hutan Lestari', '2018', 6, 30, 30),
(31, 'Studi Kedokteran Hewan', '2020', 8, 31, 31),
(32, 'Geologi dan Mineralogi', '2019', 5, 32, 32),
(33, 'Ilmu Astronomi Dasar', '2022', 3, 33, 33),
(34, 'Ekologi Laut Tropis', '2018', 7, 34, 34),
(35, 'Desain Arsitektur Modern', '2021', 9, 35, 35),


INSERT INTO `jurusan` (`idJurusan`, `namaJurusan`) VALUES
(1, 'Ilmu Komputer Terapan'),
(2, 'Analisis Data Bisnis'),
(3, 'Administrasi Publik'),
(4, 'Biokimia Terapan'),
(5, 'Statistika Terapan'),
(6, 'Teknik Telekomunikasi'),
(7, 'Teknik Mesin Terapan'),
(8, 'Teknik Lingkungan Hidup'),
(9, 'Manajemen Ekosistem'),
(10, 'Manajemen Sumber Daya'),
(11, 'Studi Pembangunan Ekonomi'),
(12, 'Keuangan Internasional'),
(13, 'Manajemen Akuntansi'),
(14, 'Riset Pasar dan Konsumen'),
(15, 'Ilmu Psikologi Sosial'),
(16, 'Sosiologi Politik'),
(17, 'Ilmu Pemerintahan'),
(18, 'Studi Hukum Internasional'),
(19, 'Sejarah dan Budaya'),
(20, 'Filsafat Modern'),
(21, 'Antropologi Sosial'),
(22, 'Bahasa dan Kebudayaan'),
(23, 'Metode Pengajaran'),
(24, 'Kesehatan Masyarakat Global'),
(25, 'Kedokteran Umum'),
(26, 'Ilmu Farmasi Klinik'),
(27, 'Ilmu Kedokteran Gigi'),
(28, 'Keperawatan Klinis'),
(29, 'Teknologi Pertanian Terapan'),
(30, 'Konservasi Hutan dan Lahan'),
(31, 'Ilmu Kedokteran Hewan'),
(32, 'Ilmu Bumi dan Atmosfer'),
(33, 'Ilmu Astronomi Terapan'),
(34, 'Ekologi Laut'),
(35, 'Desain Bangunan Hijau'),


INSERT INTO `kategoriBuku` (`idKategori`, `kategori`) VALUES
(1, 'Inovasi Teknologi'),
(2, 'Cerita Imajinatif'),
(3, 'Strategi Usaha'),
(4, 'Kisah Sejarah'),
(5, 'Pemikiran Filsafat'),
(6, 'Studi Psikologi'),
(7, 'Estetika Seni'),
(8, 'Kisah Hidup'),
(9, 'Teknologi Digital'),
(10, 'Manajemen Bisnis'),
(11, 'Ilmu Ekonomi'),
(12, 'Ilmu Pendidikan'),
(13, 'Pengetahuan Kesehatan'),
(14, 'Hukum dan Perundangan'),
(15, 'Studi Politik'),
(16, 'Spiritualitas dan Agama'),
(17, 'Pengembangan Diri'),
(18, 'Panduan Perjalanan'),
(19, 'Kuliner dan Memasak'),
(20, 'Olah Raga'),
(21, 'Lingkungan Hidup'),
(22, 'Ilmu Pertanian'),
(23, 'Sastra dan Budaya'),
(24, 'Ilmu Sosial'),
(25, 'Kajian Antropologi'),
(26, 'Bahasa dan Dialek'),
(27, 'Fisika Terapan'),
(28, 'Ilmu Kimia'),
(29, 'Biologi Kehidupan'),
(30, 'Studi Astronomi'),
(31, 'Ilmu Geologi'),
(32, 'Teori Musik'),
(33, 'Seni Teater'),
(34, 'Puisi dan Prosa'),
(35, 'Cerita Fantasi'),


INSERT INTO `peminjam` (`idPeminjam`, `tglPinjam`, `tglKembali`, `denda`, `idBuku`, `jumlahPinjam`, `idAnggota`) VALUES
(1, '2024-10-01', '2024-10-11', 0.00, 1, 1, 1),
(2, '2024-10-06', '2024-10-16', 7000.00, 2, 1, 2),
(3, '2024-10-12', NULL, 0.00, 3, 2, 3),
(4, '2024-02-05', '2024-02-14', 1000.00, 4, 1, 4),
(5, '2024-02-06', '2024-02-15', 300.00, 5, 2, 5),
(6, '2024-02-07', '2024-02-16', 0.00, 6, 1, 6),
(7, '2024-02-08', '2024-02-17', 200.00, 7, 1, 7),
(8, '2024-02-09', '2024-02-18', 0.00, 8, 1, 8),
(9, '2024-02-10', '2024-02-19', 450.00, 9, 1, 9),
(10, '2024-02-11', '2024-02-20', 0.00, 10, 1, 10),
(11, '2024-02-12', '2024-02-21', 100.00, 11, 2, 11),
(12, '2024-02-13', '2024-02-22', 0.00, 12, 1, 12),
(13, '2024-02-14', '2024-02-23', 300.00, 13, 2, 13),
(14, '2024-02-15', '2024-02-24', 0.00, 14, 1, 14),
(15, '2024-02-16', '2024-02-25', 0.00, 15, 2, 15),
(16, '2024-02-17', '2024-02-26', 250.00, 16, 1, 16),
(17, '2024-02-18', '2024-02-27', 0.00, 17, 1, 17),
(18, '2024-02-19', '2024-02-28', 350.00, 18, 2, 18),
(19, '2024-02-20', '2024-03-01', 0.00, 19, 1, 19),
(20, '2024-02-21', '2024-03-02', 200.00, 20, 2, 20),
(21, '2024-02-22', '2024-03-03', 0.00, 21, 1, 21),
(22, '2024-02-23', '2024-03-04', 0.00, 22, 1, 22),
(23, '2024-02-24', '2024-03-05', 500.00, 23, 2, 23),
(24, '2024-02-25', '2024-03-06', 0.00, 24, 1, 24),
(25, '2024-02-26', '2024-03-07', 250.00, 25, 1, 25),
(26, '2024-02-27', '2024-03-08', 0.00, 26, 2, 26),
(27, '2024-02-28', '2024-03-09', 150.00, 27, 1, 27),
(28, '2024-02-29', '2024-03-10', 0.00, 28, 1, 28),
(29, '2024-03-01', '2024-03-11', 350.00, 29, 1, 29),
(30, '2024-03-02', '2024-03-12', 0.00, 30, 1, 30),
(31, '2024-03-03', '2024-03-13', 0.00, 31, 1, 31),
(32, '2024-03-04', '2024-03-14', 75.00, 32, 1, 32),
(33, '2024-03-05', '2024-03-15', 0.00, 33, 1, 33),
(34, '2024-03-06', '2024-03-16', 300.00, 34, 2, 34),
(35, '2024-03-07', '2024-03-17', 0.00, 35, 1, 35),


INSERT INTO `penerbit` (`idPenerbit`, `namaPenerbit`, `lokasiPenerbit`) VALUES
(1, 'Penerbit Gramedia', 'Jakarta'),
(2, 'Erlangga Pustaka', 'Bandung'),
(3, 'Pustaka Nusantara', 'Surabaya'),
(4, 'Andi Media', 'Malang'),
(5, 'Deepublish Books', 'Jogjakarta'),
(6, 'Mizan Group', 'Depok'),
(7, 'LIPI Publisher', 'Jakarta'),
(8, 'Obor Pustaka', 'Bandung'),
(9, 'ITB Media Press', 'Bandung'),
(10, 'Salemba Lima', 'Jakarta'),
(11, 'Bentang Literasi', 'Jogjakarta'),
(12, 'Elex Publikasi', 'Jakarta'),
(13, 'Springer International', 'Internasional'),
(14, 'Pearson Global', 'Internasional'),
(15, 'Oxford Global Press', 'Internasional'),
(16, 'Macmillan Books', 'Internasional'),
(17, 'Harper & Collins', 'Internasional'),
(18, 'Penguin International', 'Internasional'),
(19, 'Wiley Global', 'Internasional'),
(20, 'Routledge Press', 'Internasional'),
(21, 'McGraw Publications', 'Internasional'),
(22, 'Elsevier Academic', 'Internasional'),
(23, 'Cambridge Publishing', 'Internasional'),
(24, 'Taylor Publishing', 'Internasional'),
(25, 'Sage International', 'Internasional'),
(26, 'Cengage Learning', 'Internasional'),
(27, 'John Wiley International', 'Internasional'),
(28, 'Princeton Publishing', 'Internasional'),
(29, 'MIT Publications', 'Internasional'),
(30, 'Faber Publishing', 'Internasional'),
(31, 'Vintage Global', 'Internasional'),
(32, 'Verso International', 'Internasional'),
(33, 'New Directions Books', 'Internasional'),
(34, 'Hachette International', 'Internasional'),
(35, 'Random House Global', 'Internasional'),


INSERT INTO `supplyBuku` (`idSupply`, `idBuku`, `tanggal`, `jumlah`) VALUES
(1, 1, '2024-01-15', 8),
(2, 2, '2024-02-20', 4),
(3, 3, '2024-03-10', 10),
(4, 4, '2024-01-13', 15),
(5, 5, '2024-01-14', 13),
(6, 6, '2024-01-15', 27),
(7, 7, '2024-01-16', 18),
(8, 8, '2024-01-17', 20),
(9, 9, '2024-01-18', 10),
(10, 10, '2024-01-19', 12),
(11, 11, '2024-01-20', 17),
(12, 12, '2024-01-21', 19),
(13, 13, '2024-01-22', 14),
(14, 14, '2024-01-23', 22),
(15, 15, '2024-01-24', 10),
(16, 16, '2024-01-25', 24),
(17, 17, '2024-01-26', 30),
(18, 18, '2024-01-27', 28),
(19, 19, '2024-01-28', 9),
(20, 20, '2024-01-29', 26),
(21, 21, '2024-01-30', 14),
(22, 22, '2024-01-31', 18),
(23, 23, '2024-02-01', 12),
(24, 24, '2024-02-02', 15),
(25, 25, '2024-02-03', 25),
(26, 26, '2024-02-04', 18),
(27, 27, '2024-02-05', 23),
(28, 28, '2024-02-06', 21),
(29, 29, '2024-02-07', 17),
(30, 30, '2024-02-08', 11),
(31, 31, '2024-02-09', 20),
(32, 32, '2024-02-10', 13),
(33, 33, '2024-02-11', 16),
(34, 34, '2024-02-12', 18),
(35, 35, '2024-02-13', 24),


CREATE TABLE pegawai (
  idPegawai varchar(11) NOT NULL,
  namaPegawai varchar(100) DEFAULT NULL,
  alamatPegawai varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pegawai (idPegawai, namaPegawai, alamatPegawai) VALUES
('PG-1', 'Ahmad Ramdhan', 'Jl. Merdeka Utara No. 15, Jakarta'),
('PG-2', 'Budi Hartono', 'Jl. Soekarno No. 50, Bandung'),
('PG-3', 'Cici Marlina', 'Jl. Kebon Jeruk No. 19, Surabaya'),
('PG-4', 'Dewi Lestari', 'Jl. Raya Melati No. 9, Medan'),
('PG-5', 'Eko Suhendar', 'Jl. Sultan Agung No. 33, Yogyakarta'),
('PG-6', 'Fitri Ayu', 'Jl. Ahmad Dahlan No. 20, Semarang'), 
('PG-7', 'Galih Prasetya', 'Jl. Sultan Iskandar Muda No. 41, Makassar'),
('PG-8', 'Handoko Santoso', 'Jl. Mangga Besar No. 102, Palembang'),
('PG-9', 'Intan Maharani', 'Jl. Raya Denpasar No. 5, Denpasar'),
('PG-10', 'Joko Riyanto', 'Jl. Nusantara No. 75, Malang'),
('PG-11', 'Karina Putri', 'Jl. Mawar No. 15, Padang'),
('PG-12', 'Lina Cahya', 'Jl. Bung Karno No. 34, Pekanbaru'),
('PG-13', 'Mario Gunawan', 'Jl. Pelajar No. 28, Bogor'),
('PG-14', 'Nina Ramadhani', 'Jl. Mawar No. 16, Solo'),
('PG-15', 'Oscar Firmansyah', 'Jl. Merbabu No. 50, Banjarmasin'),
('PG-16', 'Putra Pranata', 'Jl. Nusa Indah No. 12, Bandar Lampung'),
('PG-17', 'Rahmat Saputra', 'Jl. Kamboja No. 24, Pontianak'),
('PG-18', 'Sari Amelia', 'Jl. Dahlia No. 36, Balikpapan'),
('PG-19', 'Teguh Prihanto', 'Jl. Seroja No. 57, Samarinda'),
('PG-20', 'Usman Anwar', 'Jl. Anggrek No. 88, Tasikmalaya'),
('PG-21', 'Vina Rahayu', 'Jl. Teratai No. 22, Cirebon'),
('PG-22', 'Wawan Santoso', 'Jl. Jendral Sudirman No. 73, Mataram'),
('PG-23', 'Xander Halim', 'Jl. Trikora No. 100, Jayapura'),
('PG-24', 'Yudi Ramli', 'Jl. Mangga No. 31, Manado'),
('PG-25', 'Zulfan Arifin', 'Jl. Rambutan No. 45, Palu'),
('PG-26', 'Ayu Puspita', 'Jl. Kenanga No. 18, Sukabumi'),
('PG-27', 'Beni Mulyono', 'Jl. Melati No. 99, Serang'),
('PG-28', 'Cici Permatasari', 'Jl. Kemuning No. 12, Tegal'),
('PG-29', 'Dian Susanti', 'Jl. Jambu No. 56, Probolinggo'),
('PG-30', 'Eko Waluyo', 'Jl. Cemara No. 55, Jember');

CREATE TABLE transaksi (
  IDTransaksi varchar(11) NOT NULL,
  JumlahTransaksi int(11) DEFAULT NULL,
  TanggalTransaksi date DEFAULT NULL,
  idSuplai varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO transaksi (IDTransaksi, JumlahTransaksi, TanggalTransaksi, idSuplai) VALUES
('T-1', 50000, '2024-01-06', 'S-1'),
('T-2', 75000, '2024-01-11', 'S-2'),
('T-3', 25000, '2024-01-16', 'S-3'),
('T-4', 40000, '2024-01-21', 'S-4'),
('T-5', 60000, '2024-01-26', 'S-5'),
('T-6', 100000, '2024-01-31', 'S-6'),
('T-7', 35000, '2024-02-02', 'S-7'),
('T-8', 45000, '2024-02-06', 'S-8'),
('T-9', 30000, '2024-02-11', 'S-9'),
('T-10', 65000, '2024-02-16', 'S-10'),
('T-11', 75000, '2024-02-21', 'S-11'),
('T-12', 90000, '2024-02-26', 'S-12'),
('T-13', 55000, '2024-03-02', 'S-13'),
('T-14', 70000, '2024-03-06', 'S-14'),
('T-15', 50000, '2024-03-11', 'S-15'),
('T-16', 35000, '2024-03-16', 'S-16'),
('T-17', 100000, '2024-03-21', 'S-17'),
('T-18', 25000, '2024-03-26', 'S-18'),
('T-19', 30000, '2024-03-31', 'S-19'),
('T-20', 60000, '2024-04-02', 'S-20'),
('T-21', 50000, '2024-04-06', 'S-21'),
('T-22', 40000, '2024-04-11', 'S-22'),
('T-23', 75000, '2024-04-16', 'S-23'),
('T-24', 50000, '2024-04-21', 'S-24'),
('T-25', 100000, '2024-04-26', 'S-25'),
('T-26', 90000, '2024-05-01', 'S-26'),
('T-27', 45000, '2024-05-03', 'S-27'),
('T-28', 35000, '2024-05-06', 'S-28'),
('T-29', 30000, '2024-05-11', 'S-29'),
('T-30', 75000, '2024-05-16', 'S-30');


CREATE TABLE anggota (
  idAnggota varchar(11) NOT NULL,
  namaAnggota varchar(100) DEFAULT NULL,
  npm varchar(50) DEFAULT NULL,
  alamatAnggota varchar(255) DEFAULT NULL,
  noTelepon varchar(15) DEFAULT NULL,
  idJurusan varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel anggota
--

INSERT INTO anggota (idAnggota, namaAnggota, npm, alamatAnggota, noTelepon, idJurusan) VALUES
('A-1', 'Ahmad Maulana', '1801001', 'Jl. Merdeka No. 1, Jakarta', '081234567890', 'J-1'),
('A-2', 'Budi Hartono', '1801002', 'Jl. Sudirman No. 5, Bandung', '081234567891', 'J-2'),
('A-3', 'Citra Dewi', '1801003', 'Jl. Pahlawan No. 10, Surabaya', '081234567892', 'J-3'),
('A-4', 'Dewi Lestari', '1801004', 'Jl. Ahmad Yani No. 20, Medan', '081234567893', 'J-4'),
('A-5', 'Eka Sari', '1801005', 'Jl. Gajah Mada No. 30, Yogyakarta', '081234567894', 'J-5'),
('A-6', 'Fajar Pratama', '1801006', 'Jl. Riau No. 40, Semarang', '081234567895', 'J-6'),
('A-7', 'Gita Permata', '1801007', 'Jl. Diponegoro No. 50, Makassar', '081234567896', 'J-7'),
('A-8', 'Hadi Wijaya', '1801008', 'Jl. Sisingamangaraja No. 60, Palembang', '081234567897', 'J-8'),
('A-9', 'Indra Lesmana', '1801009', 'Jl. Imam Bonjol No. 70, Denpasar', '081234567898', 'J-9'),
('A-10', 'Joko Susanto', '1801010', 'Jl. Veteran No. 80, Malang', '081234567899', 'J-10'),
('A-11', 'Kiki Amalia', '1801011', 'Jl. Soekarno-Hatta No. 90, Padang', '081234567800', 'J-11'),
('A-12', 'Lina Hartati', '1801012', 'Jl. Hasanuddin No. 100, Pekanbaru', '081234567801', 'J-12'),
('A-13', 'Mira Anindita', '1801013', 'Jl. Dipati Ukur No. 110, Bogor', '081234567802', 'J-13'),
('A-14', 'Nanda Saputra', '1801014', 'Jl. Kartini No. 120, Solo', '081234567803', 'J-14'),
('A-15', 'Oki Suryanto', '1801015', 'Jl. Pemuda No. 130, Banjarmasin', '081234567804', 'J-15'),
('A-16', 'Putri Handayani', '1801016', 'Jl. Gatot Subroto No. 140, Bandar Lampung', '081234567805', 'J-16'),
('A-17', 'Rian Pradipta', '1801017', 'Jl. Anggrek No. 150, Pontianak', '081234567806', 'J-17'),
('A-18', 'Sinta Agustina', '1801018', 'Jl. Mawar No. 160, Balikpapan', '081234567807', 'J-18'),
('A-19', 'Taufik Hidayat', '1801019', 'Jl. Kenanga No. 170, Samarinda', '081234567808', 'J-19'),
('A-20', 'Umi Kalsum', '1801020', 'Jl. Melati No. 180, Tasikmalaya', '081234567809', 'J-20'),
('A-21', 'Vina Oktaviani', '1801021', 'Jl. Sakura No. 190, Cirebon', '081234567810', 'J-21'),
('A-22', 'Wahyu Wibowo', '1801022', 'Jl. Bunga Raya No. 200, Mataram', '081234567811', 'J-22'),
('A-23', 'Xena Pratiwi', '1801023', 'Jl. Cemara No. 210, Jayapura', '081234567812', 'J-23'),
('A-24', 'Yoga Prasetya', '1801024', 'Jl. Flamboyan No. 220, Manado', '081234567813', 'J-24'),
('A-25', 'Zaki Firmansyah', '1801025', 'Jl. Bougenville No. 230, Palu', '081234567814', 'J-25'),
('A-26', 'Arya Nugraha', '1801026', 'Jl. Sawo No. 240, Sukabumi', '081234567815', 'J-26'),
('A-27', 'Bella Ardiani', '1801027', 'Jl. Durian No. 250, Serang', '081234567816', 'J-27'),
('A-28', 'Cindy Melani', '1801028', 'Jl. Pinus No. 260, Tegal', '081234567817', 'J-28'),
('A-29', 'Dian Kurniasih', '1801029', 'Jl. Rambutan No. 270, Probolinggo', '081234567818', 'J-29'),
('A-30', 'Eko Purwanto', '1801030', 'Jl. Kelapa No. 280, Jember', '081234567819', 'J-30');


-- --------------------------------------------------------

--
-- Struktur dari tabel buku
--

CREATE TABLE buku (
  idBuku varchar(11) NOT NULL,
  judulBuku varchar(255) DEFAULT NULL,
  tahunTerbit year(4) DEFAULT NULL,
  jumlahBuku int(11) DEFAULT NULL,
  idPenerbit varchar(11) DEFAULT NULL,
  idKategori varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel buku
--

INSERT INTO buku (idBuku, judulBuku, tahunTerbit, jumlahBuku, idPenerbit, idKategori) VALUES
('B-1', 'Belajar Pemrograman Python', '2019', 10, 'PN-1', 'K-1'),
('B-2', 'Dasar-dasar Sistem Informasi', '2018', 8, 'PN-2', 'K-2'),
('B-3', 'Fisika untuk Insinyur', '2017', 5, 'PN-3', 'K-3'),
('B-4', 'Teknik Mesin Modern', '2020', 7, 'PN-4', 'K-4'),
('B-5', 'Panduan Praktis Teknik Sipil', '2021', 12, 'PN-5', 'K-5'),
('B-6', 'Kimia Dasar untuk Pemula', '2016', 4, 'PN-6', 'K-6'),
('B-7', 'Belajar Bahasa Inggris untuk Pemula', '2022', 6, 'PN-7', 'K-7'),
('B-8', 'Aljabar Linear', '2015', 9, 'PN-8', 'K-8'),
('B-9', 'Biologi Molekuler', '2019', 11, 'PN-9', 'K-9'),
('B-10', 'Manajemen dan Bisnis', '2020', 10, 'PN-10', 'K-10'),
('B-11', 'Dasar-dasar Akuntansi', '2017', 8, 'PN-11', 'K-11'),
('B-12', 'Ilmu Komunikasi Modern', '2018', 7, 'PN-12', 'K-12'),
('B-13', 'Psikologi Perkembangan', '2016', 5, 'PN-13', 'K-13'),
('B-14', 'Pengantar Filsafat', '2020', 3, 'PN-14', 'K-14'),
('B-15', 'Sosiologi untuk Pemula', '2019', 6, 'PN-15', 'K-15'),
('B-16', 'Kedokteran Dasar', '2018', 4, 'PN-16', 'K-16'),
('B-17', 'Agroteknologi dan Pertanian', '2017', 10, 'PN-17', 'K-17'),
('B-18', 'Teknik Menulis Efektif', '2021', 8, 'PN-18', 'K-18'),
('B-19', 'Fotografi Kreatif', '2020', 6, 'PN-19', 'K-19'),
('B-20', 'Panduan Seni Melukis', '2015', 7, 'PN-20', 'K-20'),
('B-21', 'Buku Pintar Matematika', '2016', 9, 'PN-21', 'K-21'),
('B-22', 'Cerita Pendek untuk Anak-anak', '2022', 15, 'PN-22', 'K-22'),
('B-23', 'Petualangan di Dunia Fantasi', '2021', 12, 'PN-23', 'K-23'),
('B-24', 'Misteri di Balik Hutan', '2020', 5, 'PN-24', 'K-24'),
('B-25', 'Pengantar Ilmu Politik', '2018', 8, 'PN-25', 'K-25'),
('B-26', 'Ekonomi Mikro dan Makro', '2017', 10, 'PN-26', 'K-26'),
('B-27', 'Teori Matematika Terapan', '2019', 3, 'PN-27', 'K-27'),
('B-28', 'Panduan Lengkap Komputer', '2018', 6, 'PN-28', 'K-28'),
('B-29', 'Ensiklopedia Hewan', '2015', 7, 'PN-29', 'K-29'),
('B-30', 'Kumpulan Puisi Modern', '2021', 9, 'PN-30', 'K-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel jurusan
--

CREATE TABLE jurusan (
  idJurusan varchar(11) NOT NULL,
  namaJurusan varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel jurusan
--

INSERT INTO jurusan (idJurusan, namaJurusan) VALUES
('J-1', 'Manajemen'),
('J-2', 'Psikologi'),
('J-3', 'Ilmu Hukum'),
('J-4', 'Teknik Elektro'),
('J-5', 'Sistem Informasi'),
('J-6', 'Kimia'),
('J-7', 'Teknik Industri'),
('J-8', 'Kedokteran'),
('J-9', 'Administrasi Bisnis'),
('J-10', 'Pendidikan Bahasa Inggris'),
('J-11', 'Fisika'),
('J-12', 'Teknik Mesin'),
('J-13', 'Teknik Informatika'),
('J-14', 'Akuntansi'),
('J-15', 'Statistika'),
('J-16', 'Ekonomi Pembangunan'),
('J-17', 'Agribisnis'),
('J-18', 'Antropologi'),
('J-19', 'Sosiologi'),
('J-20', 'Administrasi Publik'),
('J-21', 'Ilmu Komunikasi'),
('J-22', 'Biologi'),
('J-23', 'Farmasi'),
('J-24', 'Kehutanan'),
('J-25', 'Pendidikan Matematika'),
('J-26', 'Pendidikan Biologi'),
('J-27', 'Teknik Sipil'),
('J-28', 'Teknik Kimia'),
('J-29', 'Matematika Terapan'),
('J-30', 'Agroteknologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel kategoriBuku
--

CREATE TABLE kategoriBuku (
  idKategori varchar(11) NOT NULL,
  kategori varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel kategoriBuku
--

INSERT INTO kategoriBuku (idKategori, kategori) VALUES
('K-1', 'Fiksi'),
('K-2', 'Non-Fiksi'),
('K-3', 'Ilmu Pengetahuan'),
('K-4', 'Sejarah Dunia'),
('K-5', 'Memoar'),
('K-6', 'Teknologi Digital'),
('K-7', 'Pemrograman Komputer'),
('K-8', 'Pengembangan Diri'),
('K-9', 'Literatur'),
('K-10', 'Statistika'),
('K-11', 'Keuangan'),
('K-12', 'Manajemen Bisnis'),
('K-13', 'Ilmu Sosial'),
('K-14', 'Pemikiran Filsafat'),
('K-15', 'Spiritualitas'),
('K-16', 'Teori Pendidikan'),

('K-17', 'Kesehatan & Kebugaran'),
('K-18', 'Kuliner'),
('K-19', 'Seni Visual'),
('K-20', 'Seni Fotografi'),
('K-21', 'Teori Musik'),
('K-22', 'Seni Teater'),
('K-23', 'Cerita Misteri'),
('K-24', 'Fiksi Petualangan'),
('K-25', 'Fantasi & Magis'),
('K-26', 'Roman & Romansa'),
('K-27', 'Buku Anak'),
('K-28', 'Bacaan Remaja'),
('K-29', 'Ensiklopedia & Referensi'),
('K-30', 'Puisi & Syair');


-- --------------------------------------------------------

--
-- Struktur dari tabel pegawai
--

CREATE TABLE pegawai (
  idPegawai varchar(11) NOT NULL,
  namaPegawai varchar(100) DEFAULT NULL,
  alamatPegawai varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel pegawai
--

INSERT INTO pegawai (idPegawai, namaPegawai, alamatPegawai) VALUES
('PG-1', 'Ahmad Ramdhan', 'Jl. Merdeka Utara No. 15, Jakarta'),
('PG-2', 'Budi Hartono', 'Jl. Soekarno No. 50, Bandung'),
('PG-3', 'Cici Marlina', 'Jl. Kebon Jeruk No. 19, Surabaya'),
('PG-4', 'Dewi Lestari', 'Jl. Raya Melati No. 9, Medan'),
('PG-5', 'Eko Suhendar', 'Jl. Sultan Agung No. 33, Yogyakarta'),
('PG-6', 'Fitri Ayu', 'Jl. Ahmad Dahlan No. 20, Semarang'), 
('PG-7', 'Galih Prasetya', 'Jl. Sultan Iskandar Muda No. 41, Makassar'),
('PG-8', 'Handoko Santoso', 'Jl. Mangga Besar No. 102, Palembang'),
('PG-9', 'Intan Maharani', 'Jl. Raya Denpasar No. 5, Denpasar'),
('PG-10', 'Joko Riyanto', 'Jl. Nusantara No. 75, Malang'),
('PG-11', 'Karina Putri', 'Jl. Mawar No. 15, Padang'),
('PG-12', 'Lina Cahya', 'Jl. Bung Karno No. 34, Pekanbaru'),
('PG-13', 'Mario Gunawan', 'Jl. Pelajar No. 28, Bogor'),
('PG-14', 'Nina Ramadhani', 'Jl. Mawar No. 16, Solo'),
('PG-15', 'Oscar Firmansyah', 'Jl. Merbabu No. 50, Banjarmasin'),
('PG-16', 'Putra Pranata', 'Jl. Nusa Indah No. 12, Bandar Lampung'),
('PG-17', 'Rahmat Saputra', 'Jl. Kamboja No. 24, Pontianak'),
('PG-18', 'Sari Amelia', 'Jl. Dahlia No. 36, Balikpapan'),
('PG-19', 'Teguh Prihanto', 'Jl. Seroja No. 57, Samarinda'),
('PG-20', 'Usman Anwar', 'Jl. Anggrek No. 88, Tasikmalaya'),
('PG-21', 'Vina Rahayu', 'Jl. Teratai No. 22, Cirebon'),
('PG-22', 'Wawan Santoso', 'Jl. Jendral Sudirman No. 73, Mataram'),
('PG-23', 'Xander Halim', 'Jl. Trikora No. 100, Jayapura'),
('PG-24', 'Yudi Ramli', 'Jl. Mangga No. 31, Manado'),
('PG-25', 'Zulfan Arifin', 'Jl. Rambutan No. 45, Palu'),
('PG-26', 'Ayu Puspita', 'Jl. Kenanga No. 18, Sukabumi'),
('PG-27', 'Beni Mulyono', 'Jl. Melati No. 99, Serang'),
('PG-28', 'Cici Permatasari', 'Jl. Kemuning No. 12, Tegal'),
('PG-29', 'Dian Susanti', 'Jl. Jambu No. 56, Probolinggo'),
('PG-30', 'Eko Waluyo', 'Jl. Cemara No. 55, Jember');

-- --------------------------------------------------------

--
-- Struktur dari tabel peminjam
--

CREATE TABLE peminjam (
  idPeminjam varchar(11) NOT NULL,
  tglPinjam date DEFAULT NULL,
  tglKembali date DEFAULT NULL,
  denda decimal(10,2) DEFAULT NULL,
  idBuku varchar(11) DEFAULT NULL,
  jumlahPinjam int(11) DEFAULT NULL,
  idAnggota varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel peminjam
--

INSERT INTO peminjam (idPeminjam, tglPinjam, tglKembali, denda, idBuku, jumlahPinjam, idAnggota) VALUES
('PNJ-1', '2024-01-10', '2024-01-17', 0.00, 'B-1', 1, 'A-5'),
('PNJ-2', '2024-01-11', '2024-01-15', 2000.00, 'B-2', 1, 'A-3'),
('PNJ-3', '2024-01-12', '2024-01-20', 5000.00, 'B-3', 2, 'A-2'),
('PNJ-4', '2024-01-15', '2024-01-25', 0.00, 'B-4', 3, 'A-4'),
('PNJ-5', '2024-01-16', '2024-01-22', 3000.00, 'B-5', 1, 'A-4'),
('PNJ-6', '2024-01-18', '2024-01-26', 0.00, 'B-6', 2, 'A-5'),
('PNJ-7', '2024-01-19', '2024-01-23', 1000.00, 'B-7', 1, 'A-6'),
('PNJ-8', '2024-01-20', '2024-01-27', 4000.00, 'B-8', 1, 'A-7'),
('PNJ-9', '2024-01-22', '2024-01-30', 0.00, 'B-9', 1, 'A-8'),
('PNJ-10', '2024-01-23', '2024-02-01', 5000.00, 'B-10', 2, 'A-9'),
('PNJ-11', '2024-01-24', '2024-01-31', 0.00, 'B-11', 3, 'A-10'),
('PNJ-12', '2024-01-25', '2024-02-02', 2000.00, 'B-12', 1, 'A-11'),
('PNJ-13', '2024-01-27', '2024-02-05', 0.00, 'B-13', 2, 'A-12'),
('PNJ-14', '2024-01-28', '2024-02-06', 3000.00, 'B-14', 1, 'A-13'),
('PNJ-15', '2024-01-29', '2024-02-03', 0.00, 'B-15', 1, 'A-14'),
('PNJ-16', '2024-01-30', '2024-02-07', 4000.00, 'B-16', 1, 'A-15'),
('PNJ-17', '2024-02-01', '2024-02-10', 0.00, 'B-17', 1, 'A-16'),
('PNJ-18', '2024-02-02', '2024-02-08', 1500.00, 'B-18', 2, 'A-17'),
('PNJ-19', '2024-02-03', '2024-02-11', 0.00, 'B-19', 1, 'A-18'),
('PNJ-20', '2024-02-04', '2024-02-12', 5000.00, 'B-20', 1, 'A-19'),
('PNJ-21', '2024-02-05', '2024-02-09', 0.00, 'B-21', 3, 'A-20'),
('PNJ-22', '2024-02-06', '2024-02-14', 2000.00, 'B-22', 1, 'A-21'),
('PNJ-23', '2024-02-07', '2024-02-13', 0.00, 'B-23', 2, 'A-22'),
('PNJ-24', '2024-02-08', '2024-02-15', 4000.00, 'B-24', 1, 'A-23'),
('PNJ-25', '2024-02-09', '2024-02-17', 0.00, 'B-25', 1, 'A-24'),
('PNJ-26', '2024-02-10', '2024-02-18', 1000.00, 'B-26', 1, 'A-25'),
('PNJ-27', '2024-02-11', '2024-02-19', 3000.00, 'B-27', 1, 'A-26'),
('PNJ-28', '2024-02-12', '2024-02-20', 0.00, 'B-28', 2, 'A-27'),
('PNJ-29', '2024-02-13', '2024-02-21', 2000.00, 'B-29', 1, 'A-28'),
('PNJ-30', '2024-02-14', '2024-02-22', 0.00, 'B-30', 3, 'A-29');


-- --------------------------------------------------------

--
-- Struktur dari tabel penerbit
--

CREATE TABLE penerbit (
  idPenerbit varchar(11) NOT NULL,
  namaPenerbit varchar(100) DEFAULT NULL,
  lokasiPenerbit varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel penerbit
--

INSERT INTO penerbit (idPenerbit, namaPenerbit, lokasiPenerbit) VALUES
('PN-1', 'Gramedia Utama', 'Jakarta'),
('PN-2', 'Erlangga Media', 'Jakarta'),
('PN-3', 'Mizan Media Utama', 'Bandung'),
('PN-4', 'AgroMedia Nusantara', 'Bogor'),
('PN-5', 'Andi Publisher', 'Yogyakarta'),
('PN-6', 'Bentang Nusantara', 'Yogyakarta'),
('PN-7', 'Kepustakaan Nusantara', 'Jakarta'),
('PN-8', 'Pustaka Ilmu', 'Jakarta'),
('PN-9', 'Gagas Nusantara', 'Jakarta'),
('PN-10', 'Pustaka Pemuda', 'Yogyakarta'),
('PN-11', 'Narasi Publisher', 'Bandung'),
('PN-12', 'Kompas Nusantara', 'Jakarta'),
('PN-13', 'Serambi Media', 'Jakarta'),
('PN-14', 'Rajawali Pustaka', 'Jakarta'),
('PN-15', 'Aksara Media', 'Jakarta'),
('PN-16', 'Deepublish Yogyakarta', 'Yogyakarta'),
('PN-17', 'Nuansa Nusantara', 'Bandung'),
('PN-18', 'Langgam Ilmu', 'Surabaya'),
('PN-19', 'Citra Nusantara', 'Yogyakarta'),
('PN-20', 'Divapress Indonesia', 'Yogyakarta'),
('PN-21', 'Alfabeta Media', 'Bandung'),
('PN-22', 'Obor Pustaka', 'Jakarta'),
('PN-23', 'Swadaya Press', 'Bogor'),
('PN-24', 'Pressindo Media', 'Yogyakarta'),
('PN-25', 'Kanisius Indonesia', 'Yogyakarta'),
('PN-26', 'Indeks Publisher', 'Jakarta'),
('PN-27', 'Media Nusantara', 'Jakarta'),
('PN-28', 'Salemba Empat', 'Jakarta'),
('PN-29', 'Serangkai Nusantara', 'Solo'),
('PN-30', 'Jaya Pustaka', 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel supplaiBuku
--

CREATE TABLE supplaiBuku (
  idSuplai varchar(11) NOT NULL,
  idBuku varchar(11) DEFAULT NULL,
  tanggal date DEFAULT NULL,
  jumlah int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel supplaiBuku
--

INSERT INTO supplaiBuku (idSuplai, idBuku, tanggal, jumlah) VALUES
('S-1', 'B-1', '2024-01-05', 10),
('S-2', 'B-2', '2024-01-10', 15),
('S-3', 'B-3', '2024-01-15', 5),
('S-4', 'B-4', '2024-01-20', 8),
('S-5', 'B-5', '2024-01-25', 12),
('S-6', 'B-6', '2024-01-30', 20),
('S-7', 'B-7', '2024-02-01', 7),
('S-8', 'B-8', '2024-02-05', 9),
('S-9', 'B-9', '2024-02-10', 6),
('S-10', 'B-10', '2024-02-15', 13),
('S-11', 'B-11', '2024-02-20', 15),
('S-12', 'B-12', '2024-02-25', 18),
('S-13', 'B-13', '2024-03-01', 11),
('S-14', 'B-14', '2024-03-05', 14),
('S-15', 'B-15', '2024-03-10', 10),
('S-16', 'B-16', '2024-03-15', 7),
('S-17', 'B-17', '2024-03-20', 20),
('S-18', 'B-18', '2024-03-25', 5),
('S-19', 'B-19', '2024-03-30', 6),
('S-20', 'B-20', '2024-04-01', 12),
('S-21', 'B-21', '2024-04-05', 10),
('S-22', 'B-22', '2024-04-10', 8),
('S-23', 'B-23', '2024-04-15', 15),
('S-24', 'B-24', '2024-04-20', 10),
('S-25', 'B-25', '2024-04-25', 20),
('S-26', 'B-26', '2024-04-30', 18),
('S-27', 'B-27', '2024-05-01', 9),
('S-28', 'B-28', '2024-05-05', 7),
('S-29', 'B-29', '2024-05-10', 6),
('S-30', 'B-30', '2024-05-15', 15);


-- --------------------------------------------------------

--
-- Struktur dari tabel transaksi
--

CREATE TABLE transaksi (
  IDTransaksi varchar(11) NOT NULL,
  JumlahTransaksi int(11) DEFAULT NULL,
  TanggalTransaksi date DEFAULT NULL,
  idSuplai varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel transaksi
--

INSERT INTO transaksi (IDTransaksi, JumlahTransaksi, TanggalTransaksi, idSuplai) VALUES
('T-1', 50000, '2024-01-06', 'S-1'),
('T-2', 75000, '2024-01-11', 'S-2'),
('T-3', 25000, '2024-01-16', 'S-3'),
('T-4', 40000, '2024-01-21', 'S-4'),
('T-5', 60000, '2024-01-26', 'S-5'),
('T-6', 100000, '2024-01-31', 'S-6'),
('T-7', 35000, '2024-02-02', 'S-7'),
('T-8', 45000, '2024-02-06', 'S-8'),
('T-9', 30000, '2024-02-11', 'S-9'),
('T-10', 65000, '2024-02-16', 'S-10'),
('T-11', 75000, '2024-02-21', 'S-11'),
('T-12', 90000, '2024-02-26', 'S-12'),
('T-13', 55000, '2024-03-02', 'S-13'),
('T-14', 70000, '2024-03-06', 'S-14'),
('T-15', 50000, '2024-03-11', 'S-15'),
('T-16', 35000, '2024-03-16', 'S-16'),
('T-17', 100000, '2024-03-21', 'S-17'),
('T-18', 25000, '2024-03-26', 'S-18'),
('T-19', 30000, '2024-03-31', 'S-19'),
('T-20', 60000, '2024-04-02', 'S-20'),
('T-21', 50000, '2024-04-06', 'S-21'),
('T-22', 40000, '2024-04-11', 'S-22'),
('T-23', 75000, '2024-04-16', 'S-23'),
('T-24', 50000, '2024-04-21', 'S-24'),
('T-25', 100000, '2024-04-26', 'S-25'),
('T-26', 90000, '2024-05-01', 'S-26'),
('T-27', 45000, '2024-05-03', 'S-27'),
('T-28', 35000, '2024-05-06', 'S-28'),
('T-29', 30000, '2024-05-11', 'S-29'),
('T-30', 75000, '2024-05-16', 'S-30');
--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel anggota
--
ALTER TABLE anggota
  ADD PRIMARY KEY (idAnggota),
  ADD KEY idJurusan (idJurusan);

--
-- Indeks untuk tabel buku
--
ALTER TABLE buku
  ADD PRIMARY KEY (idBuku),
  ADD KEY idPenerbit (idPenerbit),
  ADD KEY idKategori (idKategori);

--
-- Indeks untuk tabel jurusan
--
ALTER TABLE jurusan
  ADD PRIMARY KEY (idJurusan);

--
-- Indeks untuk tabel kategoriBuku
--
ALTER TABLE kategoriBuku
  ADD PRIMARY KEY (idKategori);

--
-- Indeks untuk tabel pegawai
--
ALTER TABLE pegawai
  ADD PRIMARY KEY (idPegawai);

--
-- Indeks untuk tabel peminjam
--
ALTER TABLE peminjam
  ADD PRIMARY KEY (idPeminjam),
  ADD KEY idBuku (idBuku),
  ADD KEY idAnggota (idAnggota);

--
-- Indeks untuk tabel penerbit
--
ALTER TABLE penerbit
  ADD PRIMARY KEY (idPenerbit);

--
-- Indeks untuk tabel supplaiBuku
--
ALTER TABLE supplaiBuku
  ADD PRIMARY KEY (idSuplai),
  ADD KEY idBuku (idBuku);

--
-- Indeks untuk tabel transaksi
--
ALTER TABLE transaksi
  ADD PRIMARY KEY (IDTransaksi),
  ADD KEY idSuplai (idSuplai);

--DATABASE RAKA--
INSERT INTO anggota (idAnggota, namaAnggota, npm, alamatAnggota, noTelepon, idJurusan) VALUES
('AGTA01', 'Andi Pratama', '1902001', 'Jl. Cendana No. 11, Jakarta', '081234567801', 'JRS01'),
('AGTA02', 'Bella Sari', '1902002', 'Jl. Kemang No. 12, Bandung', '081234567802', 'JRS02'),
('AGTA03', 'Cindy Ayu', '1902003', 'Jl. Kuningan No. 13, Surabaya', '081234567803', 'JRS03'),
('AGTA04', 'Dedi Santoso', '1902004', 'Jl. Manggis No. 14, Medan', '081234567804', 'JRS04'),
('AGTA05', 'Erna Putri', '1902005', 'Jl. Nangka No. 15, Yogyakarta', '081234567805', 'JRS05'),
('AGTA06', 'Fajar Ramadhan', '1902006', 'Jl. Durian No. 16, Semarang', '081234567806', 'JRS06'),
('AGTA07', 'Gina Pratiwi', '1902007', 'Jl. Melati No. 17, Makassar', '081234567807', 'JRS07'),
('AGTA08', 'Hendra Wijaya', '1902008', 'Jl. Anggrek No. 18, Palembang', '081234567808', 'JRS08'),
('AGTA09', 'Intan Lestari', '1902009', 'Jl. Mawar No. 19, Denpasar', '081234567809', 'JRS09'),
('AGTA10', 'Joko Setiawan', '1902010', 'Jl. Kamboja No. 20, Malang', '081234567810', 'JRS10'),
('AGTA11', 'Kiki Arifin', '1902011', 'Jl. Bougenville No. 21, Padang', '081234567811', 'JRS11'),
('AGTA12', 'Lina Sari', '1902012', 'Jl. Sakura No. 22, Pekanbaru', '081234567812', 'JRS12'),
('AGTA13', 'Mira Anggraeni', '1902013', 'Jl. Cemara No. 23, Bogor', '081234567813', 'JRS13'),
('AGTA14', 'Nando Satria', '1902014', 'Jl. Sawo No. 24, Solo', '081234567814', 'JRS14'),
('AGTA15', 'Oka Wicaksana', '1902015', 'Jl. Jambu No. 25, Banjarmasin', '081234567815', 'JRS15'),
('AGTA16', 'Putri Handayani', '1902016', 'Jl. Alpukat No. 26, Bandar Lampung', '081234567816', 'JRS16'),
('AGTA17', 'Rian Dwi', '1902017', 'Jl. Pisang No. 27, Pontianak', '081234567817', 'JRS17'),
('AGTA18', 'Sinta Amalia', '1902018', 'Jl. Ceri No. 28, Balikpapan', '081234567818', 'JRS18'),
('AGTA19', 'Taufik Rahman', '1902019', 'Jl. Srikaya No. 29, Samarinda', '081234567819', 'JRS19'),
('AGTA20', 'Umar Hasan', '1902020', 'Jl. Jeruk No. 30, Tasikmalaya', '081234567820', 'JRS20'),
('AGTA21', 'Vina Anggun', '1902021', 'Jl. Apel No. 31, Cirebon', '081234567821', 'JRS21'),
('AGTA22', 'Wahyu Purnama', '1902022', 'Jl. Duku No. 32, Mataram', '081234567822', 'JRS22'),
('AGTA23', 'Xavier Dimas', '1902023', 'Jl. Rambutan No. 33, Jayapura', '081234567823', 'JRS23'),
('AGTA24', 'Yoga Setiawan', '1902024', 'Jl. Salak No. 34, Manado', '081234567824', 'JRS24'),
('AGTA25', 'Zara Pratiwi', '1902025', 'Jl. Mangga No. 35, Palu', '081234567825', 'JRS25'),
('AGTA26', 'Ari Nugraha', '1902026', 'Jl. Damar No. 36, Sukabumi', '081234567826', 'JRS26'),
('AGTA27', 'Bella Oktaviani', '1902027', 'Jl. Waru No. 37, Serang', '081234567827', 'JRS27'),
('AGTA28', 'Cindy Melati', '1902028', 'Jl. Tanjung No. 38, Tegal', '081234567828', 'JRS28'),
('AGTA29', 'Dian Puspita', '1902029', 'Jl. Mahoni No. 39, Probolinggo', '081234567829', 'JRS29'),
('AGTA30', 'Eko Prasetyo', '1902030', 'Jl. Akasia No. 40, Jember', '081234567830', 'JRS30');

INSERT INTO buku (idBuku, judulBuku, tahunTerbit, jumlahBuku, idPenerbit, idKategori) VALUES
('BKU001', 'Pemrograman Java Dasar', '2020', 12, 'PN-01', 'KTGRI01'),
('BKU002', 'Algoritma dan Struktur Data', '2019', 8, 'PN-02', 'KTGRI02'),
('BKU003', 'Fisika Modern', '2018', 7, 'PN-03', 'KTGRI03'),
('BKU004', 'Teknologi Informasi untuk Bisnis', '2021', 10, 'PN-04', 'KTGRI04'),
('BKU005', 'Dasar-dasar Teknik Elektro', '2020', 5, 'PN-05', 'KTGRI05'),
('BKU006', 'Kimia Terapan', '2017', 6, 'PN-06', 'KTGRI06'),
('BKU007', 'Bahasa Inggris Bisnis', '2022', 9, 'PN-07', 'KTGRI07'),
('BKU008', 'Matematika Diskrit', '2016', 11, 'PN-08', 'KTGRI08'),
('BKU009', 'Mikrobiologi untuk Pemula', '2019', 8, 'PN-09', 'KTGRI09'),
('BKU010', 'Manajemen Proyek IT', '2018', 7, 'PN-10', 'KTGRI10'),
('BKU011', 'Akuntansi Keuangan', '2017', 10, 'PN-11', 'KTGRI11'),
('BKU012', 'Komunikasi Antar Pribadi', '2020', 6, 'PN-12', 'KTGRI12'),
('BKU013', 'Psikologi Umum', '2018', 5, 'PN-13', 'KTGRI13'),
('BKU014', 'Pengantar Logika', '2016', 3, 'PN-14', 'KTGRI14'),
('BKU015', 'Sosiologi Klasik', '2019', 6, 'PN-15', 'KTGRI15'),
('BKU016', 'Ilmu Kedokteran Dasar', '2017', 4, 'PN-16', 'KTGRI16'),
('BKU017', 'Teknologi Pertanian', '2015', 9, 'PN-17', 'KTGRI17'),
('BKU018', 'Esai Kreatif', '2021', 7, 'PN-18', 'KTGRI18'),
('BKU019', 'Seni Fotografi', '2022', 8, 'PN-19', 'KTGRI19'),
('BKU020', 'Menggambar Perspektif', '2019', 7, 'PN-20', 'KTGRI20'),
('BKU021', 'Panduan Matematika Lanjutan', '2016', 10, 'PN-21', 'KTGRI21'),
('BKU022', 'Kisah Petualangan Anak', '2021', 12, 'PN-22', 'KTGRI22'),
('BKU023', 'Misteri di Pantai Selatan', '2020', 11, 'PN-23', 'KTGRI23'),
('BKU024', 'Pengantar Sains Politik', '2018', 6, 'PN-24', 'KTGRI24'),
('BKU025', 'Ekonomi Makro Dasar', '2017', 9, 'PN-25', 'KTGRI25'),
('BKU026', 'Teori Probabilitas dan Statistika', '2019', 8, 'PN-26', 'KTGRI26'),
('BKU027', 'Buku Panduan Komputer', '2021', 5, 'PN-27', 'KTGRI27'),
('BKU028', 'Ensiklopedia Tumbuhan', '2015', 4, 'PN-28', 'KTGRI28'),
('BKU029', 'Kumpulan Cerita Rakyat', '2020', 6, 'PN-29', 'KTGRI29'),
('BKU030', 'Puisi Lintas Masa', '2022', 9, 'PN-30', 'KTGRI30');

INSERT INTO jurusan (idJurusan, namaJurusan) VALUES
('JUR100', 'Manajemen Keuangan'),
('JUR101', 'Psikologi Klinis'),
('JUR102', 'Ilmu Hukum Perdata'),
('JUR103', 'Teknik Elektro Industri'),
('JUR104', 'Sistem Informasi Bisnis'),
('JUR105', 'Kimia Terapan'),
('JUR106', 'Teknik Industri Otomotif'),
('JUR107', 'Ilmu Kedokteran Umum'),
('JUR108', 'Administrasi Bisnis Internasional'),
('JUR109', 'Pendidikan Bahasa Mandarin'),
('JUR110', 'Fisika Kuantum'),
('JUR111', 'Teknik Mesin Otomotif'),
('JUR112', 'Teknik Informatika Jaringan'),
('JUR113', 'Akuntansi Perbankan'),
('JUR114', 'Statistika Bisnis'),
('JUR115', 'Ekonomi Pembangunan Internasional'),
('JUR116', 'Agribisnis dan Agroindustri'),
('JUR117', 'Antropologi Budaya'),
('JUR118', 'Sosiologi dan Perubahan Sosial'),
('JUR119', 'Administrasi Publik Kebijakan'),
('JUR120', 'Ilmu Komunikasi Massa'),
('JUR121', 'Biologi Lingkungan'),
('JUR122', 'Farmasi Klinik'),
('JUR123', 'Ilmu Kehutanan Tropis'),
('JUR124', 'Pendidikan Matematika Dasar'),
('JUR125', 'Pendidikan Biologi Maritim'),
('JUR126', 'Teknik Sipil Infrastruktur'),
('JUR127', 'Teknik Kimia Industri'),
('JUR128', 'Matematika Terapan Komputasi'),
('JUR129', 'Agroteknologi dan Manajemen Hama'),
('JUR130', 'Teknik Arsitektur');

INSERT INTO kategoriBuku (idKategori, kategori) VALUES 
('KTB900', 'Novel Fiksi Sains'),
('KTB901', 'Literatur Non-Fiksi'),
('KTB902', 'Ilmu Alam dan Lingkungan'),
('KTB903', 'Sejarah Peradaban Kuno'),
('KTB904', 'Memoar Kehidupan'),
('KTB905', 'Teknologi dan Inovasi Digital'),
('KTB906', 'Pemrograman Web & Aplikasi'),
('KTB907', 'Motivasi & Pengembangan Diri'),
('KTB908', 'Kritik Sastra'),
('KTB909', 'Teori Statistika Terapan'),
('KTB910', 'Keuangan Pribadi'),
('KTB911', 'Manajemen Operasional'),
('KTB912', 'Sosiologi & Ilmu Sosial'),
('KTB913', 'Pemikiran Filsafat Klasik'),
('KTB914', 'Spiritualitas Modern'),
('KTB915', 'Pendidikan Anak'),
('KTB916', 'Kesehatan, Gizi, dan Kebugaran'),
('KTB917', 'Resep Masakan Dunia'),
('KTB918', 'Seni Rupa & Visual'),
('KTB919', 'Fotografi Kreatif'),
('KTB920', 'Teori dan Komposisi Musik'),
('KTB921', 'Drama & Seni Teater'),
('KTB922', 'Cerita Misteri dan Detektif'),
('KTB923', 'Petualangan & Eksplorasi'),
('KTB924', 'Fantasi dan Dunia Magis'),
('KTB925', 'Kisah Romansa'),
('KTB926', 'Buku Edukasi Anak'),
('KTB927', 'Literatur untuk Remaja'),
('KTB928', 'Ensiklopedia Dunia'),
('KTB929', 'Puisi dan Syair Kontemporer'),
('KTB930', 'Antologi Sastra');

INSERT INTO pegawai (idPegawai, namaPegawai, alamatPegawai) VALUES
('PGW030', 'Amelia Santoso', 'Jl. Gatot Subroto No. 12, Jakarta'),
('PGW031', 'Bagas Wirawan', 'Jl. Pancoran Timur No. 18, Bandung'),
('PGW032', 'Cindy Maharani', 'Jl. Kemayoran No. 9, Surabaya'),
('PGW033', 'Dwi Cahyo', 'Jl. Cempaka Putih No. 7, Medan'),
('PGW034', 'Eka Fajar', 'Jl. Kebayoran Baru No. 23, Yogyakarta'),
('PGW035', 'Farah Kusuma', 'Jl. Thamrin No. 16, Semarang'),
('PGW036', 'Gilang Pratama', 'Jl. Braga No. 54, Makassar'),
('PGW037', 'Hana Rahmani', 'Jl. Rawa Indah No. 11, Palembang'),
('PGW038', 'Indra Saputra', 'Jl. Tanjung No. 20, Denpasar'),
('PGW039', 'Junaidi Ramdhan', 'Jl. Proklamasi No. 31, Malang'),
('PGW040', 'Karina Rahmat', 'Jl. Kaliurang No. 15, Padang'),
('PGW041', 'Lutfi Ardiansyah', 'Jl. Kembang No. 21, Pekanbaru'),
('PGW042', 'Maya Nuraini', 'Jl. Surapati No. 27, Bogor'),
('PGW043', 'Nanda Kurniawan', 'Jl. Karet No. 14, Solo'),
('PGW044', 'Oscar Hidayat', 'Jl. Cemara No. 17, Banjarmasin'),
('PGW045', 'Putu Wijaya', 'Jl. Sanur No. 25, Bandar Lampung'),
('PGW046', 'Qori Akbar', 'Jl. Sumatera No. 30, Pontianak'),
('PGW047', 'Ratih Anggraini', 'Jl. Balikpapan No. 10, Balikpapan'),
('PGW048', 'Sukmawan Syahputra', 'Jl. Senayan No. 8, Samarinda'),
('PGW049', 'Tari Kusuma', 'Jl. Merapi No. 26, Tasikmalaya'),
('PGW050', 'Umar Faruq', 'Jl. Kayu Manis No. 3, Cirebon'),
('PGW051', 'Vino Ardian', 'Jl. Ahmad Yani No. 19, Mataram'),
('PGW052', 'Wira Santosa', 'Jl. Merdeka Timur No. 14, Jayapura'),
('PGW053', 'Yayan Suryadi', 'Jl. Kepiting No. 50, Manado'),
('PGW054', 'Zahra Pratiwi', 'Jl. Kalibaru No. 22, Palu'),
('PGW055', 'Adi Saputra', 'Jl. Dahlia No. 28, Sukabumi'),
('PGW056', 'Bella Kurniati', 'Jl. Bungur No. 41, Serang'),
('PGW057', 'Cahyo Wijaya', 'Jl. Durian No. 19, Tegal'),
('PGW058', 'Dinda Lestari', 'Jl. Angsana No. 55, Probolinggo'),
('PGW059', 'Eris Surya', 'Jl. Pinus No. 44, Jember');

  INSERT INTO peminjam (idPeminjam, tglPinjam, tglKembali, denda, idBuku, jumlahPinjam, idAnggota) VALUES
('PMJ030', '2024-01-10', '2024-01-17', 0.00, 'BK001', 1, 'KTA10'),
('PMJ031', '2024-01-11', '2024-01-15', 2000.00, 'BK002', 1, 'KTA11'),
('PMJ032', '2024-01-12', '2024-01-20', 5000.00, 'BK003', 2, 'KTA12'),
('PMJ033', '2024-01-15', '2024-01-25', 0.00, 'BK004', 3, 'KTA13'),
('PMJ034', '2024-01-16', '2024-01-22', 3000.00, 'BK005', 1, 'KTA14'),
('PMJ035', '2024-01-18', '2024-01-26', 0.00, 'BK006', 2, 'KTA15'),
('PMJ036', '2024-01-19', '2024-01-23', 1000.00, 'BK007', 1, 'KTA16'),
('PMJ037', '2024-01-20', '2024-01-27', 4000.00, 'BK008', 1, 'KTA17'),
('PMJ038', '2024-01-22', '2024-01-30', 0.00, 'BK009', 1, 'KTA18'),
('PMJ039', '2024-01-23', '2024-02-01', 5000.00, 'BK010', 2, 'KTA19'),
('PMJ040', '2024-01-24', '2024-01-31', 0.00, 'BK011', 3, 'KTA20'),
('PMJ041', '2024-01-25', '2024-02-02', 2000.00, 'BK012', 1, 'KTA21'),
('PMJ042', '2024-01-27', '2024-02-05', 0.00, 'BK013', 2, 'KTA22'),
('PMJ043', '2024-01-28', '2024-02-06', 3000.00, 'BK014', 1, 'KTA23'),
('PMJ044', '2024-01-29', '2024-02-03', 0.00, 'BK015', 1, 'KTA24'),
('PMJ045', '2024-01-30', '2024-02-07', 4000.00, 'BK016', 1, 'KTA25'),
('PMJ046', '2024-02-01', '2024-02-10', 0.00, 'BK017', 1, 'KTA26'),
('PMJ047', '2024-02-02', '2024-02-08', 1500.00, 'BK018', 2, 'KTA27'),
('PMJ048', '2024-02-03', '2024-02-11', 0.00, 'BK019', 1, 'KTA28'),
('PMJ049', '2024-02-04', '2024-02-12', 5000.00, 'BK020', 1, 'KTA29'),
('PMJ050', '2024-02-05', '2024-02-09', 0.00, 'BK021', 3, 'KTA30'),
('PMJ051', '2024-02-06', '2024-02-14', 2000.00, 'BK022', 1, 'KTA31'),
('PMJ052', '2024-02-07', '2024-02-13', 0.00, 'BK023', 2, 'KTA32'),
('PMJ053', '2024-02-08', '2024-02-15', 4000.00, 'BK024', 1, 'KTA33'),
('PMJ054', '2024-02-09', '2024-02-17', 0.00, 'BK025', 1, 'KTA34'),
('PMJ055', '2024-02-10', '2024-02-18', 1000.00, 'BK026', 1, 'KTA35'),
('PMJ056', '2024-02-11', '2024-02-19', 3000.00, 'BK027', 1, 'KTA36'),
('PMJ057', '2024-02-12', '2024-02-20', 0.00, 'BK028', 2, 'KTA37'),
('PMJ058', '2024-02-13', '2024-02-21', 2000.00, 'BK029', 1, 'KTA38'),
('PMJ059', '2024-02-14', '2024-02-22', 0.00, 'BK030', 3, 'KTA39');

INSERT INTO penerbit (idPenerbit, namaPenerbit, lokasi) VALUES
('PT201', 'Gramedia Utama', 'Jakarta'),
('PT202', 'Erlangga Media', 'Jakarta'),
('PT203', 'Mizan Media Utama', 'Bandung'),
('PT204', 'AgroMedia Nusantara', 'Bogor'),
('PT205', 'Andi Publisher', 'Yogyakarta'),
('PT206', 'Bentang Nusantara', 'Yogyakarta'),
('PT207', 'Kepustakaan Nusantara', 'Jakarta'),
('PT208', 'Pustaka Ilmu', 'Jakarta'),
('PT209', 'Gagas Nusantara', 'Jakarta'),
('PT210', 'Pustaka Pemuda', 'Yogyakarta'),
('PT211', 'Narasi Publisher', 'Bandung'),
('PT212', 'Kompas Nusantara', 'Jakarta'),
('PT213', 'Serambi Media', 'Jakarta'),
('PT214', 'Rajawali Pustaka', 'Jakarta'),
('PT215', 'Aksara Media', 'Jakarta'),
('PT216', 'Deepublish Yogyakarta', 'Yogyakarta'),
('PT217', 'Nuansa Nusantara', 'Bandung'),
('PT218', 'Langgam Ilmu', 'Surabaya'),
('PT219', 'Citra Nusantara', 'Yogyakarta'),
('PT220', 'Divapress Indonesia', 'Yogyakarta'),
('PT221', 'Alfabeta Media', 'Bandung'),
('PT222', 'Obor Pustaka', 'Jakarta'),
('PT223', 'Swadaya Press', 'Bogor'),
('PT224', 'Pressindo Media', 'Yogyakarta'),
('PT225', 'Kanisius Indonesia', 'Yogyakarta'),
('PT226', 'Indeks Publisher', 'Jakarta'),
('PT227', 'Media Nusantara', 'Jakarta'),
('PT228', 'Salemba Empat', 'Jakarta'),
('PT229', 'Serangkai Nusantara', 'Solo'),
('PT230', 'Jaya Pustaka', 'Jakarta');

INSERT INTO supplaiBuku (idSuplai, idBuku, tanggal, jumlah) VALUES
('SB10', 'BK001', '2024-01-05', 10),
('SB11', 'BK002', '2024-01-10', 15),
('SB12', 'BK003', '2024-01-15', 5),
('SB13', 'BK004', '2024-01-20', 8),
('SB14', 'BK005', '2024-01-25', 12),
('SB15', 'BK006', '2024-01-30', 20),
('SB16', 'BK007', '2024-02-01', 7),
('SB17', 'BK008', '2024-02-05', 9),
('SB18', 'BK009', '2024-02-10', 6),
('SB19', 'BK010', '2024-02-15', 13),
('SB20', 'BK011', '2024-02-20', 15),
('SB21', 'BK012', '2024-02-25', 18),
('SB22', 'BK013', '2024-03-01', 11),
('SB23', 'BK014', '2024-03-05', 14),
('SB24', 'BK015', '2024-03-10', 10),
('SB25', 'BK016', '2024-03-15', 7),
('SB26', 'BK017', '2024-03-20', 20),
('SB27', 'BK018', '2024-03-25', 5),
('SB28', 'BK019', '2024-03-30', 6),
('SB29', 'BK020', '2024-04-01', 12),
('SB30', 'BK021', '2024-04-05', 10),
('SB31', 'BK022', '2024-04-10', 8),
('SB32', 'BK023', '2024-04-15', 15),
('SB33', 'BK024', '2024-04-20', 10),
('SB34', 'BK025', '2024-04-25', 20),
('SB35', 'BK026', '2024-04-30', 18),
('SB36', 'BK027', '2024-05-01', 9),
('SB37', 'BK028', '2024-05-05', 7),
('SB38', 'BK029', '2024-05-10', 6),
('SB39', 'BK030', '2024-05-15', 15);

INSERT INTO transaksi (IDTransaksi, JumlahTransaksi, TanggalTransaksi, idSuplai) VALUES
('TNR900', 62000, '2024-01-06', 'SB10'),
('TNR901', 80000, '2024-01-11', 'SB11'),
('TNR902', 32000, '2024-01-16', 'SB12'),
('TNR903', 55000, '2024-01-21', 'SB13'),
('TNR904', 72000, '2024-01-26', 'SB14'),
('TNR905', 110000, '2024-01-31', 'SB15'),
('TNR906', 38000, '2024-02-02', 'SB16'),
('TNR907', 49000, '2024-02-06', 'SB17'),
('TNR908', 34000, '2024-02-11', 'SB18'),
('TNR909', 67000, '2024-02-16', 'SB19'),
('TNR910', 82000, '2024-02-21', 'SB20'),
('TNR911', 97000, '2024-02-26', 'SB21'),
('TNR912', 59000, '2024-03-02', 'SB22'),
('TNR913', 75000, '2024-03-06', 'SB23'),
('TNR914', 52000, '2024-03-11', 'SB24'),
('TNR915', 37000, '2024-03-16', 'SB25'),
('TNR916', 105000, '2024-03-21', 'SB26'),
('TNR917', 28000, '2024-03-26', 'SB27'),
('TNR918', 32000, '2024-03-31', 'SB28'),
('TNR919', 63000, '2024-04-02', 'SB29'),
('TNR920', 51000, '2024-04-06', 'SB30'),
('TNR921', 42000, '2024-04-11', 'SB31'),
('TNR922', 78000, '2024-04-16', 'SB32'),
('TNR923', 53000, '2024-04-21', 'SB33'),
('TNR924', 102000, '2024-04-26', 'SB34'),
('TNR925', 93000, '2024-05-01', 'SB35'),
('TNR926', 47000, '2024-05-03', 'SB36'),
('TNR927', 36000, '2024-05-06', 'SB37'),
('TNR928', 31000, '2024-05-11', 'SB38'),
('TNR929', 78000, '2024-05-16', 'SB39');

SELECT pegawai.idPegawai, pegawai.namaPegawai, COUNT(peminjam.idPeminjam) AS totalPeminjaman
FROM pegawai 
LEFT JOIN peminjam ON pegawai.idPegawai = pegawai.idPegawai
GROUP BY pegawai.idPegawai, pegawai.namaPegawai;
SELECT supplaibuku.idSuplai, supplaibuku.tanggal, SUM(transaksi.JumlahTransaksi) AS totalJumlahTransaksi
FROM transaksi
RIGHT JOIN supplaibuku ON transaksi.idSuplai = supplaibuku.idSuplai
GROUP BY supplaibuku.idSuplai, supplaibuku.tanggal;

SELECT 
    penerbit.idPenerbit,
    penerbit.namaPenerbit,
    penerbit.lokasiPenerbit,
    MAX(buku.tahunTerbit) AS TahunBukuTerawal
FROM 
    penerbit
LEFT JOIN 
    buku ON penerbit.idPenerbit = buku.idPenerbit
GROUP BY 
    penerbit.idPenerbit, 
    penerbit.namaPenerbit, 
    penerbit.lokasiPenerbit

UNION

SELECT 
    buku.idPenerbit,
    NULL AS namaPenerbit,
    NULL AS lokasiPenerbit,
    MAX(buku.tahunTerbit) AS TahunBukuTerawal
FROM 
    buku
LEFT JOIN 
    penerbit ON buku.idPenerbit = penerbit.idPenerbit
WHERE 
    penerbit.idPenerbit IS NULL
GROUP BY 
    buku.idPenerbit

ORDER BY 
    idPenerbit DESC, 
    TahunBukuTerawal ASC;
SELECT
    anggota.idAnggota,
    anggota.namaanggota, 
    MIN(peminjam.tglpinjam) AS tanggalpeminjamanterakhir, 
    jurusan.namajurusan
FROM
    anggota
INNER JOIN 
    peminjam ON anggota.idAnggota = peminjam.idanggota
INNER JOIN
    jurusan ON anggota.idJurusan = jurusan.idjurusan
GROUP BY
    anggota.idAnggota, 
    anggota.namaanggota, 
    jurusan.namajurusan
ORDER BY
    tanggalpeminjamanterakhir DESC;


SELECT buku.*, peminjam.jumlahPinjam
FROM buku
JOIN peminjam ON buku.idBuku = peminjam.idBuku
WHERE peminjam.jumlahPinjam > 1;
