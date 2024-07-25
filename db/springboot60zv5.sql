/*
 Navicat Premium Data Transfer

 Source Server         : zs_all
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : springboot60zv5

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 07/11/2022 13:08:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bozhu
-- ----------------------------
DROP TABLE IF EXISTS `bozhu`;
CREATE TABLE `bozhu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '创建时间',
  `bozhuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博主账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `bozhuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博主姓名',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` int NULL DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `bozhuzhanghao`(`bozhuzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615810580607 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '博主' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bozhu
-- ----------------------------
INSERT INTO `bozhu` VALUES (11, '2021-03-15 19:55:17', '博主1', '123456', '博主姓名1', 'http://localhost:8080/springboot60zv5/upload/bozhu_touxiang1.jpg', '男', 1, '13823888881', '773890001@qq.com');
INSERT INTO `bozhu` VALUES (12, '2021-03-15 19:55:17', '博主2', '123456', '博主姓名2', 'http://localhost:8080/springboot60zv5/upload/bozhu_touxiang2.jpg', '男', 2, '13823888882', '773890002@qq.com');
INSERT INTO `bozhu` VALUES (13, '2021-03-15 19:55:17', '博主3', '123456', '博主姓名3', 'http://localhost:8080/springboot60zv5/upload/bozhu_touxiang3.jpg', '男', 3, '13823888883', '773890003@qq.com');
INSERT INTO `bozhu` VALUES (14, '2021-03-15 19:55:17', '博主4', '123456', '博主姓名4', 'http://localhost:8080/springboot60zv5/upload/bozhu_touxiang4.jpg', '男', 4, '13823888884', '773890004@qq.com');
INSERT INTO `bozhu` VALUES (15, '2021-03-15 19:55:17', '博主5', '123456', '博主姓名5', 'http://localhost:8080/springboot60zv5/upload/bozhu_touxiang5.jpg', '男', 5, '13823888885', '773890005@qq.com');
INSERT INTO `bozhu` VALUES (16, '2021-03-15 19:55:17', '博主6', '123456', '博主姓名6', 'http://localhost:8080/springboot60zv5/upload/bozhu_touxiang6.jpg', '男', 6, '13823888886', '773890006@qq.com');
INSERT INTO `bozhu` VALUES (1615810391925, '2021-03-15 20:13:11', '1', '1', '陈一', 'http://localhost:8080/springboot60zv5/upload/1615810405246.jpg', '女', 22, '12345678978', '123@qq.com');
INSERT INTO `bozhu` VALUES (1615810580606, '2021-03-15 20:16:20', '2', '2', '王明', 'http://localhost:8080/springboot60zv5/upload/1615810595054.jpg', '男', 25, '12345645612', '159@qq.com');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615810724029 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线客服' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (51, '2021-03-15 19:55:17', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (52, '2021-03-15 19:55:17', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (53, '2021-03-15 19:55:17', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (54, '2021-03-15 19:55:17', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (55, '2021-03-15 19:55:17', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (56, '2021-03-15 19:55:17', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (1615810114904, '2021-03-15 20:08:34', 1615809946983, NULL, '可以与管理员进行实时聊天沟通', NULL, 0);
INSERT INTO `chat` VALUES (1615810158625, '2021-03-15 20:09:18', 1615809946983, 1, NULL, '1', NULL);
INSERT INTO `chat` VALUES (1615810685689, '2021-03-15 20:18:05', 1615810580606, NULL, '可以与管理员进行实时沟通', NULL, 0);
INSERT INTO `chat` VALUES (1615810724028, '2021-03-15 20:18:44', 1615810580606, 1, NULL, '1', NULL);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springboot60zv5/upload/1615809593916.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springboot60zv5/upload/1615810325069.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springboot60zv5/upload/picture3.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for discusswenzhangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusswenzhangxinxi`;
CREATE TABLE `discusswenzhangxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615810665573 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusswenzhangxinxi
-- ----------------------------
INSERT INTO `discusswenzhangxinxi` VALUES (81, '2021-03-15 19:55:17', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusswenzhangxinxi` VALUES (82, '2021-03-15 19:55:17', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusswenzhangxinxi` VALUES (83, '2021-03-15 19:55:17', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusswenzhangxinxi` VALUES (84, '2021-03-15 19:55:17', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusswenzhangxinxi` VALUES (85, '2021-03-15 19:55:17', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusswenzhangxinxi` VALUES (86, '2021-03-15 19:55:17', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discusswenzhangxinxi` VALUES (1615810093599, '2021-03-15 20:08:12', 1615809871262, 1615809946983, '2', '感情真挚，很不错的文章', '多谢捧场');
INSERT INTO `discusswenzhangxinxi` VALUES (1615810665572, '2021-03-15 20:17:45', 1615810493025, 1615810580606, '2', '写得不错，情感真挚流露', '多谢捧场');

-- ----------------------------
-- Table structure for jubaotousu
-- ----------------------------
DROP TABLE IF EXISTS `jubaotousu`;
CREATE TABLE `jubaotousu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `leixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `jubaoneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '举报内容',
  `jubaoshijian` date NULL DEFAULT NULL COMMENT '举报时间',
  `bozhuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '博主账号',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615810544100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '举报投诉' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jubaotousu
-- ----------------------------
INSERT INTO `jubaotousu` VALUES (41, '2021-03-15 19:55:17', '标题1', '类型1', 'http://localhost:8080/springboot60zv5/upload/jubaotousu_tupian1.jpg', '举报内容1', '2021-03-15', '博主账号1', '手机1', '是', '');
INSERT INTO `jubaotousu` VALUES (42, '2021-03-15 19:55:17', '标题2', '类型2', 'http://localhost:8080/springboot60zv5/upload/1615809561966.jpg', '举报内容2', '2021-03-15', '博主账号2', '手机2', '是', '');
INSERT INTO `jubaotousu` VALUES (43, '2021-03-15 19:55:17', '标题3', '类型3', 'http://localhost:8080/springboot60zv5/upload/jubaotousu_tupian3.jpg', '举报内容3', '2021-03-15', '博主账号3', '手机3', '是', '');
INSERT INTO `jubaotousu` VALUES (44, '2021-03-15 19:55:17', '标题4', '类型4', 'http://localhost:8080/springboot60zv5/upload/jubaotousu_tupian4.jpg', '举报内容4', '2021-03-15', '博主账号4', '手机4', '是', '');
INSERT INTO `jubaotousu` VALUES (45, '2021-03-15 19:55:17', '标题5', '类型5', 'http://localhost:8080/springboot60zv5/upload/jubaotousu_tupian5.jpg', '举报内容5', '2021-03-15', '博主账号5', '手机5', '是', '');
INSERT INTO `jubaotousu` VALUES (46, '2021-03-15 19:55:17', '标题6', '类型6', 'http://localhost:8080/springboot60zv5/upload/1615809576579.jpg', '举报内容6', '2021-03-15', '博主账号6', '手机6', '是', '');
INSERT INTO `jubaotousu` VALUES (1615810544099, '2021-03-15 20:15:43', '举报违规内容', '不良言论', 'http://localhost:8080/springboot60zv5/upload/1615810518881.jpg', '博主账号为UFGRD的博主发布不良言论的博客文章', '2021-03-15', '1', '12345678978', '是', 'ok');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615810366418 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (71, '2021-03-15 19:55:17', '十三届全国人大五次会议', '对十三届全国人大五次会议第5997号建议的答复', 'http://localhost:8080/springboot60zv5/upload/1667794092730.jpg', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">我部坚决落实党中央、国务院有关决策部署，积极支持各地建设高标准农田。2022年，安排山东省农田建设补助资金52.8亿元，较2021年增加6.2亿元，增长13.3%。财政部在测算分配2022年农田建设补助资金时，已按照《农田建设补助资金管理办法》有关规定，对山东省予以倾斜支持。根据资金管理办法，财政部将农田建设补助资金下达至省级财政部门，山东省可根据相关规划要求、结合当地实际等，统筹安排包括中央财政农田建设补助资金在内的多渠道资金，支持德州等地开展高标准农田建设。</span></p>');
INSERT INTO `news` VALUES (72, '2021-03-15 19:55:17', '中华人民共和国农业农村部公告', '批准山东齐发药业有限公司等3家单位申报的硫酸新霉素等2种兽药产品变更注册，自发布之日起执行。', 'http://localhost:8080/springboot60zv5/upload/news_picture2.jpg', '<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">根据《兽药管理条例》和《兽药注册办法》规定，经审查，批准哈药集团生物疫苗有限公司等</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">19</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">家单位申报的猪流感二价灭活疫苗（</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">H1N1 HN</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">株</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">+H3N2 HLJ</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">株）等</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">10</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">种兽药产品为新兽药，核发《新兽药注册证书》，发布产品工艺规程、质量标准、说明书和标签，自发布之日起执行。</span></p>');
INSERT INTO `news` VALUES (73, '2021-03-15 19:55:17', '公布2022年国家乡村振兴示范县', '农业农村部 国家乡村振兴局关于公布2022年国家乡村振兴示范县创建名单的通知', 'http://localhost:8080/springboot60zv5/upload/1667794182416.jpg', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">为贯彻落实《中共中央、国务院关于做好2022年全面推进乡村振兴重点工作的意见》部署，农业农村部、国家乡村振兴局开展国家乡村振兴示范县创建申报评审工作，经县级申请、市级遴选、省级审核推荐，并经专家评审和社会公示，同意北京市大兴区等100个单位为2022年国家乡村振兴示范县（以下简称“示范县”）创建单位，现予公布。</span></p>');
INSERT INTO `news` VALUES (74, '2021-03-15 19:55:17', '对第BH035号建议的答复', '对十三届全国人大代表第BH035号建议的答复', 'http://localhost:8080/springboot60zv5/upload/1667794286080.jpg', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">开展乡村振兴示范创建是2022年中央一号文件作出的部署，是全面推进乡村振兴的重要抓手。各级农业农村部门、乡村振兴局要主动担当作为，加强统筹协调，加大工作力度，扎实抓好示范创建工作。一要强化组织领导推动。省级农业农村部门、乡村振兴局要建立健全协同推进机制，加强协作，形成合力。示范县创建单位党委政府要承担主体责任，细化创建方案，实化创建措施，强化责任落实，确保各项创建任务落地见效。二要聚焦重点领域带动。坚持为农民而兴，把握好时度效，着力在乡村发展、乡村建设、乡村治理等重点领域寻求突破，形成重点突破带动整体提升的格局，各有侧重地探索不同类型地区乡村振兴路径模式。</span></p>');
INSERT INTO `news` VALUES (75, '2021-03-15 19:55:17', '中华人民共和国农业农村部公告', '中华人民共和国农业农村部公告 第611号', 'http://localhost:8080/springboot60zv5/upload/1667794322363.jpg', '<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">根据《兽药管理条例》，我部组织制定了复方麻黄散中非法添加喹烯酮、</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">恩诺沙星注射液中非法添加呋塞米、硫酸新霉素可溶性粉中非法添加苯并咪唑和大环内酯类抗寄生</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">虫药物等</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">3</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">项</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">检查方法，现予发布，自发布之日起执行。</span></p>');
INSERT INTO `news` VALUES (76, '2021-03-15 19:55:17', '第BH035号建议的答复', '对十三届全国人大代表第BH035号建议的答复', 'http://localhost:8080/springboot60zv5/upload/1667794420233.jpg', '<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">部积极支持种业企业兼并重组、做大做强。中央种业振兴行动方案以及《关于加快推进现代农作物种业发展的意见》等多个文件中都明确了企业创新主体地位要求，推动种业企业兼并重组，把鼓励企业兼并重组作为重点任务加以布局推进。</span><strong>	</strong><strong style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">一是</strong>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">构建</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">国家种业</span>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">企业阵型。</span></p>');
INSERT INTO `news` VALUES (1615810366417, '2021-03-15 20:12:45', '关于舆情监控系统使用通知', '规范使用舆情监控系统', 'http://localhost:8080/springboot60zv5/upload/1615810344631.jpg', '<p>不得发布不良言论的帖子文章</p><p><img src=\"http://localhost:8080/springboot60zv5/upload/1615810363830.jpg\"></p>');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615810646850 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1615810646849, '2021-03-15 20:17:26', 1615810580606, 1615810493025, 'wenzhangxinxi', '关于一个电影的日记', 'http://localhost:8080/springboot60zv5/upload/1615810470786.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, '博主1', 'bozhu', '博主', '9pkqmr940jsifviwtjljgqtid0uuuk4t', '2021-03-15 19:56:13', '2022-11-06 18:49:45');
INSERT INTO `token` VALUES (2, 1, 'abo', 'users', '管理员', 'sg404kgeh479c29mb6haxq9cfcct6sqd', '2021-03-15 19:56:45', '2022-11-07 14:00:47');
INSERT INTO `token` VALUES (3, 1615809794300, '1', 'bozhu', '博主', 'x2il9laxqr5hyvq9pxvtalfm90ofq38u', '2021-03-15 20:03:19', '2021-03-15 21:09:26');
INSERT INTO `token` VALUES (4, 1615809946983, '2', 'bozhu', '博主', 'hh6fi8j7son5fnqu3itadcylizjca2uh', '2021-03-15 20:05:52', '2021-03-15 21:09:57');
INSERT INTO `token` VALUES (5, 1615810391925, '1', 'bozhu', '博主', '0l36bsrk1q3yi28sl71japth8o5yczu2', '2021-03-15 20:13:17', '2022-11-07 12:58:07');
INSERT INTO `token` VALUES (6, 1615810580606, '2', 'bozhu', '博主', 'bfg0335nnzq48p88ka2p3kd8jgcqwnp4', '2021-03-15 20:16:25', '2021-03-15 21:16:26');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2021-03-15 19:55:17');

-- ----------------------------
-- Table structure for wenzhangfenlei
-- ----------------------------
DROP TABLE IF EXISTS `wenzhangfenlei`;
CREATE TABLE `wenzhangfenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '创建时间',
  `fenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `fenlei`(`fenlei`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615810309446 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wenzhangfenlei
-- ----------------------------
INSERT INTO `wenzhangfenlei` VALUES (21, '2021-03-15 19:55:17', '热帖榜');
INSERT INTO `wenzhangfenlei` VALUES (22, '2021-03-15 19:55:17', '新帖榜');
INSERT INTO `wenzhangfenlei` VALUES (23, '2021-03-15 19:55:17', '精贴榜');

-- ----------------------------
-- Table structure for wenzhangxinxi
-- ----------------------------
DROP TABLE IF EXISTS `wenzhangxinxi`;
CREATE TABLE `wenzhangxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `fenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `wenzhangneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
  `bozhuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '博主账号',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1615810493026 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wenzhangxinxi
-- ----------------------------
INSERT INTO `wenzhangxinxi` VALUES (31, '2021-03-15 19:55:17', '2022国际绿博会', '热帖榜', 'http://localhost:8080/springboot60zv5/upload/1615809478115.jpg', '<p class=\"ql-align-justify\">6日，距离2022中国（黑龙江）国际绿色食品产业博览会和黑龙江大米节召开倒计时4天，记者从组委会获悉，开幕式线下主会场已启动搭建，各项筹备工作有序进行。&nbsp;</p><p class=\"ql-align-justify\">2022国际绿博会和黑龙江大米节开幕式将以“线上线下相结合”形式于10日上午召开，线下主会场设在哈尔滨国际会展体育中心华旗礼堂。活动现场主要包括嘉宾现场致辞、线上致辞、线上巡馆、“黑土优品”品牌推介、大米品评品鉴活动颁奖及农业和农产品重点项目签约等环节。届时，将有来自国内外2000余名嘉宾线上参会。&nbsp;</p><p><br></p>', '2021-03-15', '博主账号1', '邮箱5', '2022-11-07 11:52:55', 7);
INSERT INTO `wenzhangxinxi` VALUES (32, '2021-03-15 19:55:17', '2022中国农业科技', '新帖榜', 'http://localhost:8080/springboot60zv5/upload/1667792864977.jpg', '<p class=\"ql-align-justify\">近日，2022中国农业科技成果转化高峰论坛暨中国技术市场协会金桥奖第三届三农科技服务金桥奖表彰颁奖大会在京召开。</p><p class=\"ql-align-justify\">围绕“用好盐碱耕地 端牢中国饭碗”的主题，中国科学院原副院长杨柏龄，科学技术部原副部长刘燕华，中国人民大学中国乡村振兴研究院执行院长唐园结，中国农业科学院农业资源与农业区划研究所盐碱地首席科学家李玉义和河北工程大学材料学院实验中心主任康莲薇，分别作专题报告。</p>', '2022-07-14', '博主账号2', '邮箱2', '2022-11-07 11:53:06', 6);
INSERT INTO `wenzhangxinxi` VALUES (33, '2021-03-15 19:55:17', '农业高峰论坛暴动', '精贴榜', 'http://localhost:8080/springboot60zv5/upload/1667792955750.jpg', '<p class=\"ql-align-justify\">的二十大报告提出“加快建设农业强国”。我国是人口大国、农业大国。从农业大国迈向农业强国，科技创新是关键变量。与会专家指出，我国人多地少，在耕地和水资源有限的情况下，必须提高农业科技水平，破解资源禀赋制约，不断提高土地产出率、劳动生产率和资源利用率。</p><p class=\"ql-align-justify\">刘燕华表示，加快农业关键核心技术攻关，实现农业科技自立自强，关键是适应市场需求，坚持问题导向，进行逆向创新。不断激发广大农业从业人员的组织创新活力，打造政府、市场主体、公益机构等共同参与的农业科技创新平台，促进农业科技成果转移转化，提高农业生产效率。</p>', '2022-09-23', '博主账号3', '邮箱3', '2022-11-07 12:21:02', 8);
INSERT INTO `wenzhangxinxi` VALUES (34, '2021-03-15 19:55:17', '大米节筹备艰巨工作', '热帖榜', 'http://localhost:8080/springboot60zv5/upload/1667793228194.jpg', '<p class=\"ql-align-justify\">共话绿色食品新发展、共谋品牌合作新机遇，共享农业发展新业态……登录国际绿博会官网、下载“易会展”APP、订阅“黑龙江博览”微信视频号等方式,可在线观看开幕盛况。&nbsp;</p><p><br></p>', '2022-11-01', '博主账号4', '邮箱4', '2022-11-07 11:53:27', 8);
INSERT INTO `wenzhangxinxi` VALUES (35, '2021-03-15 19:55:17', '推进稻渔综合种养产业', '热帖榜', 'http://localhost:8080/springboot60zv5/upload/1667793271294.jpg', '<p>各省、自治区、直辖市农业农村（农牧）、渔业厅（局、委），计划单列市渔业主管局，新疆生产建设兵团农业农村局：</p><p>&nbsp;&nbsp;稻渔综合种养是典型的生态循环农业模式。近年来，稻渔综合种养产业快速发展，为保障粮食和水产品供给、促进农民增收和推进乡村振兴作出积极贡献。为全面贯彻落实党中央、国务院有关决策部署和《“十四五”推进农业农村现代化规划》《“十四五”全国渔业发展规划》有关要求，稳步推进稻渔综合种养产业高质量发展，提出如下意见。</p>', '2022-06-09', '博主账号5', '邮箱5', '2022-11-07 11:58:08', 15);
INSERT INTO `wenzhangxinxi` VALUES (36, '2021-03-15 19:55:17', '高质量发展的指导意见', '精贴榜', 'http://localhost:8080/springboot60zv5/upload/1667793350407.jpg', '<p><strong>坚持稳粮兴渔。</strong>牢牢守住保障国家粮食安全底线，坚持耕地粮食生产功能，保持水稻生产主体地位，科学利用稻田水土资源，提高水稻和水产综合生产能力，实现一水两用、一田多收。</p><p><strong>&nbsp;&nbsp;坚持有序发展。</strong>因地制宜、统筹规划、优化布局、分类推进，选择适宜区域发展稻渔综合种养产业。科学引导并充分尊重农民意愿，合理确定发展规模，更加注重发展质量。</p><p><strong>&nbsp;&nbsp;坚持绿色生态。</strong>突出稻渔综合种养产业种养结合、生态循环、绿色低碳特点，减少农药和化肥使用，提高稻米和水产品品质，提升稻田生态环境质量。</p><p><strong>&nbsp;&nbsp;坚持富民增收。</strong>发挥稻渔综合种养比较效益优势，健全联农带农机制，创新利益联结模式，打造全产业链，提高农民收益，调动农民生产积极性。</p>', '2022-07-01', '博主账号6', '邮箱6', '2022-11-07 11:55:05', 10);
INSERT INTO `wenzhangxinxi` VALUES (1615810493025, '2021-03-15 20:14:52', '关于包庇扩大当前农业农村基础设施建设投资的工作方案', '新帖榜', 'http://localhost:8080/springboot60zv5/upload/1667793384013.jpg', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">加强农业农村基础设施建设，是扩大有效投资、稳住经济大盘的重点任务，有利于增强食物保供能力、带动基础产业发展、畅通城乡经济循环，具有长远的重要性和现实的紧迫性。9月21日国务院常务会议审议通过了《关于扩大当前农业农村基础设施建设投资的工作方案》，现印发给你们，请认真贯彻落实。</span></p>', '2022-03-19', '1', '123@qq.com', '2022-11-07 11:56:44', 7);

SET FOREIGN_KEY_CHECKS = 1;
