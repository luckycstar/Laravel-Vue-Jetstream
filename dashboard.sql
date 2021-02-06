/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.21 : Database - dashboard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dashboard` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `dashboard`;

/*Data for the table `failed_jobs` */

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),
(4,'2019_08_19_000000_create_failed_jobs_table',1),
(5,'2019_12_14_000001_create_personal_access_tokens_table',1),
(6,'2021_02_03_031846_create_sessions_table',1),
(7,'2021_02_05_000000_create_monthly_chart_table',2),
(8,'2021_02_05_000000_create_today_chart_table',2),
(9,'2021_02_05_000000_create_weekly_chart_table',2);

/*Data for the table `monthly_chart` */

insert  into `monthly_chart`(`id`,`label`,`data`,`created_at`,`updated_at`) values 
(1,'1 Jan',2000,NULL,NULL),
(2,'2 Feb',4000,NULL,NULL),
(3,'3 Mar',5000,NULL,NULL),
(4,'4 Apr',4000,NULL,NULL),
(5,'5 May',3400,NULL,NULL),
(6,'6 June',8000,NULL,NULL),
(7,'7 July',2500,NULL,NULL),
(8,'8 Aug',4320,NULL,NULL),
(9,'9 Sep ',4400,NULL,NULL),
(10,'10 Oct',1000,NULL,NULL),
(11,'11 Nov',9000,NULL,NULL),
(12,'12 Dec',6500,NULL,NULL);

/*Data for the table `password_resets` */

/*Data for the table `personal_access_tokens` */

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('BhH5HSsHvM3gvdw30Yhedyzo6Lud4FFSM5Mhd7Kk',2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQlNvbzNGemtoNlpzNjFqRjRmdDVLSUpodW1KakxuU3RzRFY1SUpkVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHIuWXprLjlqRWlQZzhMdFZpeTEvbk82cERCNW1ITWVvbUZ2NFdOL3pyOU54bWNEVi5JajIyIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRyLll6ay45akVpUGc4THRWaXkxL25PNnBEQjVtSE1lb21GdjRXTi96cjlOeG1jRFYuSWoyMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO319',1612565527),
('jRo4ywgb3ol9El091qnwxUl1U3qBOFYIxKt1ooYi',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTG1rcDVPQ1NXYnF0OUxZbUZpRWw5cElCZVpoQkg5ZndBSkYzNnVxUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRuQ3hZRUtWdGsvTHIwVjZPVVVUZkllMDBEZVUzR2c2aVM1RWh6ejJad3hGaG94NzdlbmRHdSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkbkN4WUVLVnRrL0xyMFY2T1VVVGZJZTAwRGVVM0dnNmlTNUVoenoyWnd4RmhveDc3ZW5kR3UiO30=',1612564655),
('Q3VctaNa1Zqhv9nw6G028rXuEpgBo8QHhd4Fkz9y',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiVTdWbUF6aHJmSFc2ZTNCNHJNT3hvT3ZOVmJjamx6aGowRmN2Z3Y3WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1612575774),
('qgh8LOTt3cSfRM3cPMYs7OaNrRe2evwiKzy59xR1',2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZGkyWVg2MjZaV2ZKRllmaUJFbVRDd29XUHFCc1oyRmhpSjVmMWR2eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRyLll6ay45akVpUGc4THRWaXkxL25PNnBEQjVtSE1lb21GdjRXTi96cjlOeG1jRFYuSWoyMiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkci5ZemsuOWpFaVBnOEx0Vml5MS9uTzZwREI1bUhNZW9tRnY0V04venI5TnhtY0RWLklqMjIiO30=',1612575791);

/*Data for the table `today_chart` */

insert  into `today_chart`(`id`,`label`,`data`,`created_at`,`updated_at`) values 
(1,'1.00',1500,NULL,NULL),
(2,'2.00',2300,NULL,NULL),
(3,'3.00',4500,NULL,NULL),
(4,'4.00',3200,NULL,NULL),
(5,'5.00',6300,NULL,NULL),
(6,'6.00',2800,NULL,NULL),
(7,'7.00',7200,NULL,NULL),
(8,'8.00',2100,NULL,NULL),
(9,'9.00',2000,NULL,NULL),
(10,'10.00',5700,NULL,NULL),
(11,'11.00',9000,NULL,NULL),
(12,'12.00',3000,NULL,NULL);

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`remember_token`,`current_team_id`,`profile_photo_path`,`created_at`,`updated_at`) values 
(1,'ggg','ggg@gmail.com',NULL,'$2y$10$nCxYEKVtk/Lr0V6OUUTfIe00DeU3Gg6iS5Ehzz2ZwxFhox77endGu',NULL,NULL,NULL,NULL,NULL,'2021-02-05 21:01:28','2021-02-05 21:01:28'),
(2,'bbb','bbb@gmail.com',NULL,'$2y$10$r.Yzk.9jEiPg8LtViy1/nO6pDB5mHMeomFv4WN/zr9NxmcDV.Ij22',NULL,NULL,NULL,NULL,NULL,'2021-02-05 22:38:43','2021-02-05 22:38:43');

/*Data for the table `weekly_chart` */

insert  into `weekly_chart`(`id`,`label`,`data`,`created_at`,`updated_at`) values 
(1,'Mon',2000,NULL,NULL),
(2,'Tue',1000,NULL,NULL),
(3,'Wed',3000,NULL,NULL),
(4,'Thu',4000,NULL,NULL),
(5,'Fri',3020,NULL,NULL),
(6,'Sat',6200,NULL,NULL),
(7,'Sun',3490,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
