--
-- DbNinja v3.2.7 for MySQL
--
-- Dump date: 2018-02-13 06:13:36 (UTC)
-- Server version: 10.1.28-MariaDB
-- Database: odtbrdoc
--

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

DROP DATABASE IF EXISTS `odtbrdoc`;
CREATE DATABASE `odtbrdoc` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `odtbrdoc`;

--
-- Structure for table: appsetting
--
DROP TABLE IF EXISTS `appsetting`;
CREATE TABLE `appsetting` (
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Structure for table: menu
--
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_request` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'Y',
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkey_flolxjweck` (`page_id`),
  CONSTRAINT `fkey_flolxjweck` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Structure for table: pages
--
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Data for table: appsetting
--
LOCK TABLES `appsetting` WRITE;
ALTER TABLE `appsetting` DISABLE KEYS;

INSERT INTO `appsetting` (`name`,`value`) VALUES ('alamat_1','Jl. Tambong No. 15, Kabat'),('alamat_2','Banyuwangi, Jawa Timur'),('alat_counter','6'),('alat_prefix','ABT'),('armada_counter','65'),('armada_prefix','ARD'),('attendance_in_time',''),('attendance_libur_minggu','N'),('attendance_libur_sabtu','N'),('attendance_out_time',''),('cashbook_counter','93'),('company_name','UD Hasil Mancing'),('customer_counter','14'),('customer_jatuh_tempo','10'),('customer_payment_counter','43'),('customer_payment_prefix','CUST.IN'),('customer_prefix','CUST'),('dailyhd_counter','41'),('default_pdf_action','I'),('delivery_order_catatan_kaki','Barang telah diterima dalam keadaan baik dan cukup oleh: '),('delivery_order_slip_copy_number','4'),('delivery_order_slip_tertanda','Admin'),('do_counter','491'),('do_prefix','DO'),('driver_counter','119'),('driver_prefix','SPR'),('email','info@hasilmancing.com'),('hutang_counter','73'),('hutang_prefix','BILL'),('invoice_counter','118'),('invoice_item_number','1'),('invoice_prefix','INV'),('login_background','https://i.imgsafe.org/3f6b1ea468.jpg'),('logo_cetak','logo_cetak.png'),('lokasi_galian_counter','8'),('lokasi_galian_prefix','GLC'),('master_payment_in_counter','36'),('master_payment_in_prefix','MPAY.IN'),('material_counter','12'),('material_prefix','MTR'),('nota_timbang_counter','72'),('nota_timbang_prefix','TMB'),('operasional_alat_prefix','OA'),('paging_item_number','13'),('partner_counter','8'),('partner_prefix','PRT'),('payment_in_counter','595'),('payment_in_prefix','PAY.IN'),('payment_out_counter','14'),('payment_out_prefix','PAY.OUT'),('payroll_counter','1811'),('payroll_date_range','7'),('payroll_day','4'),('payroll_prefix','PAY'),('payslip_catatan_1','PERHATIAN :'),('payslip_catatan_2','1. Teliti dahulu struk pembayaran sebelum meninggalkan kantor.'),('payslip_catatan_3','2.  Laporkan kepada bagian administrasi jika terjadi kesalahan.'),('payslip_tertanda',' BAGIAN ADMINISTRASI'),('pembelian_counter','54'),('pembelian_prefix','PO'),('pengiriman_counter','1180'),('pengiriman_prefix','DO'),('penjualan_counter','38'),('penjualan_prefix','SO'),('piutang_counter','583'),('piutang_prefix','INV'),('po_counter','27'),('po_invoice_prefix','BILL'),('po_prefix','PO'),('printer_address','//localhost/LX-300'),('product_counter','9'),('product_prefix','PRD'),('sidebar_collapse','0'),('slip_copy_number','3'),('slip_kota','Banyuwangi'),('so_counter','160'),('so_prefix','SO'),('staff_counter','15'),('staff_prefix','STF'),('supplier_bill_counter','26'),('supplier_counter','9'),('supplier_payment_counter','15'),('supplier_payment_prefix','SUPP.OUT'),('supplier_prefix','SUPP'),('telp','0343-8897876');

ALTER TABLE `appsetting` ENABLE KEYS;
UNLOCK TABLES;
COMMIT;

--
-- Data for table: menu
--
LOCK TABLES `menu` WRITE;
ALTER TABLE `menu` DISABLE KEYS;

INSERT INTO `menu` (`id`,`menu_id`,`title`,`class_request`,`href`,`order`,`icon`,`active`,`page_id`) VALUES (1,NULL,'Home','home','home',1,NULL,'Y',NULL),(59,NULL,'Sales','pages*','#',2,NULL,'Y',NULL),(60,NULL,'Purchase','purchase','#',3,NULL,'Y',NULL),(61,NULL,'Inventory','inventory','#',4,NULL,'Y',NULL),(62,NULL,'Accounting','accounting','#',5,NULL,'Y',NULL),(63,59,'Create Sales Order','pages/1','pages/1',1,NULL,'Y',1),(64,59,'SO dengan Serial Number','pages/2','pages/2',2,NULL,'Y',2),(65,59,'Uang Muka Penjualan','pages/3','pages/3',3,NULL,'Y',3),(66,59,'Sale Pricelist','pages/8','pages/8',4,NULL,'Y',8),(67,61,'Penerimaan Barang','pages/4','pages/4',1,NULL,'Y',4),(68,61,'Internal Transfer/Mutasi Gudang','pages/5','pages/5',2,NULL,'Y',5),(69,60,'Create Purchase Order (PO)','pages/10','pages/10',1,NULL,'Y',10),(70,60,'PO dengan Serial Number','pages/11','pages/11',3,NULL,'Y',11),(71,60,'PO dengan Uang Muka','pages/14','pages/14',2,NULL,'Y',14);

ALTER TABLE `menu` ENABLE KEYS;
UNLOCK TABLES;
COMMIT;

--
-- Data for table: pages
--
LOCK TABLES `pages` WRITE;
ALTER TABLE `pages` DISABLE KEYS;

INSERT INTO `pages` (`id`,`created_at`,`title`,`desc`,`youtube_url`) VALUES (1,'2018-02-12 19:39:35','Create Sales Order',NULL,'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sEEvW1El62U\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(2,'2018-02-13 07:16:26','Sales Order dengan Serial Number',NULL,NULL),(3,'2018-02-13 07:21:48','Uang Muka Penjualan',NULL,NULL),(4,'2018-02-13 08:18:21','Penerimaan Barang',NULL,NULL),(5,'2018-02-13 08:18:29','Internal Transfer',NULL,NULL),(6,'2018-02-13 08:18:51','Production/Pemotongan Bahan',NULL,NULL),(7,'2018-02-13 08:19:04','Production/Pemotongan Khusus Twin Wall',NULL,NULL),(8,'2018-02-13 08:19:58','Sale Priceslist',NULL,NULL),(9,'2018-02-13 08:20:08','Pricelist Bertingkat',NULL,NULL),(10,'2018-02-13 11:21:46','Create Purchase Order',NULL,'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eJldMp37EWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(11,'2018-02-13 11:22:08','PO degan Serial Number',NULL,NULL),(12,'2018-02-13 11:22:24','Purchase Pricelist',NULL,NULL),(13,'2018-02-13 11:22:34','Pricelist Diskon',NULL,NULL),(14,'2018-02-13 11:25:41','PO dengan Uang Muka',NULL,'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/n9RexKN07KM\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

ALTER TABLE `pages` ENABLE KEYS;
UNLOCK TABLES;
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

