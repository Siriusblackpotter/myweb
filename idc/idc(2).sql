-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-03-30 02:54:50
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32
SET NAMES UTF8;
DROP DATABASE IF EXISTS idc;
CREATE DATABASE idc CHARSET=UTF8;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idc`
--

-- --------------------------------------------------------

--
-- 表的结构 `advlist`
--
use idc;
CREATE TABLE `advlist` (
  `Tid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `subtitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `advlist`
--

INSERT INTO `advlist` (`Tid`, `title`, `subtitle`) VALUES
(1, '网络基础设施一流', '保证安全可靠的存放环境'),
(2, '网络连通率99.99％', '多线路骨干网接入，网速畅通无阻'),
(3, '网络连接管理', '实时监测带宽使用'),
(4, '流量监视', '提供免费网络流量报告');

-- --------------------------------------------------------

--
-- 表的结构 `indexadv`
--

CREATE TABLE `indexadv` (
  `Tid` int(11) NOT NULL,
  `imgurl` varchar(64) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `subtitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `indexadv`
--

INSERT INTO `indexadv` (`Tid`, `imgurl`, `title`, `subtitle`) VALUES
(1, 'img/index/pro_logo1.png', '高防护品质，多线路选择', '司为用户配备了专业的服务器运维技术人员，7×24小时机房值守及日常维护管理为用户提供从设备、环境到维护的一整套服务，让用户将更多'),
(2, 'img/index/pro_logo1.png', '精选数据中心，7×24小时现场维护', '为您提供定制化托管维护解决方案，满足您不同时期业务发展需求，国内外星级数据中心，拥有完善的后备电源供应、UPS防断电等配套系统，'),
(3, 'img/index/pro_logo1.png', '弹性按需购买，免费提供备案', '使您能够更专注于核心业务的创新。现代互联云服务器目前提供电信、香港、韩国等节点支持，集力满足不同用户的业务需求。'),
(4, 'img/index/pro_logo1.png', '多后缀域名选择，实时注册快速解析', '确保运行稳定可靠，解析即刻生效。永久免费的域名全面保护，保障您的域名隐私、解析安全无忧。');

-- --------------------------------------------------------

--
-- 表的结构 `indeximg`
--

CREATE TABLE `indeximg` (
  `Tid` int(11) NOT NULL,
  `imgurl` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `indeximg`
--

INSERT INTO `indeximg` (`Tid`, `imgurl`, `title`, `subtitle`) VALUES
(1, 'img/index/banner1.jpg', ' 混合云管理平台', '面向企业和IDC行业提供的裸机云化管理解决方案 。围绕裸机资源池、硬件监控、 裸机安装、带外管理、系统迁移、 裸机自服务等功能模块, 构建'),
(2, 'img/index/banner2.jpg', ' 混合云管理平台', '面向企业和IDC行业提供的裸机云化管理解决方案 。围绕裸机资源池、硬件监控、 裸机安装、带外管理、系统迁移、 裸机自服务等功能模块, 构建'),
(3, 'img/index/banner3.jpg', ' 混合云管理平台', '面向企业和IDC行业提供的裸机云化管理解决方案 。围绕裸机资源池、硬件监控、 裸机安装、带外管理、系统迁移、 裸机自服务等功能模块, 构建'),
(4, 'img/index/banner4.jpg', ' 混合云管理平台', '面向企业和IDC行业提供的裸机云化管理解决方案 。围绕裸机资源池、硬件监控、 裸机安装、带外管理、系统迁移、 裸机自服务等功能模块, 构建'),
(5, 'img/index/banner5.jpg', ' 混合云管理平台', '面向企业和IDC行业提供的裸机云化管理解决方案 。围绕裸机资源池、硬件监控、 裸机安装、带外管理、系统迁移、 裸机自服务等功能模块, 构建');

-- --------------------------------------------------------

--
-- 表的结构 `indexpro`
--

CREATE TABLE `indexpro` (
  `Tid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `msg1` varchar(64) DEFAULT NULL,
  `msg2` varchar(64) DEFAULT NULL,
  `msg3` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `indexpro`
--

INSERT INTO `indexpro` (`Tid`, `title`, `msg1`, `msg2`, `msg3`) VALUES
(1, '机柜租用', '智能BGP多线接入', ' 不止于快 更胜于稳', NULL),
(2, '云主机', '用户无需自己购买服务器', ' 根据业务需要，提出硬件配置要求。', NULL),
(3, '主机托管', '智能BGP多线接入', ' 不止于快 更胜于稳', NULL),
(4, '服务器租用', '智能BGP多线接入', ' 不止于快 更胜于稳', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `proaddr`
--

CREATE TABLE `proaddr` (
  `Tid` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `addrimg` varchar(64) DEFAULT NULL,
  `addrTitle` varchar(64) DEFAULT NULL,
  `addrSbutitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `proaddr`
--

INSERT INTO `proaddr` (`Tid`, `pro_id`, `r_id`, `addrimg`, `addrTitle`, `addrSbutitle`) VALUES
(1, 1, 1, 'img/product/addr/1.jpg', '上海自贸区机房', '自贸区机房位于自贸区泰谷路77号乃上海电信投资建设，国家五星级电信机房，总共有40G CHINA169接入.可供对外使用机柜10'),
(2, 1, 2, 'img/product/addr/2.png', '广州电信机房', '广州市电信机房位于荔湾区人民中路246号是一个互联网数据中心，是中国电信互联网数据中心在华南地区的核心,超高速的20Gx2主备双'),
(3, 2, 3, 'img/product/addr/3.jpg', '北京BGP机房', '苏州桥机房位于海淀区苏州桥紫金庄园，机房建筑面积3000平米，地处中关村核心区，是电信通继中关村机房之后位于中关村的又一主力机房'),
(4, 2, 4, 'img/product/addr/4.jpg', '宝山云计算中心', '宝山云计算数据中心位于长江西路101号，由国际商业机器公司（IBM）按国际T3+标准规划、设计，设计运营PUE=1.5；楼层面积'),
(5, 2, 5, 'img/product/addr/5.png', '上海市北BGP', '市北BGP机房位于静安区江场西路387号，于2012年底投入运营,专为ID和EDC客户打造的高标准数据中心大规模数据中心,总面积'),
(6, 2, 6, 'img/product/addr/6.jpg', '华中多线BGP机房', '河南省规模大，设备完善，服务质量更佳的多线民营机房。拥有中国电信、中国联通、中国铁通、中国移动等多线路骨干网接入，总出口40光纤'),
(7, 2, 7, 'img/product/addr/7.jpg', '扬州BGP', '扬州云计算数据中心是苏北地区最具规模的云计算中心，作为江苏五大IDC接入口之一，扬州机房的IDC专网相比传统的城域网服务更加稳定'),
(8, 3, 8, 'img/product/addr/8.jpg', '香港中国', '香港新世界电讯机房位于葵涌禾塘咀街55号世和中心是香港超大型互联网数据中心之一,是目前香港到大陆速度较快、较稳定线路之一。新世界'),
(9, 3, 9, 'img/product/addr/8.jpg', '香港国际', '香港新世界电讯机房位于葵涌禾塘咀街55号世和中心是香港超大型互联网数据中心之一,是目前香港到大陆速度较快、较稳定线路之一。新世界'),
(10, 4, 10, 'img/product/addr/9.jpg', '杭州仓前机房', '浙江杭州双线机房数据中心坐落于素有\"天堂硅谷\"之美誉的浙江省杭州市余杭创新基地龙潭路2号，地处杭州未来科技城，杭州未来科技城（海'),
(11, 5, 11, 'img/product/addr/10.jpg', '宁波三线机房', '云数据中心位于宁波国家高新区凌云路1177号，宁波电信IDC数据中心INTERNET目前出口带宽为640G，城域网INTERNE'),
(12, 6, 12, 'img/product/addr/10.jpg', '宁波高防BGP', '云数据中心位于宁波国家高新区凌云路1177号，宁波电信IDC数据中心INTERNET目前出口带宽为640G，城域网INTERNE');

-- --------------------------------------------------------

--
-- 表的结构 `proedition`
--

CREATE TABLE `proedition` (
  `Tid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `proedition` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `proedition`
--

INSERT INTO `proedition` (`Tid`, `eid`, `proedition`) VALUES
(1, 0, '请选择操作系统版本'),
(2, 1, 'windows server 2003 32bit'),
(3, 1, 'windows server 2003 64bit r2'),
(4, 1, 'windows server 2008 32bit'),
(5, 1, 'windows server 2008 64bit r2'),
(6, 1, 'windows server 2012 64bit r2'),
(7, 2, 'ubuntu 12.04 server 64bit'),
(8, 2, 'ubuntu 11.10 server 64bit'),
(9, 2, 'ubuntu 12.10 server 64bit'),
(10, 2, 'ubuntu 13.04 server 64bit'),
(11, 2, 'ubuntu 14.04 server 64bit'),
(12, 2, 'ubuntu 15.10 server 64bit'),
(13, 3, 'redhat 4.8  32bit'),
(14, 3, 'redhat 5.5  64bit'),
(15, 3, 'redhat 5.8  64bit'),
(16, 3, 'redhat 6.2  32bit'),
(17, 3, 'redhat 6.2  64bit'),
(18, 3, 'redhat 6.4  64bit'),
(19, 3, 'redhat 7.0  64bit'),
(20, 3, 'centos 5.9  32bit'),
(21, 3, 'centos 5.9  64bit'),
(22, 3, 'centos 6.1  32bit'),
(23, 3, 'centos 6.1  64bit'),
(24, 3, 'centos 6.2  32bit'),
(25, 3, 'centos 6.2  64bit'),
(26, 3, 'centos 6.3  32bit'),
(27, 3, 'centos 6.3  64bit'),
(28, 3, 'centos 6.4  32bit'),
(29, 3, 'centos 6.4  64bit'),
(30, 3, 'centos 6.5  32bit'),
(31, 3, 'centos 6.5  64bit'),
(32, 4, 'FreeBSD 8.3 RELEASE 32bit'),
(33, 4, 'FreeBSD 8.3 RELEASE 64bit'),
(34, 5, 'Fedora-18 64bit');

-- --------------------------------------------------------

--
-- 表的结构 `proindex`
--

CREATE TABLE `proindex` (
  `Tid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `subtitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `proindex`
--

INSERT INTO `proindex` (`Tid`, `family_id`, `title`, `subtitle`) VALUES
(1, 1, '付费选择多样', '用户无需自己购买服务器，根据业务需要，提出硬件配置要求采用灵活的付款方式（月付、季付、半年付、年付）'),
(2, 1, '付费选择多样', '用户无需自己购买服务器，根据业务需要，提出硬件配置要求采用灵活的付款方式（月付、季付、半年付、年付）'),
(3, 1, '付费选择多样', '用户无需自己购买服务器，根据业务需要，提出硬件配置要求采用灵活的付款方式（月付、季付、半年付、年付）');

-- --------------------------------------------------------

--
-- 表的结构 `proinformation`
--

CREATE TABLE `proinformation` (
  `Tid` int(11) NOT NULL,
  `line` varchar(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `power` varchar(64) DEFAULT NULL,
  `height` varchar(64) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `bandwidth` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `system` varchar(64) DEFAULT NULL,
  `ddos` varchar(64) DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `count` varchar(64) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `userphone` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `proinformation`
--

INSERT INTO `proinformation` (`Tid`, `line`, `address`, `power`, `height`, `ip`, `bandwidth`, `interface`, `system`, `ddos`, `time`, `count`, `price`, `username`, `userphone`) VALUES
(1, '电信', '上海自贸区', '单电源', '1U', '1', '10', '1个10/100/1000Mbps自适应网卡', '无', '无', '1', '1', 3650, 'zhang', '2147483647'),
(2, '电信', '上海自贸区', '单电源', '1U', '1', '10', '1个10/100/1000Mbps自适应网卡', '无', '无', '1', '1', 3650, 'zhang', '2147483647'),
(3, '电信', '上海自贸区', '单电源', '1U', '1', '10', '1个10/100/1000Mbps自适应网卡', '无', '无', '1', '1', 3650, 'zhang', '2147483647'),
(4, '电信', '上海自贸区', '单电源', '1U', '1', '10', '1个10/100/1000Mbps自适应网卡', '无', '无', '1', '1', 3650, 'zhang', '2147483647'),
(5, '电信', '上海自贸区', '单电源', '1U', '1', '10', '1个10/100/1000Mbps自适应网卡', '无', '无', '1', '1', 3650, 'zhang', '15099999999'),
(6, '电信', '上海自贸区', '单电源', '1U', '1', '10', '1个10/100/1000Mbps自适应网卡', '无', '无', '1', '1', 3650, 'zhang', '15099999999');

-- --------------------------------------------------------

--
-- 表的结构 `prointroduce`
--

CREATE TABLE `prointroduce` (
  `Tid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `addrtitle` varchar(64) DEFAULT NULL,
  `addrsbutitle` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `prointroduce`
--

INSERT INTO `prointroduce` (`Tid`, `family_id`, `addrtitle`, `addrsbutitle`) VALUES
(1, 1, '服务器租用', '用户无需自己购买服务器，根据业务需要，提出硬件配置要求；采用灵活的付款方式（月付、季付、半年付、年付），租用美橙互联的服务器和网络带宽；可自行安装操作系统及相应软件，完全自主管理；实现低成本的共享或公网数据中心高速带宽的专属高性能服务器有效解决用户自行维护服务器的烦恼。');

-- --------------------------------------------------------

--
-- 表的结构 `proline`
--

CREATE TABLE `proline` (
  `Tid` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `proLine` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `proline`
--

INSERT INTO `proline` (`Tid`, `pro_id`, `r_id`, `proLine`) VALUES
(1, 1, 1, '电信'),
(2, 2, 3, 'BGP'),
(3, 3, 8, '香港'),
(4, 4, 10, '双线'),
(5, 5, 11, '三线'),
(6, 6, 12, '宁波高防BGP');

-- --------------------------------------------------------

--
-- 表的结构 `prolist`
--

CREATE TABLE `prolist` (
  `Tid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `Title` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `prolist`
--

INSERT INTO `prolist` (`Tid`, `family_id`, `Title`) VALUES
(1, 1, '主机托管'),
(2, 2, '服务器租用'),
(3, 3, '机柜租用'),
(4, 4, '云主机');

-- --------------------------------------------------------

--
-- 表的结构 `proroom`
--

CREATE TABLE `proroom` (
  `Tid` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `roomTitle` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `proroom`
--

INSERT INTO `proroom` (`Tid`, `pro_id`, `r_id`, `roomTitle`) VALUES
(1, 1, 1, '上海自贸区'),
(2, 1, 2, '广州电信'),
(3, 2, 3, '北京BGP'),
(4, 2, 4, '宝山云计算中心'),
(5, 2, 5, '上海市北BGP'),
(6, 2, 6, '华中多线BGP机房'),
(7, 2, 7, '扬州BGP'),
(8, 3, 8, '香港中国'),
(9, 3, 9, '香港国际'),
(10, 4, 10, '杭州仓前机房'),
(11, 5, 11, '宁波三线机房'),
(12, 6, 12, '宁波高防BGP');

-- --------------------------------------------------------

--
-- 表的结构 `prosystem`
--

CREATE TABLE `prosystem` (
  `Tid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `prosystem` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `prosystem`
--

INSERT INTO `prosystem` (`Tid`, `eid`, `prosystem`) VALUES
(1, 0, '请选择系统类别'),
(2, 1, 'Windows'),
(3, 2, 'Ubuntu'),
(4, 3, 'linux'),
(5, 4, 'FreeBSD'),
(6, 5, 'fedora');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advlist`
--
ALTER TABLE `advlist`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `indexadv`
--
ALTER TABLE `indexadv`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `indeximg`
--
ALTER TABLE `indeximg`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `indexpro`
--
ALTER TABLE `indexpro`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `proaddr`
--
ALTER TABLE `proaddr`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `proedition`
--
ALTER TABLE `proedition`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `proindex`
--
ALTER TABLE `proindex`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `proinformation`
--
ALTER TABLE `proinformation`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `prointroduce`
--
ALTER TABLE `prointroduce`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `proline`
--
ALTER TABLE `proline`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `prolist`
--
ALTER TABLE `prolist`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `proroom`
--
ALTER TABLE `proroom`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `prosystem`
--
ALTER TABLE `prosystem`
  ADD PRIMARY KEY (`Tid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `advlist`
--
ALTER TABLE `advlist`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `indexadv`
--
ALTER TABLE `indexadv`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `indeximg`
--
ALTER TABLE `indeximg`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `indexpro`
--
ALTER TABLE `indexpro`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `proaddr`
--
ALTER TABLE `proaddr`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `proedition`
--
ALTER TABLE `proedition`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `proindex`
--
ALTER TABLE `proindex`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `proinformation`
--
ALTER TABLE `proinformation`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `prointroduce`
--
ALTER TABLE `prointroduce`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `proline`
--
ALTER TABLE `proline`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `prolist`
--
ALTER TABLE `prolist`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `proroom`
--
ALTER TABLE `proroom`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `prosystem`
--
ALTER TABLE `prosystem`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
