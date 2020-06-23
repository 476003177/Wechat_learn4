/*
Navicat MySQL Data Transfer

Source Server         : phpStudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-02-19 19:29:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mynews`
-- ----------------------------
DROP TABLE IF EXISTS `mynews`;
CREATE TABLE `mynews` (
  `id` int(12) NOT NULL DEFAULT '0',
  `title` varchar(120) DEFAULT NULL,
  `poster` varchar(254) DEFAULT NULL,
  `content` text,
  `add_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mynews
-- ----------------------------
INSERT INTO `mynews` VALUES ('1001', '再发现一例居家确诊病人 问责区委书记区长', 'http://i2.chinanews.com/simg/cmshd/2020/02/19/dec2dde6e67b4e96a547a2e322a399e0.jpg', '会议一开始，播放了一段来自媒体的暗访视频。视频显示，武汉部分小区没有按照规定要求管住管严；一些市民防疫意识还比较淡漠……”我们在小区封闭管理、控制人员流动上做了些工作，实际上落实得并不好。”王忠林说，群众发动不起来，打一场人民战争是不可能的。各区要在发动群众上持续加力，让居民参与到社区防控工作之中，只有居民都参与进来了，才能真正把小区当成自己的家园。他要求，要加强宣传引导，让市民对疫情严峻形势有充分警觉，认识到不执行封闭管理的危害，千万不能不当回事。对于不听劝阻不服从管理的，要依法严格处理，加大曝光力度，“这不是个人行为，而是危及到大家共同的安全。”', '2020-02-19');
INSERT INTO `mynews` VALUES ('1002', '布隆伯格支持率攀升 将首次参加民主党竞选辩论', 'http://image1.chinanews.com.cn/cnsupload/big/2020/01-23/4-561/ba1ed83eab10497a87d170d44047b12a.jpg', '布隆伯格18日确认达到19日在内华达州举行的民主党辩论资格，布隆伯格竞选经理当日证实他将参与辩论，这将是布隆伯格的辩论首秀，也是他被围攻“拿钱买选票”以来，首次直面党内对手，选民有望透过电视直播一探他竞选持久力的虚实。布隆伯格竞选经理希基(Kevin Sheekey)18日表示，布隆伯格期待与其他民主党人同台竞技，将藉此机会阐述为何自己是击败特朗普、团结美国的最佳选择。现年78岁的布隆伯格2019年11月宣布加入民主党总统竞选。他投入大量个人财产举办全国竞选活动，更花了数十亿美元在电视竞选广告上。布隆伯格即使错过前四个州的党内初选，但在NPR-PBS NewsHour-Marist的最新民调中，以19%的支持率名列第二，排名第一的桑德斯支持率31%；其他类似民调也显示布隆伯格已超越沃伦和布蒂吉格，仅次于桑德斯和拜登。', '2020-02-19');
INSERT INTO `mynews` VALUES ('1003', '广东加强水质监控 确保对澳门供水安全', 'http://i2.chinanews.com/simg/ypt/2020/200218/113556390_zsite.jpg', '中新网广州2月18日电 (王坚 粤水宣)据广东省水利厅18日消息，新冠肺炎疫情发生后，广东省珠海市水务局和水控集团从供水源头到末梢落实严密防控措施，构筑供水安全网，全力确保对澳门供水安全。据珠海水务局负责人介绍，为做好新冠肺炎疫情防控工作，确保对澳门供水安全，珠海制定了《关于加强供水水质安全的工作指引》，发出《关于加强原水水质监测工作的通知》，从供水源头到水龙头，在原水抽取、制水处理、管网输配、小区供水的每一个关键点都提出了明确要求，采取细致措施。此外，对竹银水库、竹洲头泵站、平岗泵站、竹仙洞水库等主要供水水源点，专门配备检测原水余氯和微生物的设备，增加余氯、微生物等检测指标，加密监测频次，检测人员都接受了专项培训。珠海市水控集团相关负责人表示，疫情期间，该集团加强了供水管理人员及环境卫生管理。有湖北地区居住史、旅游史、接触史及其他有健康风险的工作人员，在未完成健康隔离观察或取得相关健康证明前，不得进入水库、泵站、水厂等供水场所。各水库、泵站、水厂、营业厅安排专人，对供水管理人员进行体温检测并登记造册，员工在确保身体健康后方可继续从事供水管理工作。', '2020-02-18');
INSERT INTO `mynews` VALUES ('1004', '被呼吁别再推文谈司法案件 特朗普：我要有发声渠道', 'http://image1.chinanews.com.cn/cnsupload/big/2019/12-19/4-426/046faac62f8a43d38b88baaedc620ba0.jpg', '中新网2月19日电 据美国《世界日报》报道，美国司法部长巴尔日前呼吁美国总统特朗普“停止对司法部的刑事案件再推文”，特朗普18日回应，巴尔是直来直往。不过特朗普也说，自己热爱社交媒体，他也应被允许保有发声渠道。特朗普力挺前竞选幕僚斯通(Roger Stone)，通过推特抨击司法调查，司法界不满其干预司法公正，巴尔日前称特朗普仍从未要求他对刑事案件做任何事，但仍公开喊话要特朗普“别再推文”，因为这样让他很难做事。对于自家阁员公开喊话，特朗普说，“我热爱社交媒体”，也是因为社交媒体可以让他保有对外发声的管道，才能一路挺过“通俄门”、弹劾调查、穆勒报告等种种“闹剧”。特朗普表示，他承认自己爱发文，让巴尔的工作更难做，特朗普赞美巴尔是很好的部长，对巴尔极具信心，并称巴尔很坚强、拥有“难以想象的正直”。特朗普也说，自己其实可以管司法部的事，但他并没有。', '2020-02-19');
INSERT INTO `mynews` VALUES ('1005', '挑战一个月只吃狗粮！狗粮公司CEO身体变化惊呆众人', 'http://i2.chinanews.com/simg/cmshd/2020/02/17/9d388f162abd4603a0482330f0605153.jpg', '中新网2月17日电 据外媒报道，尽管宠物猫、宠物狗的粮食人类也能吃，但由于调味的方式与人类习惯有差异，吃起来可能并不美味。然而，美国一家狗粮制造商的执行长米奇(Mitch Felderhoff)为了证明自家生产的狗粮很优质，决定挑战“连续一个月只吃狗粮”。结果一个月后，他身体出现的变化，让许多人都惊呆了。据悉，米奇是Muenster Milling的执行长，该公司专门生产狗粮。他为了证明自家生产的狗粮品质，从1月3日起挑战连续一个月都只吃狗粮，期间也在社交媒体上传视频，分享挑战过程中的心得与想法。他坦言，其实刚开始吃的时候相当痛苦，吃起来感觉也不好，“吃下去就跟闻起来一样”。米奇透露，大约在20天开始，他就适应了吃狗粮，甚至觉得狗粮的味道也很棒，只是偶尔会想念人类食物的味道。至于有人质疑“你真的没有偷吃其他食物吗”，他强调在挑战的30天期间内，绝对没有偷吃任何其他食物，也呼吁其他人不要随意模仿他的行为。', '2020-02-17');
INSERT INTO `mynews` VALUES ('1006', '“钻石公主”号乘客19日起下船 首日下船乘客约500人', 'http://i2.chinanews.com/simg/cmshd/2020/02/19/19b386dcf20746ef98e2d6769b30f5b3.jpg', '中新网2月19日电 据日本共同社报道，“钻石公主”号邮轮上的滞留乘客计划从19日开始陆续下船，首日下船乘客约有500人。另一方面，韩国18日向东京羽田机场派遣了一架撤侨包机，目前，各国的撤侨工作已经开始启动。据日本厚生劳动省介绍，下船的相关工作会在当地时间19日上午开始，整个计划预计于21日结束。据厚劳省称，截至17日已采集了“钻石公主”号邮轮上全部乘客的病毒检测样本，如果检测结果呈阴性且无症状的乘客将被允许下船，乘客和船员若呈阳性则须住院。不过，根据进展情况，完成整个下船工作也可能较21日延后。据称，船员即使呈阴性也需要与签约的运航公司进行协调。', '2020-02-19');
INSERT INTO `mynews` VALUES ('1007', '疫情形势向好？室外空气消毒没必要？卫健委回应', 'http://www.chinanews.com/cr/2020/0218/2337106057.jpg', '2月发生的禽流感事件起因是什么？禽肉蛋奶的供应会不会受影响？受疫情影响，菜价和肉价有什么变化？18日，国务院联防联控机制就“菜篮子”稳产保供工作情况举行发布会，并回答公众关切。国家卫健委新闻发言人、宣传司副司长米锋：与高点相比，2月17日全国单日新增确诊病例首次降至2000例以内，湖北省以外单日新增确诊病例首次降至100例以内，全国单日新增死亡病例首次降至100例以内，实现了三个首次，疫情形势进一步出现向好变化。2月，四川南充、湖南邵阳发生两起高致病性禽流感。两个养殖场都是中小厂，周边没有异常，当地卫生健康部门检测，临床采样检测均为阴性，疫情起因野鸟传播可能性较大，祸从天降，毒从鸟来。目前疫情处置工作已经完成，共扑杀疫区家禽28214羽。目前禽流感无论是禽间还是人间发生率都是非常低的，大家没有必要“谈禽色变”，可以放心食用经检疫合格、合法上市的禽产品。', '2020-02-18');
INSERT INTO `mynews` VALUES ('1008', 'NASA公布夜光云“美照”：宛如来自宇宙边缘的明信片', 'http://i2.chinanews.com/simg/cmshd/2020/02/18/7c065850eb86432e9cf0ac384b2e8cf3.jpg', '中新网2月18日电 据外媒报道，当地时间17日，美国国家宇航局(NASA)在社交媒体上发布了国际空间站拍摄到的夜光云(noctilucent clouds)照片，并在配文中称，它美得像“来自宇宙边缘的明信片”。据报道，夜光云，又被称为极地中气层云，是指深曙暮期间出现于地球高纬度地区高空的一种发光而透明的波状云，高度可达地球表面80千米，是地球大气层中位置最高的云。NASA称，这张照片是在距南太平洋269英里的国际空间站上拍摄的，并解释说，只有在太阳落到地球的地平线上并照亮云朵时，才能看到这种云。据悉，当这种云从太空中被看见时，就被称为夜耀云(night-shining clouds)；从地球上看见，就称为夜光云。夜光云一般呈无色或淡蓝色，偶尔也出现红色、绿色和蓝色等。', '2020-02-18');
INSERT INTO `mynews` VALUES ('1009', '报告称节后企业平均支付月薪为6420元 送餐员等岗位吃香', 'http://i2.chinanews.com/simg/cmshd/2020/02/19/e5f50d7d7e974f179f6fd59040b7a77b.jpg', '中新网客户端北京2月19日电(记者 吴涛)19日，58同城发布的报告显示，2020年春节后，企业支付平均月薪为6420元，同比增长5.79%，其中技术类、配送类相关岗位涨幅高于整体增长，保洁岗位薪资也上涨明显。报告对不同类型的岗位薪资进行了分析，技术类相关岗位涨幅明显，薪资整体涨幅高达22.44%，算法工程师、研发工程师的企业支付薪资同比增长高达30%-40%。', '2020-02-19');
INSERT INTO `mynews` VALUES ('1010', '战“疫”一线：和死神赛跑的“老运动员”', 'http://i2.chinanews.com/simg/ypt/2020/200216/113390680_zsite.jpg', '中新网南昌2月16日电 题：战“疫”一线：和死神赛跑的“老运动员”“就算没有这场战‘疫’，我这里依旧是全院最危险的地方，这里每天都会上演‘生死时速’，我的工作就是从‘死神’的手里抢人。”钱克俭说道。说起南昌大学第一附属医院重症医学科(ICU)科主任钱克俭，大家对他的第一印象都是话不多但沉稳可靠。钱克俭在临床工作37年，同时也是一名有着26年党龄的党员。每当出现紧急情况，他永远是属于冲在最前面那群人之一。自新冠肺炎疫情发生至今，他已坚守在医院隔离病房ICU长达24天。', '2020-02-16');
INSERT INTO `mynews` VALUES ('1011', '驰援武汉的“护士长团”：“热搜”护士长双鬓斑白战武汉', 'http://i2.chinanews.com/simg/ypt/2020/200217/113427960_zsite.jpg', '中新网吉林2月17日电 (苍雁 石洪宇)曲艳辉本想在2020年的春节“打扮”一下自己，但她始终没时间“染一染”头发。双鬓斑白的就踏上了征战武汉的飞机。48岁的曲艳辉是吉林市中心医院神经外科一病区的护士长，15日随吉林市第四批驰援武汉的医疗队出发。此次中心医院派出了9名护士长在内的24名医护人员。在护士李岳的印象中，曲艳辉很能“尬聊”。“她特别喜欢找患者聊天，通过唠家常让患者心情愉悦。”闲暇时的曲艳辉则有着很接地气的爱好：跳广场舞。曲艳辉没想到的是，自己跳广场舞上了热搜。“我们还是刷抖音和微博才看到护士长跳广场舞时救人的消息。”李岳说，2019年秋天，在曲艳辉跳广场舞时，一名男子突发脑出血，呼吸骤停。曲艳辉跪在地上，对其进行胸外按压、人工呼吸，最终将患者抢救回来。', '2020-02-17');
INSERT INTO `mynews` VALUES ('1012', '疫情下的甜蜜约定：待疫情结束，我再娶你回家！', 'http://i2.chinanews.com/simg/ypt/2020/200214/113304540_zsite.jpg', '中新网福建宁德2月14日电 题：疫情下的甜蜜约定：待疫情结束，我再娶你回家！2月14日是西方传统的情人节，在新冠肺炎疫情持续的当下，一些情侣推迟婚礼、坚守防疫一线，许下约定，“待疫情结束，我再娶你回家！”“90后”陈翔，是福建宁德市屏南县公安局城关派出所的一名民警，其未婚妻章雨洁，是屏南县总医院人事科的一名干部。2月9日，农历正月十六，本是他们规划了大半年的订婚之日，但他们大年初三就回到岗位上，站在了疫情防控的一线。“我们约定好，取消订婚、推迟婚期，先和大家一起抗击疫情。”陈翔14日说，待疫情结束，我再娶她回家！', '2020-02-14');
