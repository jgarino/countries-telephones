-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 21 Mai 2015 à 10:16
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `countries_code` varchar(2) CHARACTER SET ascii NOT NULL COMMENT 'Country code',
  `countries_name` varchar(70) NOT NULL COMMENT 'Country name',
  `countries_currency_code` varchar(3) CHARACTER SET ascii DEFAULT NULL COMMENT 'Currency',
  `countries_telephone_international_dialling_code` varchar(5) CHARACTER SET ascii DEFAULT NULL COMMENT 'International Dialling code',
  `countries_telephone_trunk_prefix` tinyint(3) unsigned DEFAULT NULL,
  `countries_telephone_local_length` tinyint(2) unsigned DEFAULT NULL COMMENT 'Local Telephone length including trunk prefix',
  PRIMARY KEY (`countries_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Countries';

--
-- Contenu de la table `countries`
--

INSERT INTO `countries` VALUES('AF', 'AFGHANISTAN', 'AFN', '+93', 0, 10);
INSERT INTO `countries` VALUES('AX', 'ÅLAND ISLANDS', 'EUR', '+358', NULL, 10);
INSERT INTO `countries` VALUES('AL', 'ALBANIA', 'ALL', '+355', 0, 9);
INSERT INTO `countries` VALUES('DZ', 'ALGERIA', 'DZD', '+213', 0, 9);
INSERT INTO `countries` VALUES('AS', 'AMERICAN SAMOA', 'USD', '+1684', 1, 8);
INSERT INTO `countries` VALUES('AD', 'ANDORRA', 'EUR', '+376', NULL, 6);
INSERT INTO `countries` VALUES('AO', 'ANGOLA', 'AOA', '+244', 0, 9);
INSERT INTO `countries` VALUES('AI', 'ANGUILLA', 'XCD', '+1264', 1, 11);
INSERT INTO `countries` VALUES('AQ', 'ANTARCTICA', 'USD', '+672', 0, 7);
INSERT INTO `countries` VALUES('AG', 'ANTIGUA AND BARBUDA', 'XCD', '+1268', 1, 11);
INSERT INTO `countries` VALUES('AR', 'ARGENTINA', 'ARS', '+54', 0, 11);
INSERT INTO `countries` VALUES('AM', 'ARMENIA', 'AMD', '+374', 0, 9);
INSERT INTO `countries` VALUES('AW', 'ARUBA', 'AWG', '+297', NULL, 7);
INSERT INTO `countries` VALUES('AU', 'AUSTRALIA', 'AUD', '+61', 0, 10);
INSERT INTO `countries` VALUES('AT', 'AUSTRIA', 'EUR', '+43', 0, 10);
INSERT INTO `countries` VALUES('AZ', 'AZERBAIJAN', 'AZN', '+994', 0, 10);
INSERT INTO `countries` VALUES('BS', 'BAHAMAS', 'BSD', '+1242', 1, 11);
INSERT INTO `countries` VALUES('BH', 'BAHRAIN', 'BHD', '+973', NULL, 8);
INSERT INTO `countries` VALUES('BD', 'BANGLADESH', 'BDT', '+880', 0, 11);
INSERT INTO `countries` VALUES('BB', 'BARBADOS', 'BBD', '+1246', 0, 11);
INSERT INTO `countries` VALUES('BY', 'BELARUS', 'BYR', '+375', 8, 10);
INSERT INTO `countries` VALUES('BE', 'BELGIUM', 'EUR', '+32', 0, 8);
INSERT INTO `countries` VALUES('BZ', 'BELIZE', 'BZD', '+501', NULL, 7);
INSERT INTO `countries` VALUES('BJ', 'BENIN', 'XOF', '+229', NULL, 8);
INSERT INTO `countries` VALUES('BM', 'BERMUDA', 'BMD', '+1441', 1, 11);
INSERT INTO `countries` VALUES('BT', 'BHUTAN', 'INR', '+975', NULL, 7);
INSERT INTO `countries` VALUES('BO', 'BOLIVIA, PLURINATIONAL STATE OF', 'BOV', '+591', 0, 9);
INSERT INTO `countries` VALUES('BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'USD', '+599', 0, 8);
INSERT INTO `countries` VALUES('BA', 'BOSNIA AND HERZEGOVINA', 'BAM', '+387', 0, 8);
INSERT INTO `countries` VALUES('BW', 'BOTSWANA', 'BWP', '+267', NULL, 7);
INSERT INTO `countries` VALUES('BV', 'BOUVET ISLAND', 'NOK', NULL, NULL, NULL);
INSERT INTO `countries` VALUES('BR', 'BRAZIL', 'BRL', '+55', 0, 11);
INSERT INTO `countries` VALUES('IO', 'BRITISH INDIAN OCEAN TERRITORY', 'USD', '+246', NULL, NULL);
INSERT INTO `countries` VALUES('BN', 'BRUNEI DARUSSALAM', 'BND', '+673', NULL, 7);
INSERT INTO `countries` VALUES('BG', 'BULGARIA', 'BGN', '+359', NULL, NULL);
INSERT INTO `countries` VALUES('BF', 'BURKINA FASO', 'XOF', '+226', NULL, 8);
INSERT INTO `countries` VALUES('BI', 'BURUNDI', 'BIF', '+257', NULL, 6);
INSERT INTO `countries` VALUES('KH', 'CAMBODIA', 'KHR', '+855', 0, 9);
INSERT INTO `countries` VALUES('CM', 'CAMEROON', 'XAF', '+237', NULL, 8);
INSERT INTO `countries` VALUES('CA', 'CANADA', 'CAD', '+1', 1, 11);
INSERT INTO `countries` VALUES('CV', 'CAPE VERDE', 'CVE', '+238', NULL, 7);
INSERT INTO `countries` VALUES('KY', 'CAYMAN ISLANDS', 'KYD', '+1345', 1, 11);
INSERT INTO `countries` VALUES('CF', 'CENTRAL AFRICAN REPUBLIC', 'XAF', '+236', NULL, 8);
INSERT INTO `countries` VALUES('TD', 'CHAD', 'XAF', '+235', NULL, 8);
INSERT INTO `countries` VALUES('CL', 'CHILE', 'CLP', '+56', 0, 10);
INSERT INTO `countries` VALUES('CN', 'CHINA', 'CNY', '+86', 0, 12);
INSERT INTO `countries` VALUES('CX', 'CHRISTMAS ISLAND', 'AUD', '+61', NULL, NULL);
INSERT INTO `countries` VALUES('CC', 'COCOS (KEELING) ISLANDS', 'AUD', '+61', NULL, NULL);
INSERT INTO `countries` VALUES('CO', 'COLOMBIA', 'COU', '+57', 0, 11);
INSERT INTO `countries` VALUES('KM', 'COMOROS', 'KMF', '+269', NULL, 7);
INSERT INTO `countries` VALUES('CG', 'CONGO', 'XAF', '+242', NULL, 9);
INSERT INTO `countries` VALUES('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CDF', '+243', 0, 10);
INSERT INTO `countries` VALUES('CK', 'COOK ISLANDS', 'NZD', '+682', NULL, 5);
INSERT INTO `countries` VALUES('CR', 'COSTA RICA', 'CRC', '+506', NULL, 8);
INSERT INTO `countries` VALUES('HR', 'CROATIA', 'HRK', '+385', 0, 7);
INSERT INTO `countries` VALUES('CU', 'CUBA', 'CUP', '+53', 0, 9);
INSERT INTO `countries` VALUES('CW', 'CURAÇAO', 'ANG', '+599', 0, 8);
INSERT INTO `countries` VALUES('CY', 'CYPRUS', 'EUR', '+357', NULL, 8);
INSERT INTO `countries` VALUES('CZ', 'CZECH REPUBLIC', 'CZK', '+420', NULL, 9);
INSERT INTO `countries` VALUES('DK', 'DENMARK', 'DKK', '+45', NULL, 8);
INSERT INTO `countries` VALUES('DJ', 'DJIBOUTI', 'DJF', '+253', NULL, 8);
INSERT INTO `countries` VALUES('DM', 'DOMINICA', 'XCD', '+1767', 1, 11);
INSERT INTO `countries` VALUES('DO', 'DOMINICAN REPUBLIC', 'DOP', '+1849', 1, 11);
INSERT INTO `countries` VALUES('EC', 'ECUADOR', 'USD', '+593', 0, 10);
INSERT INTO `countries` VALUES('EG', 'EGYPT', 'EGP', '+20', 0, 11);
INSERT INTO `countries` VALUES('SV', 'EL SALVADOR', 'USD', '+503', NULL, 8);
INSERT INTO `countries` VALUES('GQ', 'EQUATORIAL GUINEA', 'XAF', '+240', NULL, 9);
INSERT INTO `countries` VALUES('ER', 'ERITREA', 'ERN', '+291', 0, 7);
INSERT INTO `countries` VALUES('EE', 'ESTONIA', 'EUR', '+372', NULL, 7);
INSERT INTO `countries` VALUES('ET', 'ETHIOPIA', 'ETB', '+251', 0, 10);
INSERT INTO `countries` VALUES('FK', 'FALKLAND ISLANDS (MALVINAS)', 'FKP', '+500', NULL, 5);
INSERT INTO `countries` VALUES('FO', 'FAROE ISLANDS', 'DKK', '+298', NULL, 6);
INSERT INTO `countries` VALUES('FJ', 'FIJI', 'FJD', '+679', NULL, 7);
INSERT INTO `countries` VALUES('FI', 'FINLAND', 'EUR', '+358', 0, 7);
INSERT INTO `countries` VALUES('FR', 'FRANCE', 'EUR', '+33', 0, 10);
INSERT INTO `countries` VALUES('GF', 'FRENCH GUIANA', 'EUR', '+594', 0, 10);
INSERT INTO `countries` VALUES('PF', 'FRENCH POLYNESIA', 'XPF', '+689', NULL, 6);
INSERT INTO `countries` VALUES('TF', 'FRENCH SOUTHERN TERRITORIES', 'EUR', NULL, NULL, NULL);
INSERT INTO `countries` VALUES('GA', 'GABON', 'XAF', '+241', 0, 8);
INSERT INTO `countries` VALUES('GM', 'GAMBIA', 'GMD', '+220', NULL, 7);
INSERT INTO `countries` VALUES('GE', 'GEORGIA', 'GEL', '+995', 0, 8);
INSERT INTO `countries` VALUES('DE', 'GERMANY', 'EUR', '+49', 0, 7);
INSERT INTO `countries` VALUES('GH', 'GHANA', 'GHS', '+233', 0, 10);
INSERT INTO `countries` VALUES('GI', 'GIBRALTAR', 'GIP', '+350', NULL, 8);
INSERT INTO `countries` VALUES('GR', 'GREECE', 'EUR', '+30', NULL, 10);
INSERT INTO `countries` VALUES('GL', 'GREENLAND', 'DKK', '+299', NULL, 6);
INSERT INTO `countries` VALUES('GD', 'GRENADA', 'XCD', '+1473', 1, 11);
INSERT INTO `countries` VALUES('GP', 'GUADELOUPE', 'EUR', '+590', 0, 10);
INSERT INTO `countries` VALUES('GU', 'GUAM', 'USD', '+1671', 1, 11);
INSERT INTO `countries` VALUES('GT', 'GUATEMALA', 'GTQ', '+502', NULL, 8);
INSERT INTO `countries` VALUES('GG', 'GUERNSEY', 'GBP', '+44', NULL, NULL);
INSERT INTO `countries` VALUES('GN', 'GUINEA', 'GNF', '+224', NULL, 8);
INSERT INTO `countries` VALUES('GW', 'GUINEA-BISSAU', 'XOF', '+245', NULL, 7);
INSERT INTO `countries` VALUES('GY', 'GUYANA', 'GYD', '+592', NULL, 7);
INSERT INTO `countries` VALUES('HT', 'HAITI', 'USD', '+509', NULL, 8);
INSERT INTO `countries` VALUES('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'AUD', NULL, NULL, NULL);
INSERT INTO `countries` VALUES('VA', 'HOLY SEE (VATICAN CITY STATE)', 'EUR', '+379', NULL, 2);
INSERT INTO `countries` VALUES('HN', 'HONDURAS', 'HNL', '+504', NULL, 8);
INSERT INTO `countries` VALUES('HK', 'HONG KONG', 'HKD', '+852', NULL, 8);
INSERT INTO `countries` VALUES('HU', 'HUNGARY', 'HUF', '+36', NULL, NULL);
INSERT INTO `countries` VALUES('IS', 'ICELAND', 'ISK', '+354', NULL, 10);
INSERT INTO `countries` VALUES('IN', 'INDIA', 'INR', '+91', 0, 11);
INSERT INTO `countries` VALUES('ID', 'INDONESIA', 'IDR', '+62', 0, 12);
INSERT INTO `countries` VALUES('IR', 'IRAN, ISLAMIC REPUBLIC OF', 'IRR', '+98', 0, 11);
INSERT INTO `countries` VALUES('IQ', 'IRAQ', 'IQD', '+964', 0, 8);
INSERT INTO `countries` VALUES('IE', 'IRELAND', 'EUR', '+353', 0, 8);
INSERT INTO `countries` VALUES('IM', 'ISLE OF MAN', 'GBP', '+44', NULL, NULL);
INSERT INTO `countries` VALUES('IL', 'ISRAEL', 'ILS', '+972', 0, 9);
INSERT INTO `countries` VALUES('IT', 'ITALY', 'EUR', '+39', NULL, 9);
INSERT INTO `countries` VALUES('JM', 'JAMAICA', 'JMD', '+1876', 1, 11);
INSERT INTO `countries` VALUES('JP', 'JAPAN', 'JPY', '+81', 0, 10);
INSERT INTO `countries` VALUES('JE', 'JERSEY', 'GBP', '+44', NULL, NULL);
INSERT INTO `countries` VALUES('JO', 'JORDAN', 'JOD', '+962', 0, 9);
INSERT INTO `countries` VALUES('KZ', 'KAZAKHSTAN', 'KZT', '+7', 8, 11);
INSERT INTO `countries` VALUES('KE', 'KENYA', 'KES', '+254', 0, 9);
INSERT INTO `countries` VALUES('KI', 'KIRIBATI', 'AUD', '+686', 0, 6);
INSERT INTO `countries` VALUES('KR', 'SOUTH KOREA, REPUBLIC OF', 'KRW', '+82', 0, 8);
INSERT INTO `countries` VALUES('KW', 'KUWAIT', 'KWD', '+965', NULL, 7);
INSERT INTO `countries` VALUES('KG', 'KYRGYZSTAN', 'KGS', '+996', 0, 9);
INSERT INTO `countries` VALUES('LV', 'LATVIA', 'EUR', '+371', NULL, 8);
INSERT INTO `countries` VALUES('LB', 'LEBANON', 'LBP', '+961', 0, 8);
INSERT INTO `countries` VALUES('LS', 'LESOTHO', 'ZAR', '+266', NULL, 8);
INSERT INTO `countries` VALUES('LR', 'LIBERIA', 'LRD', '+231', NULL, 7);
INSERT INTO `countries` VALUES('LY', 'LIBYA', 'LYD', '+218', 0, 9);
INSERT INTO `countries` VALUES('LI', 'LIECHTENSTEIN', 'CHF', '+423', NULL, 7);
INSERT INTO `countries` VALUES('LT', 'LITHUANIA', 'LTL', '+370', 0, 9);
INSERT INTO `countries` VALUES('LU', 'LUXEMBOURG', 'EUR', '+352', NULL, 9);
INSERT INTO `countries` VALUES('MO', 'MACAO', 'MOP', '+853', NULL, 8);
INSERT INTO `countries` VALUES('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MKD', '+389', 0, 8);
INSERT INTO `countries` VALUES('MG', 'MADAGASCAR', 'MGA', '+261', 0, 10);
INSERT INTO `countries` VALUES('MW', 'MALAWI', 'MWK', '+265', NULL, 9);
INSERT INTO `countries` VALUES('MY', 'MALAYSIA', 'MYR', '+60', 0, 9);
INSERT INTO `countries` VALUES('MV', 'MALDIVES', 'MVR', '+960', NULL, 7);
INSERT INTO `countries` VALUES('ML', 'MALI', 'XOF', '+223', NULL, 8);
INSERT INTO `countries` VALUES('MT', 'MALTA', 'EUR', '+356', NULL, 8);
INSERT INTO `countries` VALUES('MH', 'MARSHALL ISLANDS', 'USD', '+692', NULL, 7);
INSERT INTO `countries` VALUES('MQ', 'MARTINIQUE', 'EUR', '+596', 0, 10);
INSERT INTO `countries` VALUES('MR', 'MAURITANIA', 'MRO', '+222', NULL, 8);
INSERT INTO `countries` VALUES('MU', 'MAURITIUS', 'MUR', '+230', NULL, 7);
INSERT INTO `countries` VALUES('YT', 'MAYOTTE', 'EUR', '+262', 0, 10);
INSERT INTO `countries` VALUES('MX', 'MEXICO', 'MXV', '+52', 0, 11);
INSERT INTO `countries` VALUES('FM', 'MICRONESIA, FEDERATED STATES OF', 'USD', '+691', 1, 8);
INSERT INTO `countries` VALUES('MD', 'MOLDOVA, REPUBLIC OF', 'MDL', '+373', 0, 9);
INSERT INTO `countries` VALUES('MC', 'MONACO', 'EUR', '+377', NULL, 8);
INSERT INTO `countries` VALUES('MN', 'MONGOLIA', 'MNT', '+976', 0, 7);
INSERT INTO `countries` VALUES('ME', 'MONTENEGRO', 'EUR', '+382', 0, 8);
INSERT INTO `countries` VALUES('MS', 'MONTSERRAT', 'XCD', '+1664', 1, 11);
INSERT INTO `countries` VALUES('MA', 'MOROCCO', 'MAD', '+212', 0, 9);
INSERT INTO `countries` VALUES('MZ', 'MOZAMBIQUE', 'MZN', '+258', NULL, 9);
INSERT INTO `countries` VALUES('MM', 'MYANMAR', 'MMK', '+95', NULL, 6);
INSERT INTO `countries` VALUES('NA', 'NAMIBIA', 'ZAR', '+264', 0, 5);
INSERT INTO `countries` VALUES('NR', 'NAURU', 'AUD', '+674', NULL, 7);
INSERT INTO `countries` VALUES('NP', 'NEPAL', 'NPR', '+977', 0, 8);
INSERT INTO `countries` VALUES('NL', 'NETHERLANDS', 'EUR', '+31', 0, 10);
INSERT INTO `countries` VALUES('NC', 'NEW CALEDONIA', 'XPF', '+687', NULL, 6);
INSERT INTO `countries` VALUES('NZ', 'NEW ZEALAND', 'NZD', '+64', 0, 9);
INSERT INTO `countries` VALUES('NI', 'NICARAGUA', 'NIO', '+505', 0, 9);
INSERT INTO `countries` VALUES('NE', 'NIGER', 'XOF', '+227', NULL, 8);
INSERT INTO `countries` VALUES('NG', 'NIGERIA', 'NGN', '+234', 0, 8);
INSERT INTO `countries` VALUES('NU', 'NIUE', 'NZD', '+683', NULL, 4);
INSERT INTO `countries` VALUES('NF', 'NORFOLK ISLAND', 'AUD', '+672', 0, 6);
INSERT INTO `countries` VALUES('MP', 'NORTHERN MARIANA ISLANDS', 'USD', '+1670', 1, 11);
INSERT INTO `countries` VALUES('NO', 'NORWAY', 'NOK', '+47', NULL, 8);
INSERT INTO `countries` VALUES('OM', 'OMAN', 'OMR', '+968', NULL, 8);
INSERT INTO `countries` VALUES('PK', 'PAKISTAN', 'PKR', '+92', 0, 11);
INSERT INTO `countries` VALUES('PW', 'PALAU', 'USD', '+680', NULL, 7);
INSERT INTO `countries` VALUES('PS', 'PALESTINE, STATE OF', 'ILS', '+970', 0, 9);
INSERT INTO `countries` VALUES('PA', 'PANAMA', 'USD', '+507', NULL, 7);
INSERT INTO `countries` VALUES('PG', 'PAPUA NEW GUINEA', 'PGK', '+675', NULL, 7);
INSERT INTO `countries` VALUES('PY', 'PARAGUAY', 'PYG', '+595', 0, 10);
INSERT INTO `countries` VALUES('PE', 'PERU', 'PEN', '+51', 0, 9);
INSERT INTO `countries` VALUES('PH', 'PHILIPPINES', 'PHP', '+63', 0, 10);
INSERT INTO `countries` VALUES('PN', 'PITCAIRN', 'NZD', '+870', NULL, NULL);
INSERT INTO `countries` VALUES('PL', 'POLAND', 'PLN', '+48', 0, 10);
INSERT INTO `countries` VALUES('PT', 'PORTUGAL', 'EUR', '+351', NULL, 9);
INSERT INTO `countries` VALUES('PR', 'PUERTO RICO', 'USD', '+1939', 1, 11);
INSERT INTO `countries` VALUES('QA', 'QATAR', 'QAR', '+974', NULL, 8);
INSERT INTO `countries` VALUES('RE', 'RÉUNION', 'EUR', '+262', NULL, NULL);
INSERT INTO `countries` VALUES('RO', 'ROMANIA', 'RON', '+40', 0, 10);
INSERT INTO `countries` VALUES('RU', 'RUSSIAN FEDERATION', 'RUB', '+7', 8, 11);
INSERT INTO `countries` VALUES('RW', 'RWANDA', 'RWF', '+250', 0, 10);
INSERT INTO `countries` VALUES('BL', 'SAINT BARTHÉLEMY', 'EUR', '+590', 0, 10);
INSERT INTO `countries` VALUES('SH', 'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA', 'SHP', '+290', NULL, 4);
INSERT INTO `countries` VALUES('KN', 'SAINT KITTS AND NEVIS', 'XCD', '+1869', 1, 11);
INSERT INTO `countries` VALUES('LC', 'SAINT LUCIA', 'XCD', '+1758', 1, 11);
INSERT INTO `countries` VALUES('MF', 'SAINT MARTIN (FRENCH PART)', 'EUR', '+1599', NULL, NULL);
INSERT INTO `countries` VALUES('PM', 'SAINT PIERRE AND MIQUELON', 'EUR', '+508', NULL, 6);
INSERT INTO `countries` VALUES('VC', 'SAINT VINCENT AND THE GRENADINES', 'XCD', '+1784', 1, 11);
INSERT INTO `countries` VALUES('WS', 'SAMOA', 'WST', '+685', NULL, 6);
INSERT INTO `countries` VALUES('SM', 'SAN MARINO', 'EUR', '+378', NULL, 9);
INSERT INTO `countries` VALUES('ST', 'SAO TOME AND PRINCIPE', 'STD', '+239', NULL, 7);
INSERT INTO `countries` VALUES('SA', 'SAUDI ARABIA', 'SAR', '+966', 0, 9);
INSERT INTO `countries` VALUES('SN', 'SENEGAL', 'XOF', '+221', NULL, 9);
INSERT INTO `countries` VALUES('RS', 'SERBIA', 'RSD', '+381', 0, 8);
INSERT INTO `countries` VALUES('SC', 'SEYCHELLES', 'SCR', '+248', NULL, 7);
INSERT INTO `countries` VALUES('SL', 'SIERRA LEONE', 'SLL', '+232', 0, 9);
INSERT INTO `countries` VALUES('SG', 'SINGAPORE', 'SGD', '+65', NULL, 8);
INSERT INTO `countries` VALUES('SX', 'SINT MAARTEN (DUTCH PART)', 'ANG', '+1721', 1, 11);
INSERT INTO `countries` VALUES('SK', 'SLOVAKIA', 'EUR', '+421', 0, 10);
INSERT INTO `countries` VALUES('SI', 'SLOVENIA', 'EUR', '+386', 0, 9);
INSERT INTO `countries` VALUES('SB', 'SOLOMON ISLANDS', 'SBD', '+677', NULL, 5);
INSERT INTO `countries` VALUES('SO', 'SOMALIA', 'SOS', '+252', NULL, 7);
INSERT INTO `countries` VALUES('ZA', 'SOUTH AFRICA', 'ZAR', '+27', 0, 10);
INSERT INTO `countries` VALUES('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'GEL', '+500', NULL, NULL);
INSERT INTO `countries` VALUES('SS', 'SOUTH SUDAN', 'SSP', '+211', NULL, 8);
INSERT INTO `countries` VALUES('ES', 'SPAIN', 'EUR', '+34', NULL, 9);
INSERT INTO `countries` VALUES('LK', 'SRI LANKA', 'LKR', '+94', 0, 10);
INSERT INTO `countries` VALUES('SD', 'SUDAN', 'SDG', '+249', 0, 10);
INSERT INTO `countries` VALUES('SR', 'SURINAME', 'SRD', '+597', NULL, 6);
INSERT INTO `countries` VALUES('SJ', 'SVALBARD AND JAN MAYEN', 'NOK', '+4779', NULL, NULL);
INSERT INTO `countries` VALUES('SZ', 'SWAZILAND', 'SZL', '+268', 0, 8);
INSERT INTO `countries` VALUES('SE', 'SWEDEN', 'SEK', '+46', 0, 9);
INSERT INTO `countries` VALUES('CH', 'SWITZERLAND', 'CHW', '+41', 0, 10);
INSERT INTO `countries` VALUES('SY', 'SYRIAN ARAB REPUBLIC', 'SYP', '+963', 0, 9);
INSERT INTO `countries` VALUES('TW', 'TAIWAN, PROVINCE OF CHINA', 'TWD', '+886', 0, 10);
INSERT INTO `countries` VALUES('TJ', 'TAJIKISTAN', 'TJS', '+992', 8, 8);
INSERT INTO `countries` VALUES('TZ', 'TANZANIA, UNITED REPUBLIC OF', 'TZS', '+255', 0, 7);
INSERT INTO `countries` VALUES('TH', 'THAILAND', 'THB', '+66', 0, 9);
INSERT INTO `countries` VALUES('TL', 'TIMOR-LESTE', 'USD', '+670', NULL, 7);
INSERT INTO `countries` VALUES('TG', 'TOGO', 'XOF', '+228', NULL, NULL);
INSERT INTO `countries` VALUES('TK', 'TOKELAU', 'NZD', '+690', NULL, 4);
INSERT INTO `countries` VALUES('TO', 'TONGA', 'TOP', '+676', NULL, 5);
INSERT INTO `countries` VALUES('TT', 'TRINIDAD AND TOBAGO', 'TTD', '+1868', 1, 11);
INSERT INTO `countries` VALUES('TN', 'TUNISIA', 'TND', '+216', 0, 9);
INSERT INTO `countries` VALUES('TR', 'TURKEY', 'TRY', '+90', 0, 11);
INSERT INTO `countries` VALUES('TM', 'TURKMENISTAN', 'TMT', '+993', 8, 8);
INSERT INTO `countries` VALUES('TC', 'TURKS AND CAICOS ISLANDS', 'USD', '+1649', 1, 11);
INSERT INTO `countries` VALUES('TV', 'TUVALU', 'AUD', '+688', NULL, 5);
INSERT INTO `countries` VALUES('UG', 'UGANDA', 'UGX', '+256', 0, 9);
INSERT INTO `countries` VALUES('UA', 'UKRAINE', 'UAH', '+380', 0, 8);
INSERT INTO `countries` VALUES('AE', 'UNITED ARAB EMIRATES', 'AED', '+971', 0, 9);
INSERT INTO `countries` VALUES('GB', 'UNITED KINGDOM', 'GBP', '+44', 0, 11);
INSERT INTO `countries` VALUES('US', 'UNITED STATES', 'USN', '+1', 1, 11);
INSERT INTO `countries` VALUES('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'USD', '+1', 1, 11);
INSERT INTO `countries` VALUES('UY', 'URUGUAY', 'UYU', '+598', 0, 9);
INSERT INTO `countries` VALUES('UZ', 'UZBEKISTAN', 'UZS', '+998', 8, 10);
INSERT INTO `countries` VALUES('VU', 'VANUATU', 'VUV', '+678', NULL, 5);
INSERT INTO `countries` VALUES('VE', 'VENEZUELA, BOLIVARIAN REPUBLIC OF', 'VEF', '+58', 0, 11);
INSERT INTO `countries` VALUES('VN', 'VIET NAM', 'VND', '+84', 0, 11);
INSERT INTO `countries` VALUES('VG', 'VIRGIN ISLANDS, BRITISH', 'USD', '+1284', 1, 11);
INSERT INTO `countries` VALUES('VI', 'VIRGIN ISLANDS, U.S.', 'USD', '+1340', 1, 11);
INSERT INTO `countries` VALUES('WF', 'WALLIS AND FUTUNA', 'XPF', '+681', NULL, 6);
INSERT INTO `countries` VALUES('EH', 'WESTERN SAHARA', 'MAD', '+212', NULL, NULL);
INSERT INTO `countries` VALUES('YE', 'YEMEN', 'YER', '+967', 0, 8);
INSERT INTO `countries` VALUES('ZM', 'ZAMBIA', 'ZMW', '+260', 0, 8);
INSERT INTO `countries` VALUES('ZW', 'ZIMBABWE', 'ZWL', '+263', 0, 9);
INSERT INTO `countries` VALUES('KP', 'NORTH KOREA', NULL, '+850', 0, 7);
INSERT INTO `countries` VALUES('CI', 'IVORY COAST', 'XOF', '+225', NULL, 8);
INSERT INTO `countries` VALUES('LA', 'Laos', 'LAK', '+856', 0, 9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
