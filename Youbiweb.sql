-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb5+lenny9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Dim 24 Mars 2013 à 12:11
-- Version du serveur: 5.0.51
-- Version de PHP: 5.2.6-1+lenny16

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `youbiweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_droits`
--

CREATE TABLE IF NOT EXISTS `youbiweb_admin_droits` (
  `utilisateur` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin_droits`
--

INSERT INTO `youbiweb_admin_droits` (`utilisateur`, `mdp`, `nom`) VALUES
('youbi325', 'misterdna', 'Josselin BUILS');

-- --------------------------------------------------------

--
-- Structure de la table `album_photos`
--

CREATE TABLE IF NOT EXISTS `youbiweb_album_photos` (
  `catId` int(11) NOT NULL,
  `scatId` int(11) NOT NULL,
  `albumId` int(11) NOT NULL,
  `photoId` int(11) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `image` varchar(100) NOT NULL,
  `l` float NOT NULL,
  `h` float NOT NULL,
  `commentaire` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `album_photos`
--

INSERT INTO `youbiweb_album_photos` (`catId`, `scatId`, `albumId`, `photoId`, `date`, `image`, `l`, `h`, `commentaire`) VALUES
(1, 1, 1, 1, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-fBxIrSA99Ag/TUmdk2YyFrI/AAAAAAAAEi0/ltv2Bt40XF8/DSCF2070.JPG', 512, 384, ''),
(1, 1, 1, 2, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-NxzTjH6e_rA/TUmdjl2cYrI/AAAAAAAAEi0/xhaX-AetCAA/DSCF2068.JPG', 512, 384, ''),
(1, 1, 1, 3, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-3_sKhhv74aU/TUmdmPTKrII/AAAAAAAAEi0/P7GzUxQX9Fk/DSCF2064.JPG', 512, 384, ''),
(1, 1, 1, 4, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-gCDNai3oPd8/TUmdnAvGF9I/AAAAAAAAEi0/l87OwkqdgcY/DSCF2066.JPG', 512, 384, ''),
(1, 1, 2, 1, '0000-00-00 00:00:00', 'http://lh4.ggpht.com/-K6B4oUaePao/TUG6Ny7X79I/AAAAAAAAEio/fxSAiOxkN5E/DSC03344.JPG', 512, 384, ''),
(1, 1, 2, 2, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-1bLr3mO12bY/TUG6VBo9QaI/AAAAAAAAEio/Y4H-TU9CQUs/IMG_0155.JPG', 512, 384, ''),
(1, 1, 2, 3, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-Q69d1dfYvMk/TUG6YI1pRmI/AAAAAAAAEio/ZbV3vI7A4wA/IMG_0158.JPG', 337.5, 450, ''),
(1, 1, 2, 4, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-vwiI1gGI-xw/TUG6bLZ50KI/AAAAAAAAEio/Os2fkaJ0ds4/IMG_0160.JPG', 512, 384, ''),
(1, 1, 2, 5, '0000-00-00 00:00:00', 'http://lh5.ggpht.com/-CbOuXIjlFwU/TUG6cn2ZxbI/AAAAAAAAEio/x3-K7xUBEnw/IMG_0161.JPG', 512, 384, ''),
(1, 1, 2, 6, '0000-00-00 00:00:00', 'http://lh6.ggpht.com/-2XhfIwRBt2A/TUG6gCjg7xI/AAAAAAAAEio/f0qOT5gd_VE/IMG_0163.JPG', 512, 384, ''),
(1, 1, 2, 7, '0000-00-00 00:00:00', 'http://lh4.ggpht.com/-p5NQh5NXYiU/TUG6kR3xm8I/AAAAAAAAEio/kDQkY17AtiA/IMG_0165.JPG', 337.5, 450, ''),
(1, 1, 2, 8, '0000-00-00 00:00:00', 'http://lh6.ggpht.com/-EkPGKofA_M8/TUG6oHeokyI/AAAAAAAAEio/CIyZp_VkMrA/IMG_0166.JPG', 337.5, 450, ''),
(1, 1, 2, 9, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-EmQLaXrp6Qw/TUG6z3Ty9GI/AAAAAAAAEio/IjFFkWOVATM/IMG_0170.JPG', 512, 384, ''),
(1, 1, 2, 10, '0000-00-00 00:00:00', 'http://lh6.ggpht.com/-R9s5Ib_UBZY/TUG617xBG0I/AAAAAAAAEio/Gys3bXRLKhw/IMG_0171.JPG', 512, 384, ''),
(1, 1, 2, 11, '0000-00-00 00:00:00', 'http://lh5.ggpht.com/-aReGefQn32s/TUG640bcnVI/AAAAAAAAEio/PnflJ_5svlQ/IMG_0173.JPG', 512, 384, ''),
(1, 1, 2, 12, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-C-mc_I55Bh8/TUG66jePyFI/AAAAAAAAEio/R9GxICEIgSU/IMG_0174.JPG', 512, 384, ''),
(1, 1, 2, 13, '0000-00-00 00:00:00', 'http://lh4.ggpht.com/-z_f06D7kXhs/TUG68m0I3HI/AAAAAAAAEio/yO1W0uXQJoQ/IMG_0175.JPG', 512, 384, ''),
(1, 1, 2, 14, '0000-00-00 00:00:00', 'http://lh6.ggpht.com/-fvemY7gs8AM/TUG6-6wRB3I/AAAAAAAAEio/KfNogZAV3fE/IMG_0176.JPG', 337.5, 450, ''),
(1, 1, 2, 15, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-lzzne0t9aUg/TUG7BDgtejI/AAAAAAAAEio/FTGB3i8dX6s/IMG_0201.JPG', 512, 384, ''),
(1, 1, 2, 16, '0000-00-00 00:00:00', 'http://lh6.ggpht.com/-movf2PIaivQ/TUG7EaYbrGI/AAAAAAAAEio/LMEHu_3Tfr8/IMG_0202.JPG', 337.5, 450, ''),
(1, 1, 2, 17, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-q79FpAg8LY8/TUG7HG55kFI/AAAAAAAAEio/S2krQTieOhU/IMG_0206.JPG', 337.5, 450, ''),
(1, 1, 2, 18, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-76_qTywv0xo/TUG7MQjopmI/AAAAAAAAEio/QxLPmilNFws/IMG_0208.JPG', 512, 384, ''),
(1, 1, 2, 19, '0000-00-00 00:00:00', 'http://lh4.ggpht.com/-hRoKA2SXFOU/TUG7PEpmmWI/AAAAAAAAEio/xTXG5ufaTBE/IMG_0214.JPG', 512, 384, ''),
(1, 1, 2, 20, '0000-00-00 00:00:00', 'http://lh5.ggpht.com/-iwzJNA6lmKE/TUG7V7J4PPI/AAAAAAAAEio/twiQO4o9qMk/IMG_0219.JPG', 512, 384, ''),
(1, 1, 2, 21, '0000-00-00 00:00:00', 'http://lh6.ggpht.com/-P8ASaQ8y5bE/TUG7XqMGbXI/AAAAAAAAEio/kq1ddaghlos/IMG_0220.JPG', 512, 384, ''),
(1, 1, 2, 22, '0000-00-00 00:00:00', 'http://lh5.ggpht.com/-8zDtTsNm6bM/TUG7dRdqi-I/AAAAAAAAEio/z-gTao6D_ws/photo.jpg', 512, 384, ''),
(1, 1, 2, 23, '0000-00-00 00:00:00', 'http://lh6.ggpht.com/-3_ZK9Smutf8/TUG7ehCCetI/AAAAAAAAEio/mrs1gEL-lgI/photo.jpg', 337.5, 450, ''),
(1, 1, 2, 24, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-R0re04m_Zjo/TUG7gyM20vI/AAAAAAAAEio/jKhmjUcHV3w/photo.jpg', 512, 384, ''),
(1, 1, 2, 25, '0000-00-00 00:00:00', 'http://lh4.ggpht.com/-gStKZVOM1B4/TUG7jx7DVzI/AAAAAAAAEio/7mGve_lbo7o/IMG_0390.JPG', 512, 384, ''),
(1, 1, 2, 26, '0000-00-00 00:00:00', 'http://lh6.ggpht.com/-zM4xSvrXIAA/TUG7uGBIoLI/AAAAAAAAEio/NK7mqU7o4qc/IMG_0396.JPG', 512, 384, ''),
(1, 1, 3, 1, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-oQWfG-B9mUQ/TUZ1ei3LKkI/AAAAAAAAEis/XtxDNFwzKes/IMG_0202.JPG', 337.5, 450, ''),
(1, 1, 3, 2, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-nYzP-UDyLv4/TUZ1hSzgX5I/AAAAAAAAEis/N3OQrByrY-s/IMG_0203.JPG', 337.5, 450, ''),
(1, 1, 3, 3, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-HqoKTZ9USBg/TUZ1jh88pYI/AAAAAAAAEis/TMGU_7xFDV8/IMG_0333.JPG', 512, 384, ''),
(1, 1, 3, 4, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-zXCmM5pjQDs/TUZ1kdjQH7I/AAAAAAAAEis/41LKsRuq4Wo/photo.jpg', 337.5, 450, ''),
(1, 1, 3, 5, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-tjWHSX_-AfU/TUZ1mqxnH2I/AAAAAAAAEis/wyPHMB6AQZ0/IMG_0394.JPG', 337.5, 450, ''),
(1, 1, 3, 6, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-z6SXmJ4lk88/TUZ1pYkKSyI/AAAAAAAAEis/WIB4ARb82Ww/IMG_0395.JPG', 337.5, 450, ''),
(1, 3, 6, 13, '2012-07-11 00:05:00', 'https://lh4.googleusercontent.com/-Rb_uVmHKKRI/T_wTbwkEkFI/AAAAAAAAEm4/2zYv21iBJ1M/HPIM1085.jpg', 512, 388, 'Mtx BG10'),
(1, 1, 4, 31, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-1AYi7vQMbKc/TUmbT0D9aUI/AAAAAAAAEik/Hc0H9vwCkOk/IMG_0409.JPG', 512, 384, ''),
(1, 1, 4, 32, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-JeuMmqfE674/TUmbXBaSJWI/AAAAAAAAEik/8KimjNgsikw/IMG_0411.JPG', 512, 384, ''),
(1, 1, 5, 1, '2012-07-10 20:48:51', 'https://lh3.googleusercontent.com/-q4A6ULVKZwA/T_wdxq9gSwI/AAAAAAAAEq8/bFldskhLoLg/cda-9886r.jpg', 480, 360, 'Alpine 9886R'),
(1, 1, 5, 2, '2012-07-10 20:48:51', 'https://lh6.googleusercontent.com/-YFddfSZoSXA/T_wdxIC5KBI/AAAAAAAAEq8/GTyEzRVe_tU/alpine20pxah100.j', 512, 332, 'Alpine PXA-H100'),
(1, 1, 5, 3, '2012-07-10 20:48:51', 'https://lh3.googleusercontent.com/-NX6RTk6tRQQ/T_wdxR9ZkjI/AAAAAAAAEq8/3Wnnn4HdkeM/cd8445.jpg', 512, 257, 'Eclipse 8445E'),
(1, 1, 5, 4, '2012-07-10 20:48:51', 'https://lh5.googleusercontent.com/-JFwaQ_ovsGM/T_wdy22hR8I/AAAAAAAAEq8/q4fmSqRBp0I/dsc02264yo4.jpg', 512, 384, 'Audiocontrol EQT'),
(1, 1, 5, 5, '2012-07-10 20:48:51', 'https://lh5.googleusercontent.com/-ARe996ma9EU/T_wdy1i5kuI/AAAAAAAAEq8/-k_oQRnoVCE/img1782tj2.jpg', 500, 358, 'Brax E-Cap 1F'),
(1, 1, 5, 6, '2012-07-10 20:48:51', 'https://lh5.googleusercontent.com/-UTgvVK76xSg/T_wdu5-VmLI/AAAAAAAAEq8/AZG5-cdaWqs/1105113003906s0.j', 512, 195, 'Xtant 401A'),
(1, 1, 5, 7, '2012-07-10 20:48:51', 'https://lh3.googleusercontent.com/-iRPN0TQitpg/T_wd25jDaHI/AAAAAAAAEq8/Dtczi9CWonM/x1001.jpg', 500, 286, 'Xtant X604'),
(1, 1, 5, 8, '2012-07-10 20:48:51', 'https://lh5.googleusercontent.com/-H10g2cigigs/T_wd0_JhyMI/AAAAAAAAEq8/8wQDleqdo14/xtant_X604.jpg', 500, 286, 'Xtant X1001'),
(1, 1, 5, 9, '2012-07-10 20:48:51', 'https://lh4.googleusercontent.com/-gdsHZHTWEfY/T_wdvwEowuI/AAAAAAAAEq8/J5wOXN4KG78/MC431_1.jpg', 512, 298, 'McIntosh MC431'),
(1, 1, 5, 10, '2012-07-10 20:48:51', 'https://lh3.googleusercontent.com/-LC5nFFcsTGE/T_wdxTnZEUI/AAAAAAAAEq8/cUCj_GCvcT0/VR404Xr.jpg', 512, 340, 'Audison VR404XR'),
(1, 1, 5, 11, '2012-07-10 20:48:51', 'https://lh6.googleusercontent.com/-YjefmY4E1pk/T_wdyYSMD2I/AAAAAAAAEq8/juyBAgc3uUk/dls-ultimate-up6i', 450, 450, 'DLS UP6i'),
(1, 1, 5, 12, '2012-07-10 20:48:51', 'https://lh5.googleusercontent.com/-BxtDhi1q2bc/T_wdzqLeOII/AAAAAAAAEq8/sxZvHoZDAzs/perfect61.jpg', 512, 440, 'Infinity Kappa Perfect 6.1'),
(1, 1, 5, 13, '2012-07-10 20:48:51', 'https://lh6.googleusercontent.com/-7pY4AWFTGqs/T_wdvCUpm1I/AAAAAAAAEq8/IYNJWdWNB_s/DX25Tsidelarge.jp', 512, 314, 'Vifa DX25'),
(1, 1, 5, 14, '2012-07-10 20:48:51', 'https://lh3.googleusercontent.com/-TmjdbP_sRaA/T_wdzFYW1wI/AAAAAAAAEq8/zdiO4Cl1rpA/p8.jpg', 512, 427, 'Helix P8'),
(1, 1, 5, 15, '2012-07-10 20:48:51', 'https://lh6.googleusercontent.com/-Hxvm-BHF1rg/T_wdvkBr3BI/AAAAAAAAEq8/fncAXOiI7HY/Kappa%252520Perfe', 512, 428, 'Infinity Kappa Perfect 12.1'),
(1, 1, 5, 16, '2012-07-10 20:48:51', 'https://lh6.googleusercontent.com/-Y6fi23axNpk/T_wd2HD1dcI/AAAAAAAAEq8/89h5nMxR7XQ/phaseevolution.al', 400, 400, 'Phase Linear Aliante 12'),
(1, 1, 5, 17, '2012-07-10 20:50:11', 'https://lh4.googleusercontent.com/-n6WytKgat1o/T_wduwWEVzI/AAAAAAAAEq8/gva6gEchjuM/6942507870_bce1a9', 440, 438, 'Infinity Beta Ten'),
(2, 1, 3, 1, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-1SrIkjYS1Dk/TTMuUfnKjcI/AAAAAAAAEiI/0fRpoDuUTko/DSC00001.jpg', 512, 384, ''),
(2, 1, 3, 2, '0000-00-00 00:00:00', 'http://lh6.ggpht.com/-CrQezus9Dks/TTMuVI_CLoI/AAAAAAAAEiI/RNJOsi4ottk/DSC00002.jpg', 337.5, 450, ''),
(2, 1, 3, 3, '0000-00-00 00:00:00', 'http://lh5.ggpht.com/-HhlFO0m875M/TTMuWe90kEI/AAAAAAAAEiI/mgV18XKHBiA/DSC00004.jpg', 337.5, 450, ''),
(2, 1, 3, 4, '0000-00-00 00:00:00', 'http://lh5.ggpht.com/-_TGQF57-chE/TTMuXMe93zI/AAAAAAAAEiI/qRGaIadBUt8/DSC00005.jpg', 337.5, 450, ''),
(2, 1, 3, 5, '0000-00-00 00:00:00', 'http://lh5.ggpht.com/-dHm-OUbvka8/TTMubUlUF_I/AAAAAAAAEiI/HMN94RzVo8s/DSC00026.jpg', 512, 384, ''),
(2, 1, 3, 6, '0000-00-00 00:00:00', 'http://lh3.ggpht.com/-_goCE_q-sV8/TTMucbBe6PI/AAAAAAAAEiI/9z3noIHAwkY/DSC00027.jpg', 512, 384, ''),
(2, 1, 3, 7, '0000-00-00 00:00:00', 'http://lh4.ggpht.com/-0X3SOMExY20/TTMudTm_biI/AAAAAAAAEiI/lnUYNn79jdk/DSC00028.jpg', 512, 384, ''),
(2, 1, 3, 8, '0000-00-00 00:00:00', 'http://lh5.ggpht.com/-sEYx0RfFYcE/TuNTZcMIyjI/AAAAAAAAEiI/PyLuXBAJjwY/DSC00319.jpg', 337.5, 450, ''),
(2, 1, 3, 9, '0000-00-00 00:00:00', 'http://lh4.ggpht.com/-EOorLzUrJHw/TuNTbU9rT2I/AAAAAAAAEiI/XQwN-csyv2o/DSC00390.jpg', 337.5, 450, ''),
(2, 1, 2, 1, '2012-07-10 21:12:02', 'https://lh5.googleusercontent.com/-39TeN2_8U4E/TuNSHhtL3DI/AAAAAAAAEiY/MECrdL6NISY/2580-sony-TA-F630', 512, 303, 'Sony TA-F630ESD'),
(1, 1, 6, 1, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-b3qLqvy2FWg/Tu-kzIb_ZFI/AAAAAAAAEiw/Lpj_XhTnXlA/DSC03458.JPG', 512, 384, ''),
(1, 1, 6, 2, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-GuVZIo3zMAA/Tu-k1fu-Q3I/AAAAAAAAEiw/XisLOz4xaMI/DSC03461.JPG', 512, 384, ''),
(1, 1, 6, 3, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-bMLVqt-p_kQ/Tu-k5CRoZ7I/AAAAAAAAEiw/9ddA2l8cBtk/DSC03462.JPG', 337.5, 450, ''),
(1, 1, 6, 4, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-CKoxuFQ0AQM/Tu-k8kF25KI/AAAAAAAAEiw/jFhjaR4QiXc/DSC03468.JPG', 337.5, 450, ''),
(1, 1, 6, 5, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-FtnKAJ81Xyk/Tu-k_TCTndI/AAAAAAAAEiw/GBduKx3Km0I/DSC03484.JPG', 337.5, 450, ''),
(1, 1, 6, 6, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-Csuy9cATbLc/Tu-lBokJs-I/AAAAAAAAEiw/OnX1tVGDmmg/DSC03488.JPG', 337.5, 450, ''),
(1, 1, 6, 7, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-Qor4wsAIGxk/Tu-lD6bKGVI/AAAAAAAAEiw/UJMp2pKHc3g/IMG_0105.JPG', 512, 384, ''),
(1, 1, 6, 8, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-WZ88aCOT8Qo/Tu-lFjKYXfI/AAAAAAAAEiw/gdVYhNfI6E4/IMG_0107.JPG', 512, 384, ''),
(1, 1, 6, 9, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-HwCYKpgYElY/Tu-lITXKgyI/AAAAAAAAEiw/gbLmPTnK2lg/IMG_0108.JPG', 512, 384, ''),
(1, 1, 6, 10, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-e9UfztUbf4w/Tu-lLGvl53I/AAAAAAAAEiw/gATz1Wv_CJ0/IMG_0109.JPG', 512, 384, ''),
(1, 1, 6, 11, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-N4GTdh70Lz8/Tu-lOGsjPUI/AAAAAAAAEiw/wzUs2YE5uq8/IMG_0110.JPG', 512, 384, ''),
(1, 1, 6, 12, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-OFhZ_nUpnOA/Tu-lRJAKZ8I/AAAAAAAAEiw/fkUJxLvKE8E/IMG_0111.JPG', 337.5, 450, ''),
(1, 1, 6, 13, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-eao0W_XW71w/Tu-lTyKe6cI/AAAAAAAAEiw/oEoG7UOmaQ0/IMG_0113.JPG', 512, 384, ''),
(1, 1, 6, 14, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-8Qj2OMt2Upw/Tu-lYr0eIsI/AAAAAAAAEiw/StIv7307RQo/IMG_0121.JPG', 512, 384, ''),
(1, 1, 6, 15, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-HAK31T2Uh9E/Tu-la5qnzdI/AAAAAAAAEiw/Um_HZ7OSxt4/IMG_0123.JPG', 512, 384, ''),
(1, 1, 6, 16, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-t2_tsgrrD3A/Tu-lWYK5WOI/AAAAAAAAEiw/Q_4kZytxgHM/IMG_0117.JPG', 512, 384, ''),
(1, 1, 6, 17, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-x-ubFeGBVQM/Tu-ldYVGdQI/AAAAAAAAEiw/DKBIn2_fRbw/IMG_0179.JPG', 512, 384, ''),
(1, 1, 6, 18, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-H1rzUxLzD0k/Tu-lf92fQYI/AAAAAAAAEiw/NwW1_1MWOeQ/IMG_0181.JPG', 512, 384, ''),
(1, 1, 6, 19, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-4rqLiqqMAt0/Tu-liXl5WUI/AAAAAAAAEiw/Hfpo60Hy8cM/IMG_0182.JPG', 512, 384, ''),
(1, 1, 6, 20, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-9mJnbUbYWWs/Tu-llHpyaUI/AAAAAAAAEiw/KvbiJvaCx_E/IMG_0183.JPG', 512, 384, ''),
(1, 1, 6, 21, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-wx65R4oKfHk/Tu-lnXBnbjI/AAAAAAAAEiw/YQ_9bZlThnU/IMG_0184.JPG', 512, 384, ''),
(1, 2, 1, 1, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-YxlwTP_5Z1A/Tu-mjEfzxpI/AAAAAAAAEic/cssPi3Q69B0/IMGP9178.JPG', 512, 384, ''),
(1, 2, 1, 2, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-CIsybRc41RY/Tu-mlsm0b2I/AAAAAAAAEic/PdNz37Gj_rE/IMGP9180.JPG', 512, 384, ''),
(1, 2, 1, 3, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-z7rj26yLJDA/Tu-mnIC-BII/AAAAAAAAEic/a_d9_BBNgSc/IMGP9182.JPG', 512, 384, ''),
(1, 2, 1, 4, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-16tTLZd2zG0/Tu-mojVZjHI/AAAAAAAAEic/C7el7pOG3-c/IMGP9183.JPG', 512, 384, ''),
(1, 2, 2, 1, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-vwGRYDBl-wg/Tu-n8BvfPPI/AAAAAAAAEho/RrXf9oE53fM/IMG_0589.JPG', 512, 384, ''),
(1, 2, 2, 2, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-o_kpUqrv0-E/Tu-oASM6jMI/AAAAAAAAEho/myM9c-wiG4s/IMG_0592.JPG', 512, 384, ''),
(1, 2, 2, 3, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-pGmVjXtW_dQ/Tu-oDs-UQjI/AAAAAAAAEho/iV7NFK6_tNA/IMG_0593.JPG', 512, 384, ''),
(1, 2, 2, 4, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-AAr6_b9kTV8/Tu-oHSkuNVI/AAAAAAAAEho/vV3gcdVFOzA/IMG_0596.JPG', 512, 384, ''),
(1, 2, 2, 5, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-aerPMFisWvk/Tu-oIKpf_KI/AAAAAAAAEho/tZ7cD95RCv8/39745_14810874216', 512, 384, ''),
(1, 2, 3, 1, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-eLdZ2-tlYe0/Tu-ocS_DhNI/AAAAAAAAEiQ/DBKQRgpr5_M/IMG_0641.JPG', 512, 384, ''),
(1, 2, 3, 2, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-1gh6tSaed88/Tu-ogALU9sI/AAAAAAAAEiQ/YL1QdQEQF0A/IMG_0642.JPG', 512, 384, ''),
(1, 2, 3, 3, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-MEchtXS6jS8/Tu-ojKX83SI/AAAAAAAAEiQ/d81QP7pP-cY/IMG_0643.JPG', 337.5, 450, ''),
(1, 2, 3, 4, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-MFsHm-anI7o/Tu-onN02EzI/AAAAAAAAEiQ/FbffhAhZ_xo/IMG_0660.JPG', 512, 384, ''),
(1, 2, 3, 5, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-7RKfCNfoRwU/Tu-oqX0z9bI/AAAAAAAAEiQ/bn8fC1-CN8M/IMG_0661.JPG', 512, 384, ''),
(1, 2, 3, 6, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-HepdQIj-_dw/Tu-ouehjkxI/AAAAAAAAEiQ/UXmLh8gYj8g/IMG_0662.JPG', 512, 384, ''),
(1, 2, 3, 7, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-zmj6bTdot00/Tu-oxymIezI/AAAAAAAAEiQ/M22SnxqHrcQ/IMG_0663.JPG', 512, 384, ''),
(1, 2, 3, 8, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-uaYprggdCTQ/Tu-o0wJvfKI/AAAAAAAAEiQ/cD1xcefBpL4/IMG_0664.JPG', 512, 384, ''),
(1, 2, 4, 1, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-Yr_4KOoDEP4/TvGwQ0A4z1I/AAAAAAAAEiM/IhCwGs1FRPE/23855_13342125098', 512, 384, ''),
(1, 2, 4, 2, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-DxbOpuOhCoA/Tu-qPd_is2I/AAAAAAAAEiM/ydAuqyEqmbE/coffre.jpg', 512, 384, ''),
(1, 4, 2, 3, '2012-07-14 17:38:31', 'https://lh5.googleusercontent.com/-kgob3-0-i4g/T_1oPRYSI9I/AAAAAAAAE4A/RAbUVYnsVPE/20070329150650.jp', 500, 286, '<b>Modèle:</b> Xtant x1001<br /><br /><b>Caractéristiques :</b><br /><br />Puissance : 1x1000W @1ohm - 1x1000W @2ohm - 1 x 500W @4ohm<br />Réponse en fréquence : 5Hz à 500Hz ±1,5dB<br />Rapport Signal/Bruit : >90dB - THD+N : <2%<br />Damping Factor : >200 @100Hz 4 ohm<br />Sensibilité : 0,1 à 17 volts<br />Filtre actif 12 ou 24 dB/oct, passe bas, réglable de 20 à 200 Hz<br />Sorties lignes 12dB passe haut ou large bande<br />Noise gate intégré<br />2 ports pour modules (PQM, LFQ, RGM)<br />Dimensions : 52,5x26,1x5,5cm<br /><br /><b>CR :</b><br /><br />Là nous avons un monstre de puissance et de tenue sur le grave! Il saura faire descendre votre sub de manière abyssale si celui-ci s''y prête. En bon classe D, il conviendra parfaitement à un sub dont la neutralité laisse à désirer mais saura se marier avec n''importe quel sub selon le résultat qu''on souhaitera obtenir.<br /><br />Testé sur un Infinity Kappa Perfect 12.1 dans 30L dans la mégane.'),
(1, 3, 1, 3, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-gfxbz4DpGWQ/T_yp6jQAGII/AAAAAAAAE3Y/DiJic2t-kTs/fs014.jpg', 512, 384, ''),
(1, 3, 5, 3, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-OV0-MmGURY0/T_yqOCZM8fI/AAAAAAAAE3s/rlRFhYh1RXI/fs013.jpg', 512, 384, ''),
(1, 4, 3, 1, '2012-07-14 17:38:31', 'https://lh3.googleusercontent.com/-Ww8yt3C9J4w/T_12esuLdmI/AAAAAAAAE5E/D7X1tuyUuJE/d2905-970000.jpg', 512, 351, '<b>Modèle:</b> ScanSpeak D2905/970000<br /><br /><b>Caractéristiques :</b><br /><br />Impédance nominale : 6 ohm<br />Sensibilité nominale (2.83V / 1m) : 89.5 dB<br />Bande passante recommandée: 2 - 30 kHz<br />Fréquence de résonnance, fs : 500 Hz<br />Résistance bobine, Re : 4.7 ohm<br />Inductance bobine mobile, Le : 0.01 mH<br />Surface émissive, Sd : 8.5 cm²<br />Masse mobile incl. air, md : 0.45 g<br />Facteur de force, BL : 3.5 Tm<br />Excursion, lin./max. : ±0.4 / ±1.5 mm<br />Diamètre bobine : 28 mm <br />Puissance admissible : 225 W (12 dB/oct. à partir de 2.8 kHz)<br />Poids : 0.7 kg<br /><br /><b>CR :</b><br /><br />Un tweeter superbe qui met une petite claque à la plupart des tweets caraudio que j''ai pu entendre jusqu''ici (pour ne pas dire tous). Certes son prix n''est pas négligeable mais pour un HP de cette gamme je trouve que le rapport qualité/prix reste très bon. Il est difficile de le prendre en défaut car il est très bon sur tous les niveaux, que ce soit en montée ou en descente, en finesse ou en directivité et surtout en timbre! Il ne nécéssite d''ailleurs que peu d''égalisation en voiture ce qui est assez rare pour être spécifié. C''est donc un tweeter tout terrain qui sera parfait en deux voies même si ses qualités peuvent se transformer en défauts selon l''association qu''on en fait. En effet, il est tellement rapide qu''il faut un woofer capable de le suivre pour avoir un bon raccord. Sa taille peut tout fois poser problème pour ceux qui ne souhaitent pas avoir deux grands disques sur le tableau de bord. Dans ce cas, je vous conseille son petit frère format caraudio, le D2904/600000 qui possède bon nombre de ses qualités.<br /><br />Testé dans l''Alfa et dans la Civic avec woofers Hivi/ScanSpeak et ED7 en amplification.'),
(1, 4, 3, 2, '2012-07-14 17:38:31', 'https://lh6.googleusercontent.com/-CRWqAxsvfz8/T_2ByvlaqHI/AAAAAAAAE5k/xXSaicDW1uE/Scan-Speak_Revela', 512, 341, '<b>Modèle:</b> ScanSpeak 18W4531G00<br /><br /><b>Caractéristiques :</b><br /><br />Sensibilité nominale (2.83V / 1m) : 90 dB <br />Bande passante recommandée: 33 - 5000 Hz<br />Fréquence de résonnance, fs : 33 Hz<br />Résistance bobine, Re : 3.4 ohm<br />Inductance bobine mobile, Le : 0.3 mH<br />Surface émissive, Sd : 150 cm²<br />Masse mobile incl. air, md : 17.5 g<br />Pertes mécaniques, Rm : 0.7 Ns/m<br />Facteur de force, BL : 5.7 Tm<br />Vas : 42 ltr<br />Facteur Q mécanique, Qms : 5.2<br />Facteur Q électrique, Qes : 0.38<br />Facteur Q total, Qts : 0.35<br />Excursion, lin./max. : ± 6.5 / ± 11 mm<br />Diamètre bobine : 38 mm<br />Puissance admissible: 70 W<br />Poids : 1.75 kg<br /><br /><b>CR :</b><br /><br />Un midwoofer de la gamme Révélator qui n''a plus besoin d''être présenté. Une matière présente à souhait dans le grave, une excellente capacité à descendre et un impact vraiment très bon s''il est bien alimenté. De plus, il nous offre un medium magnifique surtout pour un 18cm, il peut donc aussi bien être utilisé en deux voies qu''en trois voies. Seul petit défaut, une tendance à durcir dans le haut-medium. C''est donc un HP haut de gamme qui sait presque tout faire et qui a su garder un rapport qualité/prix correct.<br /><br />Testé dans la Civic sur E7054.'),
(1, 4, 2, 4, '2012-07-14 17:38:31', 'https://lh5.googleusercontent.com/-B8tl85U0tYY/T_1v8OqvfSI/AAAAAAAAE40/LgdoafHhN4w/diamond_audio_d70', 500, 314, '<b>Modèle:</b> Diamond Audio D7056 Mk1<br /><br /><b>Caractéristiques :</b><br /><br />RMS Power Output:<br />4 Ohms: 50 watts x 6 chan.<br />2 Ohms: 100 watts x 6 chan.<br />4 Ohms Bridged: 200 watts x 3 chan.<br />Symmetrical Topology, Fully Regulated, Triple-Split-Rail Power Supply<br />Isolated Input Section Utilizing Quasi-Differential Instrumentation Amplifier Technology<br />Third-Order 18dB/Octave Butterworth Crossover Topology<br />Wide Bandwidth/Low Distortion Symmetrical Gain Output Stage<br />Gold Plated Copper Circuit Board<br />High Efficiency Forced-Air Cooling System<br />Massive 3-Piece Proprietary Heatsink<br />Solid Copper High-Current Power Distribution Busbars<br />S/N Ratio: 102 dB<br />Frequency Response: 3 Hz - 50 kHz<br />Dimensions: 22-3/4p L x 10-5/8p W x 3p H<br /><br /><b>CR :</b><br /><br />Légèrement chaleureux, il se permet d''être très bon sur tous les plans ce qui n''est pas chose courante. Niveau med/aigu, il n''en rajoute pas mais la spacialisation et l''aération qu''il procure sont vraiment uniques! Niveau bas-med/grave il produit de la matière à souhait tout en tenant les membranes d''une main de maître. Je le déconseille par contre en ponté car la perte de matière qui en résulte n''est pas négligeable et c''est bien dommage!<br /><br />Testé dans l''Alfa et dans la Civic sur HP Hivi/ScanSpeak et sur pas mal de subs.'),
(1, 4, 1, 1, '2012-07-14 17:38:31', 'https://lh6.googleusercontent.com/-Bx4YSW1pnnI/T_1rWzhpdvI/AAAAAAAAE4Y/vCYXsapPXeA/378842_2389178803', 512, 384, ''),
(1, 4, 2, 2, '2012-07-14 17:38:31', 'https://lh4.googleusercontent.com/-j5Ap9bahtgA/T_1oPbBJLgI/AAAAAAAAE4A/hilhYLpaLVQ/1203113006023s1.j', 512, 384, '<b>Modèle:</b> Xtant 403a<br /><br /><b>Caractéristiques :</b><br /><br />Frequency Response 5 Hz to 50 kHz +/– 3 dB<br />Number of Channels 3<br />Watts per Channel @ 4Ohms 2 x 50 + 1 x 100<br />Watts per Channel @ 2Ohms 2 x 100 + 1 x 200<br />Stereo Ch. Bridged @ 4Ohms 1 x 200<br />Distortion (THD) < .04%<br />Signal to Noise Ratio > 100 dB<br />Damping Factor > 200 @ 100 Hz with 4Ohms Load<br />Input Sensitivity 100 mV to 8.5 V RMS Unbalanced Source<br />100 mV to 17 V RMS     Balanced Source<br />Input to Line Output Gain 0 dB +/– 20 dB, Selectable in 10 dB Steps<br />Line Outputs: Yes<br />Crossover CM12HP & CM12LP Included<br />Module Ports 4 for Amplifier and 1 for Line Outputs<br />Power Supply Fully Regulated, Pulse Width Modulated<br />Operational Voltage 11 to 15 Volts<br />Fusing No On-Board Fuse<br />Fusing Requirement 60 Amp<br />Size (L x W x H) 18.5 x 7.6 x 2.25<br /><br /><b>CR :</b><br /><br />Un très bon ampli pour débuter en 2 voies passives + sub.<br />Une écoute chaleureuse qui n''a rien a envier aux grands et une réserve de puissance correcte.<br />Le troisième canal conviendra parfaitement pour un subwoofer léger.<br /><br />Testé dans la mégane sur un kit éclaté DLS UP6i et sub Aliante 12 (je crois).'),
(1, 4, 2, 1, '2012-07-14 17:38:31', 'https://lh3.googleusercontent.com/-TWb0Bbp4FvM/T_yFoIFm8PI/AAAAAAAAE2I/d2Kmk7-B-aE/five.jpg', 512, 275, '<b>Modèle:</b> Genesis Five Channel<br /><br /><b>Caractéristiques :</b><br /><br />Rated output per channel @ 4 Ohm (14.4V): 4 x 40 + 140 x 1 Watts<br />Rated output per channel @ 2 Ohm (14.4V): 4 x 60 + 200 x 1 Watts<br />Rated output per channel bridged @ 4 Ohm (14.4V): 2 x 160 + 200 x 1 Watts<br />Typical output per channel @ 4 Ohm (14.4V): 4 x 55 + 1 x 210 Watts<br />Typical output per channel @ 2 Ohms (14.4V): 4 x 80 + 1 x 240 watts<br />Typical output per channel bridged @ 4 Ohms (14.4V): 2 x 160 + 1 x 350 watts<br />Frequency response: 20-20KHz<br />THD+ noise @ rated output: <0.1%<br />S/N (A weighted): >100dB<br />Input Sensitivity: .3V-5V<br />Maximum current draw: 80A<br />Dimensions (H x W x L) in mm: 62 x 210 x 450<br /><br /><b>CR :</b><br /><br />Ampli avec une sonorité typiquement anglaise : chaude et moelleuse. Niveau timbre, il est tout simplement expeptionnel, un régal en med/aigu. Il est malheureusement un peu léger en tenue sur le grave et niveau spacialisation il est correct mais loin derrière un ED7. Je le conseil fortement pour faire tourner des HP légers sur un 2 voies + sub en actif.<br /><br />Testé dans l''Alfa 147 sur tweets et woofs Hivi et subs Davis Acoustics 30XXL / Xtant X124.'),
(1, 3, 6, 12, '2012-07-11 16:20:21', 'https://lh5.googleusercontent.com/-bIHUuE6KrJs/T_wSTXvzMFI/AAAAAAAAEmo/K52kAO38Tko/Xtant_X124.jpg', 400, 347, 'Xtant X124'),
(1, 3, 6, 11, '2012-07-11 00:05:00', 'https://lh6.googleusercontent.com/-Z4LDTIAqbrs/T_wqQXNkTgI/AAAAAAAAEww/7bBy9SRGBMA/6565.jpg', 512, 416, 'JBL 1200GTI'),
(1, 3, 6, 10, '2012-07-11 00:05:00', 'https://lh6.googleusercontent.com/-caEZlHakVow/T_wqQSkEctI/AAAAAAAAEww/4mGMn2ZG-t0/IMG_1052_resize.j', 395, 354, 'Phoenix Gold Xmax 12'),
(1, 3, 6, 9, '2012-07-11 00:05:00', 'https://lh5.googleusercontent.com/-XEO-D9tmSGU/T_wSTIpEvOI/AAAAAAAAEmo/hqx0eozQuhg/Scan-Speak_Revela', 512, 341, 'ScanSpeak 18W4531G00'),
(1, 3, 6, 8, '2012-07-11 00:05:00', 'https://lh3.googleusercontent.com/-8v8i8qpVIDQ/T_wSTcc5gfI/AAAAAAAAEmo/a-2iID-UFfA/d6.8_1.jpg', 450, 450, 'Hivi D6.8'),
(1, 3, 6, 7, '2012-07-11 00:05:00', 'https://lh6.googleusercontent.com/-O8f6DUlrxhg/T_wSXNeZ2WI/AAAAAAAAEmo/XunL4effhZI/scanspeak_d290597', 450, 450, 'ScanSpeak D2905/970000'),
(1, 3, 6, 6, '2012-07-11 00:05:00', 'https://lh4.googleusercontent.com/-Wh1qmvJ0Z8g/T_wSWdW-ngI/AAAAAAAAEmo/JRa9BuY-HhA/d7401.jpg', 512, 201, 'Diamond Audio D7401'),
(1, 3, 6, 5, '2012-07-11 00:05:00', 'https://lh6.googleusercontent.com/-Ok-vVE9OX08/T_wSWo17FRI/AAAAAAAAEmo/JoQci1putOk/p1.jpg', 512, 384, 'Esoteric Audio EAU4200'),
(1, 3, 6, 4, '2012-07-11 00:05:00', 'https://lh4.googleusercontent.com/-zK2vjSg0JHs/T_wSUANby4I/AAAAAAAAEmo/cH9eUq2fdGI/diamond_audio_d70', 500, 314, 'Diamond Audio D7056 Mk1'),
(1, 3, 6, 3, '2012-07-11 00:05:00', 'https://lh4.googleusercontent.com/-nL0WFkKI-pg/T_ykq6WQMJI/AAAAAAAAE3I/C0ch0AeZUSs/529148_3847071809', 512, 384, 'Apple Airport Express modifiée'),
(1, 3, 6, 2, '2012-07-11 00:05:00', 'https://lh5.googleusercontent.com/-pxrNX0Z2pbs/T_wSXYw_mUI/AAAAAAAAEmo/E4aGi4y0WEg/xdp4000x.jpg', 512, 306, 'Sony XDP4000'),
(1, 3, 6, 1, '2012-07-11 00:05:00', 'https://lh4.googleusercontent.com/-TuoloAT1UM8/T_wSUxUwR_I/AAAAAAAAEmo/r4Due2H1hjk/dsc01991bn8.jpg', 512, 384, 'Sony CDX-C90R'),
(1, 3, 5, 2, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-pCaXDcTwJr0/TvCact_CP1I/AAAAAAAAEiA/AuUE0LBZPdk/DSC00184.jpg', 512, 384, ''),
(1, 3, 5, 1, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-XbeaOiFupI8/TvCabw8718I/AAAAAAAAEiA/YyZ3wVTPC7o/DSC00134.jpg', 512, 384, ''),
(1, 3, 4, 2, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-V130qs1n8Jo/TvCZ_Uh0d6I/AAAAAAAAEiE/oPqSK-Ekn_M/DSC00143.jpg', 512, 384, ''),
(1, 3, 4, 1, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-ZC8WLbXxEw0/TvCZ-RkIHkI/AAAAAAAAEiE/-7v3_af6tco/DSC00141.jpg', 512, 384, ''),
(1, 3, 3, 3, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-QOYv8VJ_hUw/TvCZmMF10ZI/AAAAAAAAEh0/uZD20BQJcSk/DSC00317.jpg', 512, 384, ''),
(1, 3, 3, 2, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-Nc3NYJ0OwcE/TvCZlL19x3I/AAAAAAAAEh0/M5APcIHov5w/DSC00180.jpg', 512, 384, ''),
(1, 3, 3, 1, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-ucefqZk2CAs/TvCZkIrNbLI/AAAAAAAAEh0/CZUgM4SOadM/11050911002534632', 512, 340, ''),
(1, 3, 2, 9, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-hzntdKKoIMM/TvCYrbD_7ZI/AAAAAAAAEhw/d5-Hs0fIUIE/DSC00377.jpg', 512, 384, ''),
(1, 3, 2, 8, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-gIHkNMqWrZU/TvCYoKl1UII/AAAAAAAAEhw/1EERkKFbof8/DSC00368.jpg', 337.5, 450, ''),
(1, 3, 2, 7, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-qsSFKCNvznU/TvCYm7eNktI/AAAAAAAAEhw/-foump8QvRc/DSC00366.jpg', 337.5, 450, ''),
(1, 3, 2, 6, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-P_0EI8wZRuM/TvCYqHMhdCI/AAAAAAAAEhw/tfz70BB4pIQ/DSC00373.jpg', 512, 384, ''),
(1, 3, 2, 5, '0000-00-00 00:00:00', 'https://lh5.googleusercontent.com/-N_0f1xwbJdA/TvCZFk6utgI/AAAAAAAAEhw/o-ovdERRw7U/DSC00352.jpg', 512, 384, ''),
(1, 3, 2, 4, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/--oCo9Zk5QnI/TvCYl2rqH_I/AAAAAAAAEhw/Qox1RxPYdAU/DSC00149.jpg', 512, 384, ''),
(1, 3, 2, 3, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-uYqUYHo066o/TvCYkjTnJZI/AAAAAAAAEhw/LiCWfV_5F8w/DSC00147.jpg', 512, 384, ''),
(1, 3, 2, 2, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-7ZpMNwlXFs4/TvCYjRpSGTI/AAAAAAAAEhw/eoFEQ49RPGk/DSC00146.jpg', 512, 384, ''),
(1, 3, 2, 1, '0000-00-00 00:00:00', 'https://lh6.googleusercontent.com/-tMJgErt1qB8/TvCYiSrg58I/AAAAAAAAEhw/Tpaac1EwH5M/DSC00145.jpg', 512, 384, ''),
(1, 3, 1, 2, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-I3xwHro84x0/TvCXfeEKQ6I/AAAAAAAAEh4/4ObXpEYpM-w/DSC00230.jpg', 512, 384, ''),
(1, 3, 1, 1, '0000-00-00 00:00:00', 'https://lh3.googleusercontent.com/-ft2M_eXu0uU/TvCXeAvSTVI/AAAAAAAAEh4/HLSqFVKKJc8/DSC00229.jpg', 512, 384, ''),
(1, 2, 5, 9, '2012-07-10 21:09:17', 'https://lh4.googleusercontent.com/-6o73djIWkI0/T_wXdqoRCGI/AAAAAAAAEoE/-WSzfRchvpI/1331279075720.jpg', 512, 345, 'Davis Acoustics 30XXL'),
(1, 2, 5, 8, '2012-07-10 21:09:17', 'https://lh5.googleusercontent.com/-rzQ0sHS4WDw/T_wXdQ-LYiI/AAAAAAAAEoE/WFhzHMBnDfw/Xtant_X124.jpg', 400, 347, 'Xtant X12'),
(1, 2, 5, 7, '2012-07-10 21:09:17', 'https://lh3.googleusercontent.com/-EsqyUorrpi4/T_wXePg6HAI/AAAAAAAAEoE/gYahUH_aXPE/d6.8_1.jpg', 450, 450, 'Hivi D6.8'),
(1, 2, 5, 6, '2012-07-10 21:09:17', 'https://lh5.googleusercontent.com/-re2EWeHEp_c/T_wXfjGixnI/AAAAAAAAEoE/gym7WAQ7dHo/scanspeak_d290597', 450, 450, 'ScanSpeak D2905/970000'),
(1, 2, 5, 5, '2012-07-10 21:09:17', 'https://lh3.googleusercontent.com/-MYZbW1c7zwM/TvCVjTiloAI/AAAAAAAAEiU/xTlbs8qT1f8/DSC00248.jpg', 512, 384, 'Hivi Q1R'),
(1, 2, 5, 4, '2012-07-10 21:09:17', 'https://lh6.googleusercontent.com/-o4ScfD7pbdc/T_wXeXHAfaI/AAAAAAAAEoE/mQ1Os3PDelE/diamond_audio_d70', 500, 314, 'Diamond Audio D7056 Mk1'),
(1, 2, 5, 3, '2012-07-10 21:09:17', 'https://lh4.googleusercontent.com/-BatV3pZkwc8/T_wXenhhDjI/AAAAAAAAEoE/bSiDO2h8-eE/five.jpg', 512, 275, 'Genesis Five Channel'),
(1, 2, 5, 2, '2012-07-10 21:09:17', 'https://lh5.googleusercontent.com/-ZuGXIcbG2XE/T_wXfPss0NI/AAAAAAAAEoE/hnnpxlNzm5I/ppi-dcx-730%25252', 512, 384, 'Precision Power DCX730'),
(1, 2, 5, 1, '2012-07-10 21:09:17', 'https://lh5.googleusercontent.com/-DlrCf8nAKWc/T_wXdhjKykI/AAAAAAAAEoE/A5TUFsgvimc/Nakamichi-MBx.jpg', 512, 287, 'Nakamichi MB-X'),
(2, 1, 1, 1, '0000-00-00 00:00:00', 'https://lh4.googleusercontent.com/-PR9u60MqZQw/T_wM8dS284I/AAAAAAAAEjE/tI2SpYPgYU8/269253_3767393177', 512, 384, '');

-- --------------------------------------------------------

--
-- Structure de la table `album_structure`
--

CREATE TABLE IF NOT EXISTS `youbiweb_album_structure` (
  `catId` int(11) NOT NULL,
  `scatId` int(11) NOT NULL,
  `albumId` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `commentaire` text NOT NULL,
  `rss` text NOT NULL,
  `nbPhotos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `album_structure`
--

INSERT INTO `youbiweb_album_structure` (`catId`, `scatId`, `albumId`, `nom`, `commentaire`, `rss`, `nbPhotos`) VALUES
(1, 1, 1, 'Renault Mégane', 'Voici ma première installation réalisée en 2008.', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5569155617330386289?alt=rss', 4),
(2, 1, 1, 'Mon Installation', 'Voici mon installation hifi composée d''une paire de biblios DIY amplifiées par un ampli Sony ESD relié à un lecteur CD Philips.', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5688004491885888225?alt=rss&', 1),
(2, 1, 3, 'Enceintes', 'Mes enceintes on été réalisées par Pierre (<a href="http://www.waveflex.fr/" target="_blank">Waveflex</a>).', 'http://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5562840838700231505?alt=rss&k', 9),
(1, 1, 2, 'Portes', '', 'http://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5566935282540647697?alt=rss', 26),
(2, 1, 2, 'Electroniques', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5568258532628242289?alt=rss&', 1),
(1, 1, 3, 'Montants', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5568267105712249665?alt=rss&', 6),
(1, 1, 4, 'Coffre', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5569152409482516049?alt=rss', 32),
(1, 1, 5, 'Matériel', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5687780874212227473?alt=rss&', 17),
(1, 1, 6, 'Habitacle', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5687946007217822689?alt=rss&', 21),
(1, 2, 1, 'Alfa 147', 'Seconde installation.', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5687947951829748305?alt=rss', 4),
(1, 2, 2, 'Habitacle', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5687949386371061841?alt=rss&', 5),
(1, 2, 3, 'Portes', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5687950005410112113?alt=rss&', 8),
(1, 2, 4, 'Coffre', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5687950703670119313?alt=rss&', 2),
(1, 2, 5, 'Matériel', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5688210191875199073?alt=rss&', 9),
(1, 3, 1, 'Honda Civic', 'Mon installation actuelle.', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5688212852735100337?alt=rss', 3),
(1, 3, 2, 'Portes', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5688214023935723793?alt=rss', 9),
(1, 3, 3, 'Coffre', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5688215145399152753?alt=rss&', 3),
(1, 3, 4, 'Montants', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5688215612177464657?alt=rss', 2),
(1, 3, 5, 'Habitacle', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5688216105620281009?alt=rss', 3),
(1, 3, 6, 'Matériel', '', 'https://picasaweb.google.com/data/feed/base/user/josselin.buils/albumid/5688216981448659985?alt=rss&', 13),
(1, 4, 3, 'Haut-parleurs', '', 'https://picasaweb.google.com/data/feed/base/user/105444841689038333510/albumid/5763893366033032497?alt=rss', 2),
(1, 4, 1, 'Essais', 'Vous trouverez ici des CR de matériel que j''ai testé.', 'https://picasaweb.google.com/data/feed/base/user/105444841689038333510/albumid/5763881137010801569?alt=rss', 1),
(1, 4, 2, 'Amplificateurs', '', 'https://picasaweb.google.com/data/feed/base/user/105444841689038333510/albumid/5763628548871501217?alt=rss', 4);

-- --------------------------------------------------------

--
-- Structure de la table `global_cat`
--

CREATE TABLE IF NOT EXISTS `youbiweb_global_cat` (
  `catId` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `album` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `global_cat`
--

INSERT INTO `youbiweb_global_cat` (`catId`, `nom`, `album`) VALUES
(3, 'Programmation', 0),
(2, 'Hifi', 1),
(1, 'Caraudio', 1),
(4, 'Musique', 0);

-- --------------------------------------------------------

--
-- Structure de la table `miseEnForme`
--

CREATE TABLE IF NOT EXISTS `youbiweb_miseEnForme` (
  `id` int(11) NOT NULL,
  `regex` varchar(100) NOT NULL,
  `resultat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `miseEnForme`
--

INSERT INTO `youbiweb_miseEnForme` (`id`, `regex`, `resultat`) VALUES
(1, '#\\[source\\](.+)\\[/source\\]#', '<a href="$1" target="_blank">Source</a>'),
(2, '#\\[img\\](.+)\\[/img\\]#', '<img alt="" src="$1" />');

-- --------------------------------------------------------

--
-- Structure de la table `musique_artistes`
--

CREATE TABLE IF NOT EXISTS `youbiweb_musique_artistes` (
  `id` int(11) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `article` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `musique_artistes`
--

INSERT INTO `youbiweb_musique_artistes` (`id`, `nom`, `article`, `date`) VALUES
(1, 'Enya', '[img]http://img.over-blog.com/400x300/4/07/02/39/Gifs-6/6-enya.jpg[/img]<br /><br />Le phénomène Enya peut paraître surprenant, mais bien des facteurs l''ont aidé: une vague montante de spiritualité à l''aube de la nouvelle ère du Verseau, un changement des musiques dites populaires qui n''ont pour toute création un simple refrain et qui exaspèrent les amants de la musique, la lassitude du monolinguisme (et je dirais même le danger de l''endogamie culturelle) et la curiosité d''aller découvrir d''autres coins de notre minuscule planète, voilà des circonstances fort heureuses pour Enya, l''ensorcelleuse vocale par excellence.<br /><br />[source]http://lavaleo.tripod.com/Enjo-france.html[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/hHjRJp8nVUA" frameborder="0" allowfullscreen></iframe>', '2011-12-29 07:24:57'),
(2, 'The Cardigans', '[img]http://4.bp.blogspot.com/_Cy1suq91vBA/SIUx4EuMUwI/AAAAAAAABIo/62gffHgGYpY/s400/the-cardigans2022.jpg[/img]<br /><br />The Cardigans est un groupe de musique suédois. Le style musical du groupe a beaucoup changé d''album en album, passant du rock indépendant à une musique inspirée des années 1960.<br /><br />Chaque album du groupe a réussi à attirer l''attention de différentes audiences. Avec leur premier album, Emmerdale (1994) ils sont parvenus à s''entourer d''un noyau dur de fans dans leur propre pays, et se sont fait remarquer à l''étranger, notamment au Japon. Mais il faut attendre leur deuxième album, Life (1995), pour que fans et critiques du monde entier les remarquent.<br /><br />Le groupe se fait connaître avec le hit mondial Lovefool, tiré de l''album First Band on the Moon (1996). Cette participation à la bande originale du film Roméo   Juliette réalisé par Baz Luhrmann assure leur popularité, et bien que certains considèrent qu''ils rejoindront vite la masse des artistes d''un tube, le groupe connaît de nouveau le succès avec les singles My Favourite Game et Erase/Rewind, tout deux tirés de l''album Gran Turismo.<br /><br />[source]http://fr.wikipedia.org/wiki/The_Cardigans[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/bUIElvJRyNU" frameborder="0" allowfullscreen></iframe><br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/ex2E4vyGem0" frameborder="0" allowfullscreen></iframe>', '2011-12-29 07:22:41'),
(3, 'Lana Del Rey', '[img]http://www.gqmagazine.fr/uploads/images/thumbs/201145/j___ai_rencontr___lana_del_rey_9634_north_400x.jpg[/img]<br /><br />Qui est Lana Del Rey ? Ce nom fait vibrer internet depuis plusieurs mois dans le monde et l''artiste atteint désormais la France avec ses titres uniques écrits avec une simplicité déconcertante et mis en scène devant sa webcam. La jeune américaine est aussi talentueuse que discrète et les informations à son sujet se payent à prix d''or par les médias du monde entier. Lana Del Rey se résume en quelques mots : on découvre, on écoute, on frissonne et on ne s''en lasse plus.<br /><br />[source]http://www.lana-del-rey.fr/[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/fPb6O52_rYU" frameborder="0" allowfullscreen></iframe><br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/7XLHFiGauDY" frameborder="0" allowfullscreen></iframe>', '2011-12-29 03:12:47'),
(4, 'Mister Heavenly', '[img]http://austintownhall.com/wp-content/uploads/2011/08/8247.jpg[/img]<br /><br />Un groupe de rock américain… encore un ??? Non pas vraiment, il s’agit de Mister Heavenly. Un mélange d’un genre nouveau, entre pop et rock électrique que les gars du groupe ont baptisé « doom-wop ». Ces trois beaux musiciens, issus de groupes aux univers différents, se sont bien trouvés : leur amour commun pour la folie et les dérapages toujours contrôlés nous donnent la pêche, et on en redemande ! Tout le monde y trouvera son bonheur : entre fans d’indie rock et adeptes des moustaches (le clavieriste ne vous laissera pas indifférentes mesdemoiselles !). Mister Heavenly, c’est la rencontre de diverses influences musicales, l’occasion de découvrir un son puissant et rythmé… Le tout dans une ambiance électrique ! Alors venez vous lâcher avec Nick Thorburn, Honus Honus et Joe Plummer !<br /><br />[source]http://www.barsentrans.com/2011/11/22/mister-heavenly-bronx-sniper/[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/RWdlPXZUj6w" frameborder="0" allowfullscreen></iframe>', '2011-12-29 05:48:01'),
(5, 'Marta Gómez', '[img]http://api.ning.com/files/gqawuEUfjvharlVPr57WpmsZSyCBRCZRhEC06jOVzlOYYYmc0HJsg26U*DG-pSaQ*2LaHu20IrXIzbGOPMGDj3HOmP*aYZpm/martagomez.jpg[/img]<br /><br />Marta Gómez est une artiste colombienne qui écrit, compose et interprète ses propres chansons. Elle a obtenu un diplome du Berklee College of Music. Elle vit actuellement aux États-Unis.<br /><br />Marta Gomez et son groupe (Julio Santillan, Franco Pinna, Fernando Huergo, Yulia Musayelyan et Emilio Teubal) interprètent un large répertoire de chansons dont le rythme est souvent un mélange de rythmes latins, du jazz à la musique folklorique latino-américaine, en passant par la cumbia et le bambuco colombiens, la zamba argentine, le son cubain, ou le lando péruvien.<br /><br />Elle a partagé la scène avec des artistes tels que Bonnie Raitt, John Mayer, Totó la Momposina ou Mercedes Sosa.<br /><br />Son album Solo es vivir a été choisi par le Boston Globe comme l''un des dix meilleurs albums de 2003. Son album Cantos de Agua Dulce a été nominée au 2004 Latin Billboard Music Awards dans la catégorie Latin Jazz Album of the Year.<br /><br />[source]http://fr.wikipedia.org/wiki/Marta_Gómez[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/8goILWkYRU4" frameborder="0" allowfullscreen></iframe>', '2011-12-29 07:24:45'),
(6, 'Skrillex', '[img]http://media.metronews.topscms.com/images/da/74/e46361fd4b41bed1ea7ac3a825d9.jpeg[/img]<br /><br />Sonny Moore (né le 15 janvier 1988 à Los Angeles), plus connu sous le nom de Skrillex, est un chanteur et DJ américain. Il est l''ancien chanteur du groupe américain d''emocore From First to Last.<br /><br />Au départ, Sonny était juste venu essayer une guitare, puis très vite il s''est imposé comme chanteur principal du groupe pour remplacer l''ancien, Phillip Reardon. Il enregistre avec le groupe deux albums (Dear Diary, My Teen Angst Has A Body Count et Heroine). Avec ses problèmes de chant, il décide, en 2007, de quitter le groupe et de se diriger vers une carrière solo dans la musique électronique dansante. Bien lui en a pris puisque actuellement, il est un des principaux artistes en vogue dans le genre. Il apparaît alors sous le pseudonyme de Skrillex.<br /><br />[source]http://fr.wikipedia.org/wiki/Sonny_Moore[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/2cXDgFwE13g" frameborder="0" allowfullscreen></iframe>', '2011-12-29 05:43:41'),
(7, 'Stuck in the sound', '[img]https://lh6.googleusercontent.com/-2mmtNourSc0/TvyhqG4d9WI/AAAAAAAAEXM/ZLLUCV7L2Pk/s402/AUDIO-Stuck-in-the-sound.jpg[/img]<br /><br />Stuck In The Sound est un quatuor parisien de rock-indé formé en 2002, révélé en 2004, par les Inrockuptibles et sa compilation CQFD, et quelques mois plus tôt par le réseau Pince Oreilles à travers sa compilation La Pépinière.<br /><br />Le groupe est formé par : José Reis Fontao (chant/guitare), Emmanuel Barichasse (guitare), Arno Bordas (basse) et François Ernie (batterie/chœurs) et sur certains singles Joko de la bande a bono.<br /><br />Le chanteur guitariste José Reis Fontao a rencontré Emmanuel Barichasse lors d''une soirée post-bac. Tous deux avaient alors amené leurs guitares : premières improvisations, la magie opère. A l''écoute de leurs créations musicales, une fille a pleuré face à tant de beauté, l''autre a vomi. Les autres invités les ont encouragés à former un groupe de rock, un rêve de gosse. José Reis Fontao rencontra ensuite Arno Bordas à la faculté de cinéma de Jussieu. Les aléas de la vie amenèrent François Ernie à compléter le groupe.<br /><br />Les goûts des membres de Stuck in the Sound sont alors différents mais se retrouvent sur Nirvana, groupe qui a énormément influencé le groupe, puis plus tard sur Sonic Youth ou les Pixies.<br /><br />[source]http://fr.wikipedia.org/wiki/Stuck_in_the_Sound[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/1bG6uA7ln-c" frameborder="0" allowfullscreen></iframe>', '2011-12-29 06:28:21'),
(8, 'Goldfish', '[img]https://lh4.googleusercontent.com/-qyxvrrCqeOE/TvyhqC4fvYI/AAAAAAAAEXI/mNlK3Ir-EAI/s449/GF4.jpg[/img]<br /><br />Goldfish c’est non seulement des poissons trop surpuissants (ils sont vraiment dorés je plaisante pas !)  mais c’est aussi un groupe de musique ! Pour le clip de leur nouveau tube, ils ont décidé de s’en remettre à Mike Scott (un graphiste qui envoie du lourd !). Le résultat ? Quatre minutes bourrés de pixels et de clins d’oeil aux productions vidéo-ludique qui ont marqué les année 80-90, vous allez A-DO-RER!<br /><br />[source]http://www.geekofeminin.com/pixel-musique-goldfish-we-come-together/[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/7-tNUur2YoU" frameborder="0" allowfullscreen></iframe>', '2011-12-29 06:28:50'),
(9, 'Felipecha', '[img]http://www.welovemusic.fr/img/imgs/artist/4437_1f06928c3cfa5f42a201b8909827216f.jpg[/img]<br /><br />Elle est l''air, il est la terre. Elle est ange, il est démon. A eux deux,  ils sont Felipecha... <br /><br />Une alliance qui aura pris du temps.  Felipe et Charlotte se rencontrent dans les couloirs de la fac, à Nanterre et ne perdent jamais contact. Lui, globe-trotter invétéré fait de brefs passages à Paris, elle, décide de terminer ses études et devient la voix de Wax Tailor. Ils ne perdent pas contact et s''octroient des séances musicales furtives. Jusqu''au jour où ils décident d''enregistrer une première maquette en 2005.<br /><br />Les musiques folk-rock de Felipe s''accordent étonnament avec la voix pop de Charlotte qui les illumine tout en subtilité. De fil en aiguille, leur premier album, prend forme, réalisé par Manuel Armstrong, également aux commandes des arrangements. Filipe Montero à la contrebasse, Franck Armand à la batterie et aux percussions et aussi Felipe sur les voix... Le compositeur marque également l''album de sa voix maligne et virile, toujours en contraste charnel avec la douceur de sa muse. <br /><br />[source]http://musique.ados.fr/Felipecha.html[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/q1yAvIHbIKY" frameborder="0" allowfullscreen></iframe><br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/04HbOQsDaaY" frameborder="0" allowfullscreen></iframe>', '2011-12-29 11:16:22'),
(10, 'Christine', '[img]https://lh5.googleusercontent.com/-yLcK1fjFlHU/TwLxOXbdG8I/AAAAAAAAEXY/DP6ZXrI_bqs/s450/christine_1.jpg[/img]<br /><br />Aeon Seven et Kunst Throw comptaient déjà des kilomètres au compteur du turntabulism quand ils décidèrent de faire équipe et d’embarquer à bord d''une nouvelle machine rutilante, baptisée Christine en hommage à John Carpenter. Découverte du Printemps de Bourges 2011 et proposant un Live 4 Platines visuel et énergique, Christine vous prendra en stop et vous entraînera dans les sombres sillons de ces mélodies tonitruantes, aux beats tranchants et saturés.<br /><br />[source]http://www.festival-artsonic.com/programmation-christine.html[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/ai3neZrCzuo" frameborder="0" allowfullscreen></iframe>', '2012-01-03 01:17:30'),
(11, 'Beat Torrent', '[img]http://edition2011.printemps-bourges.com/images/programme/artistes_photo_rotation/beat_torrent_01_home.jpg[/img]<br /><br />Armés de leurs 5 titres de champions du monde de turntablism au sein du collectif C2C, Atom et Pfel prennent de l’altitude en 2007 en créant Beat Torrent, alliant la fureur du rock à l’ardeur du hip hop, le tout saupoudré d’electro. Ces génies techniques prouvent sur scène que leurs platines sont des instruments de musique à part entière, tout en nous propulsant dans leur show vidéo déjanté. En bref, la french team incontournable qui fait convulser toutes les scènes du moment !<br /><br />[source]http://www.festival-artsonic.com/programmation-beat-torrent.html[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/LN2F7SM6A7E" frameborder="0" allowfullscreen></iframe>', '2012-01-03 01:30:44'),
(12, 'Jazzsteppa', '[img]http://gravyandbiscuits.com/wp-content/uploads/2011/03/jazzsteppa-400x300.jpg[/img]<br /><br />Jazzsteppa est un collectif international formé durant l’année 2006. Le projet fût initié par Gal-Bar-Adon et Mathieu Pe. Il est maintenant composé d’un musicien français, allemand, anglais et israelien. Leur musique est créée à fois sur une base dubstep et nu-jazz tout en insérant des influences autres notamment dub stepper, idm et funk. <br /><br />[source]http://www.lastfm.fr/music/Jazzsteppa[/source]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/KV-g4zcOQxo" frameborder="0" allowfullscreen></iframe>', '2012-01-29 03:08:59'),
(13, 'Sna-Fu', '[img]http://www.leseternels.net/photos/itw/Manimal_-_Sna-Fu_20100412.jpg[/img]<br /><br /><iframe width="560" height="315" src="http://www.youtube.com/embed/62Y7hg2kHOM" frameborder="0" allowfullscreen></iframe>', '2012-03-25 09:23:01');

-- --------------------------------------------------------

--
-- Structure de la table `prog_sources`
--

CREATE TABLE IF NOT EXISTS `youbiweb_prog_sources` (
  `langId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `commentaire` text NOT NULL,
  `source` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prog_sources`
--

INSERT INTO `youbiweb_prog_sources` (`langId`, `sourceId`, `nom`, `commentaire`, `source`) VALUES
(1, 3, 'TP4_Ex3_Rotation', '', '/**\r\n* TP4_Ex3_Rotation\r\n* Rotation d''un tableau carré bidimensionnel d''entiers avec un décalage de 90° horaire.\r\n* @author J.BUILS\r\n* @version 11.12.08\r\n*/\r\n\r\npublic class Rotation {\r\n\r\n	/**\r\n	 * Fonction test de la rotation d''un tableau.\r\n	 * @param args\r\n	 */\r\n	public static void main(String[] args) {\r\n		// TODO Auto-generated method stub\r\n		\r\n		int tab[][] = { {11, 22, 33}, {44, 55, 66}, {77, 88, 99} };\r\n		\r\n		int rTab[][] = rotationTab(tab).clone();\r\n		\r\n		System.out.println("Affichage du tableau de base :");\r\n		\r\n		for (int i = 0;i < tab.length;i++)\r\n		{\r\n			for (int j = 0;j < tab[0].length;j++)\r\n				System.out.print(tab[i][j]    " ");\r\n			System.out.println();\r\n		}\r\n		\r\n		System.out.println();\r\n		System.out.println("Affichage du tableau retourné :");\r\n		\r\n		for (int i = 0;i < rTab.length;i++)\r\n		{\r\n			for (int j = 0;j < rTab[0].length;j++)\r\n				System.out.print(rTab[i][j]    " ");\r\n			System.out.println();\r\n		}	\r\n	}\r\n	\r\n	public static int[][] rotationTab(int tab[][])\r\n	{\r\n		int nbL = tab.length, nbC = tab[0].length;\r\n		int rTab[][] = new int [nbC][nbL];\r\n		\r\n		for (int i = 0;i < nbL;i++)\r\n			for (int j = 0;j < nbC;j++)\r\n				rTab[j][nbC-1-i] = tab[i][j];\r\n		\r\n		return rTab;\r\n	}\r\n}'),
(1, 1, 'TP5_Ex3_FileCirculaire', '', '/**\r\n* TP5_Ex3_FileCirculaire\r\n* Opérations de manipulation d''une file circulaire\r\n* @author J.BUILS\r\n* @version 12.01.05\r\n*/\r\n\r\npublic class FileCirculaire {\r\n	\r\n	/**\r\n	 * la structure concrète pour implémenter la file\r\n	 * <br /><i>ici un tableau de 5 entiers</i>\r\n	 */\r\n	public static int[] tab = new int [5];\r\n	\r\n	/**\r\n	 * la longueur de la file\r\n	 */\r\n	public static int lg = 0;\r\n	\r\n	/**\r\n	 * la tête de la file circulaire\r\n	 */\r\n	public static int tête = 0;\r\n	\r\n	/**\r\n	 * la queue de la file circulaire\r\n	 */\r\n	public static int queue = 0;\r\n	\r\n	/**\r\n	 * indique si la file est vide ou non \r\n	 * @return vrai si la file est vide, faux sinon\r\n	 */\r\n	public static boolean estVide()\r\n	{\r\n		return (lg == 0);\r\n	}\r\n	\r\n	/**\r\n	 * indique si la file est pleine ou non \r\n	 * @return vrai si la file est pleine, faux sinon\r\n	 */\r\n	public static boolean estPleine()\r\n	{\r\n		return (lg == tab.length);\r\n	}\r\n	\r\n	/**\r\n	 * donne le premier élément de la file\r\n	 * <br /><b>la file ne doit pas être vide</b>\r\n	 * @return le premier élément de la file\r\n	 */\r\n	public static int premier()\r\n	{\r\n		if (estVide())\r\n			System.out.print("ERR - premier() : file vide ! : ");\r\n		\r\n		return tab[tête];\r\n	}\r\n	\r\n	/**\r\n	 * enfile un élément dans la file \r\n	 * <br /><b>la file ne doit pas être pleine</b>\r\n	 * @param e l''élément à enfiler\r\n	 */\r\n	public static void enfiler(int e)\r\n	{\r\n		if (!estPleine())\r\n		{\r\n			tab[queue] = e;\r\n			queue = (queue+1)%tab.length;\r\n			lg++;\r\n		}\r\n		\r\n		else\r\n			System.out.println("ERR - enfiler() : file pleine !");\r\n	}\r\n	\r\n	/**\r\n	 * défile le premier élément de la file\r\n	 * <br /><b>la file ne doit pas être vide</b>\r\n	 * <br /><i>on ne supprime pas réellement l''élément</i>\r\n	 */\r\n	public static void défiler()\r\n	{\r\n		if (!estVide())\r\n		{\r\n			tête = (tête+1)%tab.length;\r\n			lg--;\r\n		}\r\n		\r\n		else\r\n			System.out.println("ERR - défiler() : file vide !");\r\n	}\r\n	\r\n	/**\r\n	 * affiche les éléments de la file\r\n	 */\r\n	public static void afficher()\r\n	{\r\n		System.out.print("<< ");\r\n		\r\n		for (int i = 0;i < lg;i++)\r\n			System.out.print(tab[(tête+i)%tab.length] + " ");\r\n		\r\n		System.out.println("<<");\r\n	}\r\n\r\n	/**\r\n	 * programme de test de la SDA file circulaire\r\n	 * @param args\r\n	 */\r\n	public static void main(String[] args) {\r\n		// TODO Auto-generated method stub\r\n		\r\n		System.out.println("SDA file circulaire SDC tab") ; \r\n		enfiler(10); \r\n		enfiler(20); \r\n		enfiler(30); \r\n		enfiler(40); \r\n		enfiler(50); \r\n		enfiler(60); \r\n		afficher(); \r\n		défiler(); \r\n		défiler(); \r\n		défiler(); \r\n		enfiler(70); \r\n		System.out.println(premier()) ; \r\n		défiler(); \r\n		défiler(); \r\n		défiler(); \r\n		enfiler(80); \r\n		défiler(); \r\n		défiler(); \r\n		afficher(); \r\n		System.out.println(premier()) ;\r\n	}\r\n\r\n}\r\n'),
(1, 2, 'TP5_Ex2_FiboRec', '', '/**\r\n* TP5_Ex2_FiboRec\r\n* Suite de Fibonacci à l''aide d''une fonction récursive\r\n* @author J.BUILS\r\n* @version 12.01.05\r\n*/\r\n\r\npublic class FiboRec {\r\n	\r\n	/**\r\n	 * Compteur d''appels de fibo()\r\n	 */\r\n	public static int nbAppels = 0;\r\n\r\n	/**\r\n	 * Calcule le nième terme de la suite de Fibonacci à l''aide de la fonction récursive\r\n	 * @param n le terme à calculer\r\n	 * @return le nième terme de la suite de Fibonacci\r\n	 */\r\n	public static int fibo(int n)\r\n	{\r\n		nbAppels++;\r\n		\r\n		if (n < 2)\r\n			return n;\r\n\r\n		return (n > 1) ? fibo(n-2)   fibo(n-1) : n;\r\n	}\r\n	\r\n	/**\r\n	 * programme test de la fonction fibo\r\n	 * @param args\r\n	 */\r\n	public static void main(String[] args) {\r\n		// TODO Auto-generated method stub\r\n		\r\n		//Affichage du nombre de d''appels pour fibo(10)\r\n		fibo(10);\r\n		System.out.println("Nombre d''appels pour fibo(10): "   nbAppels);\r\n		//177\r\n		\r\n		//Recherche de la valeur limite de n\r\n		for (int i = 0;true;i++)\r\n		{\r\n			int res = fibo(i);\r\n			\r\n			if (res < 0)\r\n			{\r\n				System.out.println("Valeur limite de n : "   (i-1));\r\n				break;\r\n			}\r\n		}\r\n		//Limite 46 par type int\r\n	}\r\n}'),
(1, 4, 'TP4_Ex2_Crible', '', 'import java.io.IOException;\r\n\r\n/**\r\n* TP4_Ex2_Crible\r\n* opérations de manipulation sur un tableau d’entiers 1D\r\n* @author J.BUILS\r\n* @version 11.12.08\r\n*/\r\n\r\npublic class Crible {\r\n\r\n	/**\r\n	 * Fonction test du crible d''Eratosthène (nb premiers).\r\n	 * Affiche les indices du tableau de booléens à VRAI correspondant aux nb premiers.\r\n	 * @param args\r\n	 * @throws IOException \r\n	 */\r\n	public static void main(String[] args) throws IOException { //nMax = 89435099\r\n		// TODO Auto-generated method stub\r\n		\r\n		System.out.print("Entrez la limite supérieure: ");\r\n		\r\n		int n = StdInput.readlnInt();\r\n		boolean tab[] = crible(n).clone();\r\n		\r\n		System.out.println();\r\n		System.out.print("Liste des nombres premiers de 0 à "   n   " : ");\r\n		\r\n		for (int j = 2;j < tab.length;j++)\r\n			if (tab[j])\r\n				System.out.print(j   " ");\r\n	}\r\n	\r\n	/**\r\n	 * Calcule les nombres premiers parmi les n premiers entiers avec la méthode du crible d''Eratosthène.\r\n	 * @param n nombre d''entiers dans lesquels rechercher.\r\n	 * @return un tableau de booléens dont les indices des éléments à VRAI correspondent aux nb premiers.\r\n	 */\r\n	public static boolean[] crible(int n)\r\n	{\r\n		boolean tab[] = new boolean [n 1];\r\n		\r\n		tab[0] = false;\r\n		tab[1] = false;\r\n		\r\n		for (int i = 2;i <= n;i++)\r\n			tab[i] = true;\r\n		\r\n		int nMax = (int) Math.sqrt(n);\r\n		\r\n		for (int i = 2;i <= nMax;i++)\r\n			if (tab[i])\r\n				for (int j = 2*i;j <= n;j  = i)\r\n					if (tab[j])\r\n						tab[j] = false;\r\n		\r\n		return tab;\r\n	}\r\n}'),
(1, 5, 'TP4_Ex1_OpeTab', '', 'import java.io.IOException;\r\nimport java.util.Random;\r\n\r\n/**\r\n* TP4_Ex1_OpeTab\r\n* opérations de manipulation sur un tableau d’entiers 1D\r\n* @author J.BUILS\r\n* @version 11.12.08\r\n*/\r\n\r\npublic class OpeTab {\r\n\r\n	/**\r\n	 * Permet l''affichage du menu pour utiliser les fonctions ci-dessous\r\n	 * @param args\r\n	 * @throws IOException \r\n	 * @throws InterruptedException \r\n	 */\r\n	public static void main(String[] args) throws IOException {\r\n		// TODO Auto-generated method stub\r\n		\r\n		System.out.println("TP4 Ex1 : opérations sur tableau 1D");\r\n		System.out.println("J.BUILS 08/12/11");\r\n		System.out.println("-----------------------------------");\r\n\r\n		System.out.print("Combien d''éléments souhaitez-vous dans votre tableau ? ");\r\n		int nbCases = StdInput.readlnInt();\r\n		int tab[] = new int [nbCases];\r\n		\r\n		int choix;\r\n		\r\n		do\r\n		{\r\n			System.out.println();\r\n			System.out.println("*** MENU FONCTIONS TABLEAU ***");\r\n			System.out.println("1.  Afficher le tableau.");\r\n			System.out.println("2.  Initialiser avec des valeurs aléatoires [0 100].");\r\n			System.out.println("3.  Sommer les éléments du tableau.");\r\n			System.out.println("4.  Obtenir la moyenne des éléments du tableau.");\r\n			System.out.println("5.  Rechercher un élément dans le tableau.");\r\n			System.out.println("6.  Obtenir la valeur minimale des éléments du tableau.");\r\n			System.out.println("7.  Obtenir la valeur maximale des éléments du tableau.");\r\n			System.out.println("8.  Trier le tableau dans l''ordre croissant.");\r\n			System.out.println("9.  Trier le tableau dans l''ordre décroissant.");\r\n			System.out.println("0.  Sortir du programme.");\r\n			System.out.println();\r\n			System.out.print("Entrez votre choix : ");\r\n		\r\n			choix = StdInput.readlnInt();\r\n		\r\n			switch (choix)\r\n			{\r\n				case 0:\r\n					System.out.println();\r\n					System.out.print("-> Arrêt du programme");\r\n				break;\r\n					\r\n				case 1:\r\n					System.out.println();\r\n					System.out.print("-> Affichage du tableau : ");\r\n					afficherTab(tab);\r\n				break;\r\n				\r\n				case 2:\r\n					initTab(tab);\r\n					System.out.println();\r\n					System.out.println("-> Tableau initialisé.");\r\n				break;\r\n				\r\n				case 3:\r\n					System.out.println();\r\n					System.out.println("-> Somme des éléments du tableau : "   sommeTab(tab));\r\n				break;\r\n				\r\n				case 4:\r\n					System.out.println();\r\n					System.out.println("-> Moyenne des éléments du tableau : "   moyTab(tab));\r\n				break;\r\n				\r\n				case 5:\r\n					System.out.println();\r\n					System.out.print("Entrez l''élément à rechercher : ");\r\n					\r\n					int res = rechTab(StdInput.readlnInt(), tab);\r\n					\r\n					System.out.println();\r\n					System.out.println(res != -1 ? "-> La première position de l''élément est : "   res : "-> L''élément ne se trouve pas dans le tableau");\r\n				break;\r\n				\r\n				case 6:\r\n					System.out.println();\r\n					System.out.println("-> Valeur mini des éléments du tableau : "   minTab(tab));\r\n				break;\r\n				\r\n				case 7:\r\n					System.out.println();\r\n					System.out.println("-> Valeur maxi des éléments du tableau : "   maxTab(tab));\r\n				break;\r\n				\r\n				case 8:\r\n					triCrTab(tab);\r\n					System.out.println();\r\n					System.out.println("-> Tableau trié par ordre croissant.");\r\n				break;\r\n				\r\n				case 9:\r\n					triDeTab(tab);\r\n					System.out.println();\r\n					System.out.println("-> Tableau trié par ordre décroissant.");\r\n				break;\r\n			\r\n				default:\r\n					System.out.println("Choix inexistant!");\r\n			}			\r\n		}while(choix != 0);\r\n\r\n	}\r\n\r\n	/**\r\n	* Affiche un tableau d’entiers sur 1 ligne.\r\n	* @param tab le tableau qu''on affiche\r\n	*/\r\n	public static void afficherTab(int tab[])\r\n	{\r\n		for (int i = 0;i < tab.length;i++)\r\n			System.out.print(tab[i]   " ");\r\n		System.out.println();\r\n	}\r\n	\r\n	/**\r\n	* Initialise un tableau avec des entiers aléatoires de 0 à 100.\r\n	* @param tab le tableau sur lequel on travaille\r\n	*/\r\n	public static void initTab(int tab[])\r\n	{\r\n		Random rand = new Random();\r\n		\r\n		for (int i = 0;i < tab.length;i++)\r\n			tab[i] = rand.nextInt(100);\r\n	}\r\n	\r\n	/**\r\n	* Renvoie la somme des éléments d''un tableau d’entiers.\r\n	* @param tab le tableau dont on veut la somme.\r\n	* @return la somme des éléments de tab\r\n	*/\r\n	public static double sommeTab(int tab[])\r\n	{\r\n		double somme = 0;\r\n		\r\n		for (int i = 0;i < tab.length;i++)\r\n			somme  = tab[i];\r\n		\r\n		return somme;\r\n	}\r\n	\r\n	/**\r\n	* Renvoie la moyenne des éléments d''un tableau d’entiers.\r\n	* @param tab le tableau dont on veut la moyenne.\r\n	* @return la moyenne des éléments de tab\r\n	*/\r\n	public static double moyTab(int tab[])\r\n	{	\r\n		return sommeTab(tab)/tab.length;\r\n	}\r\n	\r\n	/**\r\n	* Renvoie la première position d''un élément s''il est présent dans un tableau d’entiers ou -1 si ce n''est pas le cas.\r\n	* @param elem l''élément à rechercher.\r\n	* @param tab le tableau dans lequel on recherche.\r\n	* @return la première position d''elem s''il est présent dans tab ou -1 si ce n''est pas le cas.\r\n	*/\r\n	public static int rechTab(int elem, int tab[])\r\n	{	\r\n		for (int i = 0;i < tab.length;i++)\r\n			if (tab[i] == elem)\r\n				return i;\r\n		\r\n		return -1;\r\n	}\r\n	\r\n	/**\r\n	* Renvoie la valeur mini des éléments d''un tableau d’entiers.\r\n	* @param tab le tableau dans lequel on recherche.\r\n	* @return la valeur mini des éléments de tab.\r\n	*/\r\n	public static int minTab(int tab[])\r\n	{\r\n		int min = tab[0];\r\n		for (int i = 1;i < tab.length;i++)\r\n			if (tab[i] < min)\r\n				min = tab[i];\r\n		\r\n		return min;\r\n	}\r\n	\r\n	/**\r\n	* Renvoie la valeur maxi des éléments d''un tableau d’entiers.\r\n	* @param tab le tableau dans lequel on recherche.\r\n	* @return la valeur maxi des éléments de tab.\r\n	*/\r\n	public static int maxTab(int tab[])\r\n	{\r\n		int max = tab[0];\r\n		for (int i = 1;i < tab.length;i++)\r\n			if (tab[i] > max)\r\n				max = tab[i];\r\n		\r\n		return max;\r\n	}\r\n	\r\n	/**\r\n	* Trie un tableau d’entiers par ordre croissant (tri à bulles).\r\n	* @param tab le tableau qu''on doit trier.\r\n	*/\r\n	public static void triCrTab(int tab[])\r\n	{\r\n		int tmp = 0;\r\n		\r\n		for (int i = 1;i < tab.length;i++)\r\n			for (int j = 1;j <= (tab.length - i); j++)\r\n				if (tab[j-1] > tab[j])\r\n				{\r\n					tmp = tab[j];\r\n					tab[j] = tab[j-1];\r\n					tab[j-1] = tmp;\r\n				}\r\n	}\r\n	\r\n	/**\r\n	* Trie un tableau d’entiers par ordre décroissant (tri par insertion).\r\n	* @param tab le tableau qu''on doit trier.\r\n	*/\r\n	public static void triDeTab(int tab[])\r\n	{\r\n		for(int i = 1;i < tab.length;i++)\r\n		{\r\n			int tmp = tab[i], cpt=i-1;\r\n			boolean marqueur;\r\n			\r\n			do\r\n			{\r\n				marqueur = false;\r\n				\r\n				if (tab[cpt] < tmp)\r\n				{\r\n					tab[cpt 1] = tab[cpt];\r\n					cpt--;\r\n					marqueur = true;\r\n				}\r\n				\r\n				if (cpt < 0)\r\n					marqueur = false;\r\n				\r\n			}while(marqueur);\r\n			\r\n			tab[cpt 1] = tmp;\r\n		}\r\n	}\r\n}');

-- --------------------------------------------------------

--
-- Structure de la table `prog_structure`
--

CREATE TABLE IF NOT EXISTS `youbiweb_prog_structure` (
  `langId` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `ident` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prog_structure`
--

INSERT INTO `youbiweb_prog_structure` (`langId`, `nom`, `ident`) VALUES
(1, 'Java', 'java');

-- --------------------------------------------------------

--
-- Structure de la table `smileys`
--

CREATE TABLE IF NOT EXISTS `youbiweb_smileys` (
  `id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `src` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `smileys`
--

INSERT INTO `youbiweb_smileys` (`id`, `code`, `src`) VALUES
(1, ':ange:', 'images/smileys/ange.gif'),
(2, ':D', 'images/smileys/biggrin.gif'),
(3, ':!:', 'images/smileys/exclam.gif'),
(4, ':fleche:', 'images/smileys/fleche.gif'),
(5, ':fou:', 'images/smileys/fou.gif'),
(6, ':?:', 'images/smileys/interro.gif'),
(7, ':jap:', 'images/smileys/jap.gif'),
(8, ':love:', 'images/smileys/love.gif'),
(9, ':ouch:', 'images/smileys/ouch.gif'),
(10, ':pt1cable:', 'images/smileys/pt1cable.gif'),
(11, ':rasta:', 'images/smileys/rasta.gif'),
(12, ':sarcastic:', 'images/smileys/sarcastic.gif'),
(13, ':)', 'images/smileys/smile.gif'),
(14, ':''(', 'images/smileys/sweat.gif'),
(15, ':whistle:', 'images/smileys/whistle.gif');
