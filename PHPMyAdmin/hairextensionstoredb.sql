-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Nis 2024, 19:16:24
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hairextensionstoredb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_indirimkupon`
--

CREATE TABLE `tbl_indirimkupon` (
  `Kupon_ID` int(11) NOT NULL,
  `Kupon_Kodu` varchar(25) NOT NULL,
  `Kupon_GecerlilikSuresi` datetime NOT NULL,
  `Kupon_KullanimDurum` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='Bu Tabloda İndirim Kupon Bilgisi Bulunmaktadır.';

--
-- Tablo döküm verisi `tbl_indirimkupon`
--

INSERT INTO `tbl_indirimkupon` (`Kupon_ID`, `Kupon_Kodu`, `Kupon_GecerlilikSuresi`, `Kupon_KullanimDurum`) VALUES
(1, 'SEPETTE100', '2024-08-15 21:06:54', 'Pasif'),
(2, 'SAÇ1020', '2024-04-19 21:08:36', 'Aktif'),
(3, 'PERUK2529', '2024-01-17 21:08:36', 'Pasif'),
(4, 'MAYIS2020', '2022-05-01 19:42:19', 'Pasif'),
(5, 'EKİM11', '2023-10-20 19:42:19', 'Pasif'),
(6, 'YILBASI100', '2021-12-25 19:44:11', 'Pasif'),
(7, 'KASIM2025', '2023-11-20 19:44:11', 'Pasif'),
(8, 'BAHAR7075', '2024-04-20 19:45:09', 'Aktif'),
(9, 'YAZ1001', '2023-06-08 19:45:09', 'Pasif'),
(10, 'KIS1214', '2024-01-06 19:46:10', 'Pasif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `Kat_ID` int(11) NOT NULL,
  `Kat_Ad` varchar(255) NOT NULL,
  `Kat_Tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='Bu Tablo Kategori içerir.';

--
-- Tablo döküm verisi `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`Kat_ID`, `Kat_Ad`, `Kat_Tarih`) VALUES
(1, 'Peruk', '2024-03-27 20:09:26'),
(2, 'Örgülük Saçlar', '2024-03-27 20:09:26'),
(3, 'Boncuk Kaynak Saç', '2024-03-27 20:10:02'),
(4, 'Mikro Kaynak Saç', '2024-03-27 20:10:02'),
(5, 'Protez Saç', '2024-03-27 20:10:37'),
(6, 'At Kuyruğu Saç', '2024-03-27 20:10:37'),
(7, 'Yarımay ÇıtÇıt Saç', '2024-03-27 20:11:12'),
(8, 'Çıt Çıt Saç', '2024-03-27 20:11:12'),
(9, 'Perçem Saç', '2024-03-27 20:11:54'),
(10, 'Afro Saçlar', '2024-03-27 20:11:54'),
(11, 'Tepelik Saçlar', '2024-03-27 20:13:52'),
(12, 'Tül Peruklar', '2024-03-27 20:21:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_musteriler`
--

CREATE TABLE `tbl_musteriler` (
  `Mus_ID` int(11) NOT NULL,
  `Mus_Ad` varchar(50) NOT NULL,
  `Mus_Soyad` varchar(50) NOT NULL,
  `Mus_GSM` varchar(11) NOT NULL,
  `Mus_Email` varchar(150) NOT NULL,
  `Mus_DogumTarih` date NOT NULL,
  `Mus_TeslimatAdres` varchar(250) NOT NULL,
  `Mus_FaturaAdres` varchar(250) NOT NULL,
  `Mus_IL` varchar(50) NOT NULL,
  `Mus_ILCE` varchar(50) NOT NULL,
  `Mus_KayıtTarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='Bu Tabloda Müşteri Kayıtları Tutulmaktadır';

--
-- Tablo döküm verisi `tbl_musteriler`
--

INSERT INTO `tbl_musteriler` (`Mus_ID`, `Mus_Ad`, `Mus_Soyad`, `Mus_GSM`, `Mus_Email`, `Mus_DogumTarih`, `Mus_TeslimatAdres`, `Mus_FaturaAdres`, `Mus_IL`, `Mus_ILCE`, `Mus_KayıtTarih`) VALUES
(1, 'Ahmet', 'YILMAZ', '05551234567', 'Ahmetyilmaz@example.com', '1990-11-02', 'Güneşli sok. Mermer cad. NO:54\r\n', 'Güneşli sok. Mermer cad. NO:54', 'İSTANBUL', 'SULTANBEY', '2024-03-27 19:25:17'),
(2, 'Mehmet', 'DEMİR', '05464788559', 'mehmetdemir@example.com', '1983-04-22', 'Menekşe sok. okullar cad. NO:21', 'Menekşe sok. okullar cad. NO:21', 'İSTANBUL ', 'SARIYER', '2024-03-27 19:25:17'),
(3, 'Ayşe', 'KAYA', '05465966332', 'aysekaya@example.com', '1999-12-14', 'Yeşilırmah mah. çeçenistan cad. NO:54', 'Yeşilırmah mah. çeçenistan cad. NO:54', 'TOKAT', 'MERKEZ', '2024-03-27 19:32:06'),
(4, 'Salim', 'DEMİRCİ', '05432121514', 'salimdemirci@example.com', '1975-01-25', 'Osmangazi sok. yediklim cad. NO:35', 'Osmangazi sok. yediklim cad. NO:35', 'İZMİR', 'KONAK', '2024-03-27 19:32:06'),
(5, 'Melike', 'HANLI', '05455898556', 'melikehanli@gop.edu.tr', '2014-06-12', 'yeniçeşme mah. ayfer sok. NO:25', 'yeniçeşme mah. ayfer sok. NO:25', 'TOKAT', 'MERKEZ', '2024-04-15 18:50:58'),
(6, 'zeynep', 'ŞAN', '05652545457', 'zeynepsan@gop.edu.tr', '1999-02-21', 'yeniçeşme mah. ayfer sok. NO:25', 'yeniçeşme mah. ayfer sok. NO:25', 'AYDIN', 'MERKEZ', '2024-04-16 06:50:02'),
(7, 'Eylül', 'ÖZ', '05462561489', 'eyluloz@gop.edu.tr', '1999-12-06', 'Yenişehir Mah.  yıldız Sok. NO:23', 'Yenişehir Mah.  yıldız Sok. NO:23', 'İZMİR', 'MENEMEN', '2024-04-17 16:51:07'),
(8, 'Alperen', 'SEÇGİN', '05302221512', 'alperensecgin@gop.edu.tr', '1997-05-09', 'Yelken mah. Şahin Sok. NO:67', 'Yelken mah. Şahin Sok. NO:67', 'TRABZON', 'MERKEZ', '2024-04-17 16:51:07'),
(9, 'Kazım', 'AKMEŞE', '05455266336', 'kazımakmese@gop.edu.tr', '1974-11-25', 'saklıbahçe mah. yılmaz sok. NO:41', 'saklıbahçe mah. yılmaz sok. NO:41', 'ÇORUM', 'MERKEZ', '2024-04-17 16:55:20'),
(10, 'Muhammet Said', 'DOST', '05465235157', 'muhammetsaid@gop.edu.tr', '1989-09-28', 'Gece Mah. Papatya Sok. NO:78', 'Gece Mah. Papatya Sok. NO:78', 'MERSİN', 'MERKEZ', '2024-04-17 16:55:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_sepet`
--

CREATE TABLE `tbl_sepet` (
  `Sepet_ID` int(11) NOT NULL,
  `Sepet_KullaniciID` int(11) NOT NULL,
  `Sepet_Urun_ID` int(11) NOT NULL,
  `Sepet_Urun_Barkod` varchar(100) NOT NULL,
  `Sepet_Miktar` varchar(50) NOT NULL,
  `Sepet_ToplamTutar` float NOT NULL,
  `Sepet_Tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='Bu Tabloda Sepete Eklenen Ürün Bilgileri Vardır';

--
-- Tablo döküm verisi `tbl_sepet`
--

INSERT INTO `tbl_sepet` (`Sepet_ID`, `Sepet_KullaniciID`, `Sepet_Urun_ID`, `Sepet_Urun_Barkod`, `Sepet_Miktar`, `Sepet_ToplamTutar`, `Sepet_Tarih`) VALUES
(1, 1, 2, 'H7836-2F89A', '5', 5500, '2024-04-02 17:58:39'),
(2, 2, 5, ' WW4-26INCH', '6', 90000, '2024-04-02 17:58:39'),
(3, 3, 7, 'H8958-BD2123', '200', 180000, '2024-04-02 18:02:50'),
(4, 4, 9, 'W2886-2-30-PM-14X', '500', 450000, '2024-04-02 18:02:50'),
(5, 6, 7, 'H8958-BD2123', '10000', 900000, '2024-04-17 16:59:32'),
(6, 5, 11, 'W026-3-88-85', '5000', 4500000, '2024-04-17 16:59:32'),
(7, 5, 9, 'W2886-2-30-PM-14X', '500', 450000, '2024-04-17 17:02:34'),
(8, 4, 1, 'H4899-10', '50000', 55000000, '2024-04-17 17:02:34'),
(9, 7, 16, 'Esperer-Afro-8', '10000', 4500000, '2024-04-17 17:05:02'),
(10, 8, 14, 'GP-4-PM-14-X', '750', 225000, '2024-04-17 17:05:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_siparis`
--

CREATE TABLE `tbl_siparis` (
  `Siparis_ID` int(11) NOT NULL,
  `Sıparis_Mus_ID` int(11) NOT NULL,
  `Siparis_Tarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `Siparis_ToplamTutar` float NOT NULL,
  `Siparis_Durum` varchar(50) NOT NULL,
  `Siparis_OdemeDurum` varchar(10) NOT NULL,
  `Siparis_urun_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='Bu Tabloda Müşteri Sipariş Bilgileri Vardır';

--
-- Tablo döküm verisi `tbl_siparis`
--

INSERT INTO `tbl_siparis` (`Siparis_ID`, `Sıparis_Mus_ID`, `Siparis_Tarih`, `Siparis_ToplamTutar`, `Siparis_Durum`, `Siparis_OdemeDurum`, `Siparis_urun_ID`) VALUES
(1, 1, '2024-04-02 17:45:08', 5000, 'Hazırlanıyor', 'Kredi Kart', 2),
(2, 3, '2024-04-02 17:45:08', 10000, 'Kargoya Verildi', 'EFT', 3),
(3, 4, '2024-04-02 17:55:26', 10000, 'Teslim Edildi', 'Havale', 11),
(4, 3, '2024-04-02 17:55:26', 5000, 'Hazırlanıyor', 'EFT', 6),
(5, 6, '2024-04-17 17:06:05', 10000, 'Hazırlanıyor', 'Kredi Kart', 11),
(6, 10, '2024-04-17 17:06:05', 5000, 'Kargoya Verildi', 'EFT', 6),
(7, 7, '2024-04-17 17:07:14', 150000, 'Hazırlanıyor', 'Havale', 5),
(8, 1, '2024-04-17 17:07:14', 25000000, 'Kargoya Verildi', 'EFT', 13),
(9, 6, '2024-04-17 17:09:30', 3500, 'Hazırlanıyor', 'Kredi Kart', 13),
(10, 4, '2024-04-17 17:09:30', 20000000, 'Hazırlanıyor', 'Havale', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_stok`
--

CREATE TABLE `tbl_stok` (
  `Stok_ID` int(11) NOT NULL,
  `Stok_Kat_ID` int(11) NOT NULL,
  `Stok_Urun_Barkod` varchar(100) NOT NULL,
  `Stok_AlısFiyat` float NOT NULL,
  `Stok_SatısFiyat` float NOT NULL,
  `Stok_Miktari` varchar(500) NOT NULL,
  `Stok_Tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='Bu Tabloda Stok Bilgileri Vardır.';

--
-- Tablo döküm verisi `tbl_stok`
--

INSERT INTO `tbl_stok` (`Stok_ID`, `Stok_Kat_ID`, `Stok_Urun_Barkod`, `Stok_AlısFiyat`, `Stok_SatısFiyat`, `Stok_Miktari`, `Stok_Tarih`) VALUES
(1, 1, 'H4899-10', 850, 1100, '10000', '2024-03-28 13:29:35'),
(2, 1, 'H7836-2F89A', 850, 1100, '10000', '2024-03-28 13:29:35'),
(3, 1, 'H7231-4-PM', 850, 1100, '6000', '2024-03-28 13:31:00'),
(4, 12, 'SY11063-TT2171-PM', 3600, 4000, '6500', '2024-03-28 13:31:00'),
(5, 12, 'WW4-26INCH', 13500, 15000, '25000', '2024-03-28 13:32:24'),
(6, 2, '3-22-PM-14X', 200, 250, '1500', '2024-03-28 13:32:24'),
(7, 6, 'H8958-BD2123', 850, 900, '500', '2024-03-28 13:33:26'),
(8, 6, 'M150-85-88', 850, 900, '10000', '2024-03-28 13:33:26'),
(9, 8, 'W2886-2-30-PM-14X', 550, 600, '750', '2024-03-28 13:34:51'),
(10, 8, 'W2681-2-33-PM-14X', 850, 900, '5000', '2024-03-28 13:34:51'),
(11, 7, 'W026-3-88-85', 850, 900, '5000', '2024-03-28 13:41:39'),
(12, 7, 'HD047-4T118-PM-14X', 850, 900, '5000', '2024-03-28 13:41:39'),
(13, 9, 'G201-8A-PM-14X', 150, 200, '9000', '2024-03-28 13:42:13'),
(14, 9, 'GP-4-PM-14X', 250, 300, '10000', '2024-03-28 13:43:25'),
(15, 10, 'Esperer-Afro-2-10', 400, 450, '8000', '2024-03-28 13:43:25'),
(16, 10, 'Esperer-Afro-8', 400, 450, '10000', '2024-03-28 13:43:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_urunler`
--

CREATE TABLE `tbl_urunler` (
  `Urun_ID` int(11) NOT NULL,
  `Urun_Kat_ID` int(11) NOT NULL,
  `Urun_Barkod` varchar(50) NOT NULL,
  `Urun_Ad` varchar(100) NOT NULL,
  `Urun_Sekli` varchar(100) NOT NULL,
  `Urun_Uzunluk` float NOT NULL,
  `Urun_Turu` varchar(150) NOT NULL,
  `Urun_Renk` varchar(150) NOT NULL,
  `Urun_Fiyat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci COMMENT='Bu Tabloda Ürün Bilgileri İçerir';

--
-- Tablo döküm verisi `tbl_urunler`
--

INSERT INTO `tbl_urunler` (`Urun_ID`, `Urun_Kat_ID`, `Urun_Barkod`, `Urun_Ad`, `Urun_Sekli`, `Urun_Uzunluk`, `Urun_Turu`, `Urun_Renk`, `Urun_Fiyat`) VALUES
(1, 1, 'H4899-10', 'Katlı Kesim Perçemli Düz Fiber Sentetik 260 gram ', 'Düz Saç', 60, 'Fiber Sentetik', 'Kumral', 1100),
(2, 1, 'H7836-2F89A', 'Dalgalı Perçemli Fiber Sentetik 260 gram', 'Dalgalı Saç', 60, 'Fiber Sentetik', 'Siyah Gri Ombreli', 1100),
(3, 1, 'H7231-4-PM', 'Düz Perçemli Uzun Fiber Sentetik Peruk 260 gram', 'Düz Saç', 90, 'Fiber Sentetik', 'Kahverengi', 1100),
(4, 12, 'SY11063-TT2171-PM', 'Afro Dalga Fiber Sentetik Tül Peruk 250 gram', 'Afro Dalga Saç', 90, 'Fiber Sentetik Saç', 'Siyah Gri Ombreli', 4000),
(5, 12, ' WW4-26INCH', 'Afro Dalga Front Lace Gerçek Tül Peruk 230 gram', 'Afro Dalgalı Saç ', 70, 'Fiber Sentetik', 'Açık Kahve', 15000),
(6, 2, '3-22-PM-14X', 'Afrika Örgüsü Ve Rasta İçin Sentetik Ombreli Saç\r\n165gr ', '-', 81, 'Sentetik', ' Siyah / Koyu Yeşil / Açık Yeşil', 250),
(7, 6, 'H8958-BD2123', 'Tokalı Dalgalı At Kuyruğu 100 gram', 'Dalgalı Saç', 75, 'Fiber Sentetik', 'Bal Köpüğü', 900),
(8, 6, 'M150-85-88', 'Bağlamalı Düz At Kuyruğu 100  gram', 'Düz Saç', 75, 'Fiber Sentetik', 'Kumral Beyaz Platin Röfleli', 600),
(9, 8, 'W2886-2-30-PM-14X', 'Fiber Sentetik Kabarık Dalgalı 8 Parça Çıt Çıt 130 gram', 'Kabarık Dalgalı Saç', 70, 'Fiber Sentetik', 'Kahve Karamel', 900),
(10, 8, 'W2681-2-33-PM-14X', 'Fiber Sentetik Düz 8 Parça Çıt Çıt 150 gram', 'Düz Saç', 65, 'Fiber Sentetik', 'Koyu Kahve', 900),
(11, 7, 'W026-3-88-85', 'Fiber Sentetik Kabarık Dalgalı Yarım Ay + 2 Yan Çıt Çıt', 'Kbarık Dalgalı Saç', 70, 'Fiber Sentetik', 'Kumral Beyaz Platin Röfleli', 900),
(12, 7, 'HD047-4T118-PM-14X', 'Fiber Sentetik Düz Yarım Ay + 2 Yan Çıt Çıt 150 gram', 'Düz Saç', 70, 'Fiber Sentetik', 'Koyu Kızıl', 900),
(13, 9, 'G201-8A-PM-14X', 'Fiber Sentetik Perçem 4 gram', 'Düz Saç', 20, 'Fiber Sentetik', 'Kumral', 200),
(14, 9, 'GP-4-PM-14X', 'Gerçek Perçem  4-5 gram', 'Düz Saç', 20, 'Gerçek Saç', 'Kızıl Kahve', 300),
(15, 10, 'Esperer-Afro-2-10', 'Afro Dalgası Saç  100 gram ', 'Afro Dalgalı Saç', 50, 'Fiber Sentetik', 'Siyah Gri Ombreli', 450),
(16, 10, 'Esperer-Afro-8', 'Afro Dalgası Saç 100 gram', 'Afro Dalgalı Saç', 50, 'Fiber Sentetik', 'Açık Kahve', 450);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tbl_indirimkupon`
--
ALTER TABLE `tbl_indirimkupon`
  ADD PRIMARY KEY (`Kupon_ID`);

--
-- Tablo için indeksler `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`Kat_ID`);

--
-- Tablo için indeksler `tbl_musteriler`
--
ALTER TABLE `tbl_musteriler`
  ADD PRIMARY KEY (`Mus_ID`);

--
-- Tablo için indeksler `tbl_sepet`
--
ALTER TABLE `tbl_sepet`
  ADD PRIMARY KEY (`Sepet_ID`),
  ADD KEY `fk_sepet` (`Sepet_Urun_ID`);

--
-- Tablo için indeksler `tbl_siparis`
--
ALTER TABLE `tbl_siparis`
  ADD PRIMARY KEY (`Siparis_ID`),
  ADD KEY `Sıparis_Mus_ID` (`Siparis_ID`),
  ADD KEY `fk_siparis` (`Sıparis_Mus_ID`);

--
-- Tablo için indeksler `tbl_stok`
--
ALTER TABLE `tbl_stok`
  ADD PRIMARY KEY (`Stok_ID`),
  ADD KEY `fk_stok` (`Stok_Kat_ID`);

--
-- Tablo için indeksler `tbl_urunler`
--
ALTER TABLE `tbl_urunler`
  ADD PRIMARY KEY (`Urun_ID`),
  ADD KEY `fk_urunler` (`Urun_Kat_ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tbl_indirimkupon`
--
ALTER TABLE `tbl_indirimkupon`
  MODIFY `Kupon_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `Kat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_musteriler`
--
ALTER TABLE `tbl_musteriler`
  MODIFY `Mus_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_sepet`
--
ALTER TABLE `tbl_sepet`
  MODIFY `Sepet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_siparis`
--
ALTER TABLE `tbl_siparis`
  MODIFY `Siparis_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_stok`
--
ALTER TABLE `tbl_stok`
  MODIFY `Stok_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_urunler`
--
ALTER TABLE `tbl_urunler`
  MODIFY `Urun_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `tbl_sepet`
--
ALTER TABLE `tbl_sepet`
  ADD CONSTRAINT `fk_sepet` FOREIGN KEY (`Sepet_Urun_ID`) REFERENCES `tbl_urunler` (`Urun_ID`);

--
-- Tablo kısıtlamaları `tbl_siparis`
--
ALTER TABLE `tbl_siparis`
  ADD CONSTRAINT `fk_siparis` FOREIGN KEY (`Sıparis_Mus_ID`) REFERENCES `tbl_musteriler` (`Mus_ID`);

--
-- Tablo kısıtlamaları `tbl_stok`
--
ALTER TABLE `tbl_stok`
  ADD CONSTRAINT `fk_stok` FOREIGN KEY (`Stok_Kat_ID`) REFERENCES `tbl_kategori` (`Kat_ID`);

--
-- Tablo kısıtlamaları `tbl_urunler`
--
ALTER TABLE `tbl_urunler`
  ADD CONSTRAINT `fk_urunler` FOREIGN KEY (`Urun_Kat_ID`) REFERENCES `tbl_kategori` (`Kat_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
