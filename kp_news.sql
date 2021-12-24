/*
 Navicat Premium Data Transfer

 Source Server         : kp_news
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 114.55.59.237:3306
 Source Schema         : kp_news

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 22/12/2021 16:23:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `adminname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '管理员',
  `adminnickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '管理员昵称',
  `adminpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`adminname`) USING BTREE COMMENT '不重命名'
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'admin', '管理员', '123');

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '此为标题' COMMENT '文章标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '文章内容',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '文章图片',
  `imgnote` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '文章图片备注',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '文章类型(0正常，1封禁)',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '此为备注' COMMENT '文章备注',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文章发布时间',
  `clickcount` int(11) DEFAULT 0 COMMENT '文章点击（阅读）',
  `likecount` int(11) DEFAULT 0 COMMENT '文章喜欢（点赞）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (1, '实现民主自由人权，中国做对了什么？', '　新华社北京12月7日电 题：实现民主自由人权，中国做对了什么？\r\n\r\n　　新华社记者\r\n\r\n　　放眼世界，贫富分化、极化政治、治理失灵、国际霸凌等种种现实危机令人不安，也折射出“自由主义民主的贫困”；审视中国，社会主义民主创造了世所罕见的经济快速发展和社会长期稳定奇迹，历史性地消灭了绝对贫困，人民对生活更加美好充满信心。中国做对了什么？\r\n\r\n　　新华社国家高端智库7日向全球发布《全人类共同价值的追求与探索——民主自由人权的中国实践》报告，解码中国举世瞩目的成就背后，14亿多人追求民主、自由等全人类共同价值和人权理想所走出的道路和发现的道理，得出一系列重要发现。\r\n\r\n　　——中国从民主的真谛出发，立足自身实际和文化传统，探索出人民当家作主的中国特色社会主义民主之路，“全过程人民民主”是对人类民主的守正创新。\r\n\r\n　　——中国的民主路径，是以政党领导人民建立新国家，确立人民当家作主制度，开启国家现代化进程。作为“使命型政党”，中国共产党的领导使亿万人民凝聚为一个有机整体，解决了落实人民主权的“超大规模民主难题”。\r\n\r\n　　——民主、自由和人权的中国实践，形成了一系列行之有效的治理思想与方法，解码中国民主的“致治”之道，或可将先进政党、人民至上、聚焦发展喻为三大“关键应用”。\r\n\r\n　　——中国共产党将一切政治行动都以人民整体利益为基本取向，让民主回归人民的逻辑，让自由成全人的全面发展，让幸福成为人权的最高标准，开辟了国家现代化新道路，开创了人类文明新形态。判断制度成色的“试金石”\r\n\r\n　　当代西方学者反思“自由主义民主”出现的种种问题和乱象，指出“不能回应民意的民主是无效的民主”“理想的民主是选民对政治议程的最终控制”，良治社会有赖于国家治理能力。\r\n\r\n　　新华社国家高端智库报告指出，中国社会呈现出高“治商”特点，其标准体现为人民的安全感、获得感和幸福感，对应的是国家治理的安民、富民、乐民能力。报告从比较政治学视角，分析了中国民主在实现良治目标上的效能和优点。\r\n\r\n　　致善政的“治理型民主”。它有三个要素，即：社会充分参与—国家自主性回应—负责任决策及其有效执行。中国的“治理型民主”不但重视政治过程的民主，更强调民主政治的结果即“良政”。\r\n\r\n　　有活力的“效率型民主”。体现于治国理政各方面的民主集中制，让中国充满活力又极具执行力。它既强调充分发扬民主，激发人民的积极性主动性创造性，又重视正确地集中——在民主基础上集思广益，形成科学决策并付诸实际行动。\r\n\r\n　　汇众智的“动力型民主”。坚持人民主体地位，充分调动人民积极性，被中国共产党视为立于不败之地的强大根基。没有民主，就没有今天的中国奇迹。中国梦，为中国人追求民主自由和发展人权事业描绘出崭新愿景，也将激发人民贡献自己的智慧与力量。\r\n\r\n　　可检验的“系统性民主”。这体现为中国提出的“八个能否”民主标准：国家领导层能否依法有序更替，全体人民能否依法管理国家事务和社会事务、管理经济和文化事业，人民群众能否畅通表达利益要求，社会各方面能否有效参与国家政治生活，国家决策能否实现科学化、民主化，各方面人才能否通过公平竞争进入国家领导和管理体系，执政党能否依照宪法法律规定实现对国家事务的领导，权力运用能否得到有效制约和监督。\r\n\r\n　　政治学者认为，“八个能否”民主标准总结了中外民主政治发展的经验教训，符合现代政治文明原则，反映了“全过程人民民主”的系统性。落实人民主权的“新形态”\r\n\r\n　　最早出现在古希腊的“民主”一词，意为“人民的统治”。现代民主以追求平等与公正为核心。“民主”的中国表达——“人民当家作主”，已经具体而现实地变成了造福14亿多人民的实践。\r\n\r\n　　报告指出，“全过程人民民主”是中国民主的基本特征，它超越“少数人民主”“一次性民主”“伪全民性民主”，全链条、全方位、全覆盖地落实人民当家作主。\r\n\r\n　　报告从“人怎么选”“事怎么议”“策怎么定”“权怎么用”4个维度，勾勒了“全过程人民民主”在中国的运行：\r\n\r\n　　不同于西方国家单纯靠选举产生的“空降兵”式的领导人，中国领导人的产生要经过一个一个政治台阶，层层选拔，出类拔萃、政绩卓著、经验丰富，才可有效治理世界上人口最多的国家。\r\n\r\n　　百姓意见抵达国家最高立法机关有了“直通车”。截至2021年10月，全国人大常委会法工委基层立法联系点共就126部法律草案、年度立法计划等征求基层群众意见建议7800余条，其中2200余条被不同程度吸收采纳。\r\n\r\n　　中国近年医改取得明显进展，一个重要原因是推广了地方首创经验——福建“三明模式”。在新冠肺炎疫情期间，无论武汉“封城”，还是全国驰援武汉，决策原则都是“人民至上”“生命至上”。\r\n\r\n　　2012年以来，中国共产党掀起史上力度空前的反腐败风暴，打“虎”无禁区，拍“蝇”不手软，猎“狐”不止步，在制度上一体推进不敢腐、不能腐、不想腐，有效遏制了腐败蔓延势头，确保人民赋予的权力用来为人民谋幸福。　实现人民当家作主的“大逻辑”\r\n\r\n　　新华社国家高端智库报告从历史政治学视角指出，中国民主道路顺应历史、理论、实践和价值逻辑，坚守全人类共同价值，又立足中国大地实现了创新性发展。\r\n\r\n　　报告指出，近代中国尝试过君主立宪制、议会制、多党制、总统制等多种制度模式，但都以失败告终。直到中国共产党带领人民取得新民主主义革命胜利，建立中华人民共和国，确立人民当家作主制度体系，中国才实现从几千年封建专制政治向人民民主的伟大飞跃。\r\n\r\n　　报告指出，以追求者姿态踏上民主道路的新中国，力图从现代民主价值来思考和把握本国的民主路径，即马克思所揭示的民主逻辑：国家制度是人的自由的产物，国家是“人民自己的作品”。新中国民主实践的社会主义取向，意味着它是资产阶级民主的批判者和超越者。\r\n\r\n　　报告指出，人民代表大会制度，落实了国家“一切权力属于人民”的宪法原则。人大代表在地域、行业、民族等结构上与整个社会的人民结构具有整体的对应性，确保国家权力机关能够全面地反映人民意愿。国家机构实行民主集中制，因而中国能形成治国理政的强大合力，切实防止出现相互掣肘、内耗严重的现象。报告指出，良好的民主是自由和人权的基础，抓住民主建设的“牛鼻子”，人民的自由和权利就有了制度保障。新中国的建立和社会主义制度的确立，从根本上消灭了阻碍人民享有自由的旧社会制度，人民的各种权利得到宪法保障；改革开放和发展社会主义市场经济，充分激发了全社会的创造活力，顺着“改革开放—脱贫攻坚—全面小康—共同富裕”的路线图，中国人摆脱贫困过上富足而有尊严的生活。　追求全人类共同价值的“中国策”\r\n\r\n　　“世界怎么了、我们怎么办？”2017年，中国国家主席习近平在联合国日内瓦总部发出时代之问。\r\n\r\n　　2021年，中华人民共和国恢复联合国合法席位50周年，习近平主席给出新的思考：我们应该大力弘扬和平、发展、公平、正义、民主、自由的全人类共同价值，共同为建设一个更加美好的世界提供正确理念指引。和平与发展是我们的共同事业，公平正义是我们的共同理想，民主自由是我们的共同追求。\r\n\r\n　　新华社国家高端智库报告说，追求全人类共同价值是“做正确的事”，而“把正确的事做正确”是巨大挑战，中国的民主自由人权实践，提供了有益的知识启示。\r\n\r\n　　——民主如何实现善治？报告认为，先进政党、人民至上、聚焦发展或可喻为中国“致治”之道的三大“关键应用”。\r\n\r\n　　作为先进政党的显著特征，中国共产党始终站在全体人民利益角度，顺应人类和时代进步的大潮流，总揽全局、协调各方，团结组织各派政治力量、各种政治资源，为全体人民谋幸福、为中华民族谋复兴。\r\n\r\n　　“以人民为中心”使中国的“政道”和“治道”获得稳固价值坐标。人民拥护不拥护、赞成不赞成、高兴不高兴、答应不答应，是衡量一切工作得失的根本标准。\r\n\r\n　　聚焦发展，使中国人获得了越来越多的自由和民主权利；更多的自由和民主权利，进一步促进了整个国家的发展；而发展的成效继续完善民主治理，使人民的权利得到更好保障。\r\n\r\n　　——全人类共同价值如何实现？报告说，和平、发展、公平、正义、民主、自由是全人类共同价值，但其实现路径是个性化的，应该尊重不同国家人民对价值实现路径的探索。多样性不仅合乎常理，而且美好，“各美其美，美美与共”，一起向未来。报告指出，中国民主自由和人权实践，为实现全人类共同价值提供了可以借鉴的重要原则：\r\n\r\n　　实践原则：民主的有效性必须通过能否解决绝大多数人实际问题的实践来检验和完善；\r\n\r\n　　自主原则：民主自由人权的路径选择必须基于本国国情，外部强加的所谓“民主改造”贻害无穷；\r\n\r\n　　时序原则：促进民主、维护自由、保障人权需要循序渐进，不能超越社会发展阶段搞狂飙突进；\r\n\r\n　　过程原则：民主自由人权的追求止于至善，没有最好，只有更好。\r\n\r\n　　——人类怎样走向更加光明的未来？报告指出，有人曾以为，国家就是最大的政治单位，世界只是空洞的地理空间，而今天的真相是：人类是一个整体，居住的星球是一个“地球村”，任何国家都无法独善其身。\r\n\r\n　　世界多极化、国际关系民主化是大势所趋，人类只有抓住历史机遇，作出正确选择，才能开创更加光明的未来。坚守全人类共同价值，构建人类命运共同体，中国为徘徊于十字路口的世界指明了正确的方向。（记者：顾钱江、梁建强、闫睿、储国强、刘丽娜、崔峰、叶书宏、郝薇薇、刘阳、宣力祺）', 'http://114.55.59.237:8080/image/a1.jpg', '海报设计：卓越', '1', '新华社北京12月7日电 题：实现民主自由人权，中国做对了什么？', '2021-12-07 21:02:43', 4, 4);
INSERT INTO `t_article` VALUES (2, '权威快报 | 我国快递年业务量首次突破千亿件大关', '　12月8日，国家邮政局快递大数据平台实时监测数据显示，2021年我国快递业务量已达1000亿件，这是我国快递年业务量首次突破千亿级别，已连续8年稳居世界第一，日均服务用户近7亿人次。（记者戴小河，海报设计杨轶群）', 'http://114.55.59.237:8080/image/a2.jpg', '海报设计杨轶群', '0', '新华社微博', '2021-12-08 09:16:59', 6, 12);
INSERT INTO `t_article` VALUES (3, '延庆冬奥村（冬残奥村）开展“全要素”运行测试', '赛时，延庆赛区将举办高山滑雪、雪车、钢架雪车、雪橇等比赛。严晗说：“延庆冬奥村（冬残奥村）根据延庆赛区比赛项目的特点，将健身中心分为心血管功能训练区、自由力量训练区、力量区、拉伸区这四个区域，共有约27类、139件器材。配置了更多的分动式力量训练设备和以下肢为主导的有氧训练器材，帮助运动员保持身体状态。”在广场区的特许商品零售店，北京2022年冬奥会和冬残奥会主题口号歌曲《一起向未来》作为背景音乐循环播放，冬奥氛围浓厚。徽章、冰箱贴、“冰墩墩”和“雪容融”玩偶等纪念商品广受欢迎，以高山滑雪、雪车、钢架雪车、雪橇等延庆赛区比赛项目为主题的“专属”特许商品也成为一大特色。', 'http://114.55.59.237:8080/image/a3.jpg', '11月20日晚，观众在国家雪车雪橇中心观看“相约北京”2021-2022国际雪橇联合会雪橇世界杯比赛。北京市延庆区融媒体中心供图', '0', '新华社北京12月6日电', '2021-12-06 20:37:42', 1, 1);
INSERT INTO `t_article` VALUES (4, '让更多人触摸珍藏的历史——老英雄孙景坤捐赠十六枚奖章记事', '解放东北纪念章是孙景坤从军参战获得的第一枚奖章。“四平战役中，我是机关枪手，是敌人火力的重点打击对象。子弹密到把我军装的后背都打烂了，半个月内换了4件棉衣。”这枚锈迹斑斑的奖章，是老英雄心爱之物，是他九死一生浴血奋战的见证。孙景坤24岁入伍，戎马生涯里立下赫赫战功：辽沈战役中，荣立三等功；平津战役中，荣立二等功；解放海南岛战役中，荣立二等功；抗美援朝战争中，荣立一等功一次、三等功一次。\r\n\r\n　　“这枚是抗美援朝一级战士荣誉勋章，是彭德怀总司令亲自给我戴上的……”提起最珍爱的这枚勋章，老英雄十分自豪。勋章纯银质，主体是一个长方形盾牌，正中为一名手持步枪、枪口朝左上的战士。\r\n\r\n　　捐赠前夜，在丹东光荣院，97岁的孙景坤坐在轮椅上，抚摸着挂在旧军装上的一枚枚奖章。\r\n\r\n　　“最大的功臣是那些留在战场上的战友。我的荣誉来自党和人民的培养和关爱，理应归还给党和人民。这些东西放在我这儿只有我自己能看到，捐出去可以让更多人了解那段历史，更加珍惜今天的幸福生活。”', 'http://114.55.59.237:8080/image/a4.jpg', '胸前挂满奖章的孙景坤。刘海东摄', '0', '新华网', '2021-12-13 14:43:36', 0, 0);
INSERT INTO `t_article` VALUES (5, '截至12月7日24时新型冠状病毒肺炎疫情最新情况', '12月7日0—24时，31个省（自治区、直辖市）和新疆生产建设兵团报告新增确诊病例74例。其中境外输入病例30例（上海8例，广西8例，福建3例，广东3例，四川3例，云南3例，天津1例，陕西1例），含4例由无症状感染者转为确诊病例（四川3例，广西1例）；本土病例44例（内蒙古34例，均在呼伦贝尔市；浙江8例，其中宁波市5例、杭州市2例、绍兴市1例；黑龙江1例，在哈尔滨市；上海1例，在浦东新区），含1例由无症状感染者转为确诊病例（在内蒙古）。无新增死亡病例。新增疑似病例1例，为境外输入病例（在上海）。\r\n\r\n　　当日新增治愈出院病例48例，解除医学观察的密切接触者825人，重症病例较前一日增加6例。\r\n\r\n　　境外输入现有确诊病例450例（其中重症病例1例），现有疑似病例4例。累计确诊病例10346例，累计治愈出院病例9896例，无死亡病例。\r\n\r\n　　截至12月7日24时，据31个省（自治区、直辖市）和新疆生产建设兵团报告，现有确诊病例1133例（其中重症病例22例），累计治愈出院病例93602例，累计死亡病例4636例，累计报告确诊病例99371例，现有疑似病例4例。累计追踪到密切接触者1344901人，尚在医学观察的密切接触者39383人。\r\n\r\n　　31个省（自治区、直辖市）和新疆生产建设兵团报告新增无症状感染者23例，其中境外输入18例，本土5例（均在浙江，其中宁波市3例、杭州市2例）；当日转为确诊病例5例（境外输入4例）；当日解除医学观察24例（境外输入19例）；尚在医学观察的无症状感染者465例（境外输入399例）。\r\n\r\n　　累计收到港澳台地区通报确诊病例29231例。其中，香港特别行政区12471例（出院12153例，死亡213例），澳门特别行政区77例（出院77例），台湾地区16683例（出院13742例，死亡848例）。', 'http://114.55.59.237:8080/image/a5.jpg', '12月12日，杭州市西溪医院专家团队视频连线隔离病房医务人员进行会诊。', '0', '国家卫健委网站', '2021-12-08 08:54:44', 0, 0);
INSERT INTO `t_article` VALUES (6, '神舟十二号航天员乘组天外归来首次公开亮相', '新华社北京12月7日电（李国利、占康）中国航天员科研训练中心7日下午在北京航天城举行神舟十二号航天员乘组与记者见面会。\r\n\r\n　　这是神舟十二号乘组返回后，首次与媒体和公众正式见面。\r\n\r\n　　见面会上，中国人民解放军航天员大队大队长景海鹏介绍了乘组返回后恢复情况及后续打算。他介绍，乘组飞行正常返回后恢复期主要分为隔离恢复阶段、疗养恢复阶段、恢复观察阶段三个阶段实施。截至目前，乘组已完成第二阶段工作。从整体来看，航天员情绪稳定、心理状态良好，体重稳定在飞行前水平，肌肉力量、耐力和运动心肺功能储备得到了进一步恢复，达到了预期效果。目前已全面转入恢复观察阶段。待恢复健康评估总结后，3名航天员将转入正常训练工作。　　三次飞天的聂海胜，是我国首位太空驻留突破100天的航天员。“一心只为飞行，一生只为飞行。”他说，“我有幸执行了3次载人飞行任务，也收获了很多的荣誉和成绩，每一次执行完任务，我都会告诉自己，不能让沉甸甸的成绩和荣誉停止自己的步伐，更不能因年龄的增长而放松了标准、放弃了追求，要把这些变成更大的动力和奋斗激情。”　刘伯明是我国第一个两次太空出舱的航天员。他说：“此次飞行任务中，我执行了两次出舱活动，通过天地协同配合，我们圆满完成了相关任务，我也更加近距离领略了太空的奇妙感受，应该说，第一次出舱活动，兴奋和激动多一些，第二次更加从容和自信，我相信，浩瀚太空会留下更多中国人的身影和足迹。”　目前，3名航天员已经开始了技术上的恢复性训练。首次飞天的汤洪波在回答记者提问时说：“现在我还时常怀念那3个月的神奇旅行。我的初心使命就是飞天，我的飞天梦想依然继续，只要组织需要，我时刻准备再次为国出征太空。”', 'http://114.55.59.237:8080/image/a6.jpg', '12月7日，在北京航天城举行的见面会上，神舟十二号航天员汤洪波、聂海胜、刘伯明（从左至右）敬礼致意。新华社记者 金立旺 摄', '0', '新华社北京12月7日电', '2021-12-07 23:06:39', 0, 0);
INSERT INTO `t_article` VALUES (7, '湖南高院女法官遇害案罪犯向慧，被执行死刑', '5月19日，长沙市中级人民法院以故意杀人罪判处向慧死刑，剥夺政治权利终身。向慧上诉后，湖南省高级人民法院裁定驳回上诉，维持原判，并报请最高人民法院核准。最高人民法院经复核认为，第一审判决、第二审裁定认定的事实清楚，证据确实、充分，定罪准确，量刑适当，审判程序合法，依法核准对向慧判处死刑的刑事裁定。', 'http://114.55.59.237:8080/image/a7.jpg', '经最高人民法院核准，2021年12月10日，湖南省长沙市中级人民法院依照法定程序对向慧执行死刑。检察机关依法派员临场监督', '0', '新华网', '2021-12-08 09:16:59', 0, 0);
INSERT INTO `t_article` VALUES (8, '美国“外交抵制”冬奥会行径注定失败', '新华社北京12月6日电（记者董雪、王宾）针对有报道称，美国政府将于本周宣布抵制北京冬奥会，外交部发言人赵立坚6日在例行记者会上应询表示，美国政客在未受到邀请情况下不断炒作所谓的“外交抵制”北京冬奥会，是赤裸裸的政治挑衅，如果美方一意孤行，中方必将采取坚决反制措施。\r\n\r\n　　赵立坚说，北京冬奥会是全球冬奥运动员和冰雪运动爱好者的盛会，他们才是主角。当前，北京冬奥会筹备工作已进入倒计时冲刺阶段，包括国际奥委会在内的国际社会高度认可筹办工作，外国运动员热切期待来华参赛，其中包括数量众多的美国和日本运动员。“我们相信，在奥林匹克精神指引下，在各方共同努力下，我们一定能为世界呈现一届简约、安全、精彩的奥运盛会。”\r\n\r\n　　他强调，冬奥会不是政治作秀和搞政治操弄的舞台。美国政客在未受到邀请情况下不断炒作所谓的“外交抵制”北京冬奥会，完全是自作多情、哗众取宠、政治操弄，是对《奥林匹克宪章》精神的严重玷污，是赤裸裸的政治挑衅，更是对14亿多中国人民的严重冒犯，只会让中国人民和全世界人民看清看透美国政客的反华本质和虚伪面目。\r\n\r\n　　赵立坚说，美方应该做的是端正态度，践行“更团结”的奥林匹克精神，严肃对待中方关切，不将体育运动政治化，停止炒作所谓的“外交抵制”北京冬奥会，以免影响中美在重要领域的对话合作。“如果美方一意孤行，中方必将采取坚决反制措施。”', 'http://114.55.59.237:8080/image/a8.jpg', '12月6日，城市志愿者们在誓师大会后合影留念。当日，北京2022年冬奥会和冬残奥会城市志愿者', '0', '新华社北京12月6日电', '2021-12-06 20:37:42', 0, 0);
INSERT INTO `t_article` VALUES (9, '南非总统新冠病毒检测结果呈阳性', '新华社约翰内斯堡12月12日电（记者荆晶）南非总统府12日晚发表声明说，南非总统拉马福萨当天新冠病毒检测结果呈阳性，正在接受治疗并进行自我隔离。\r\n\r\n　　声明说，拉马福萨当天早些时候在开普敦参加为前总统德克勒克举行的追悼仪式后感到不适。随后他接受新冠病毒检测，结果呈阳性。拉马福萨已接种过新冠疫苗，目前症状轻微，精神状态良好。\r\n\r\n　　声明说，拉马福萨正在接受治疗并进行自我隔离，下周将由副总统马布扎代行总统职责。拉马福萨在声明中说，他的感染是对南非所有人的一个警示，所有民众都应接种新冠疫苗并保持警惕。\r\n\r\n　　根据声明，拉马福萨近日对尼日利亚、科特迪瓦等4个西非国家进行了访问。拉马福萨和代表团成员在访问期间和返回南非后接受过新冠病毒检测，结果均为阴性。\r\n\r\n　　南非国家传染病研究所当天发布的数据显示，过去24小时南非新增新冠确诊病例18035例，累计确诊3167497例；新增死亡病例21例，累计死亡90137例。截至目前，南非已接种新冠疫苗超过2709万剂，超过1816万人已接种至少一剂疫苗。\r\n', 'http://114.55.59.237:8080/image/a9.jpg', '12月12日，在南非开普敦，南非总统拉马福萨在为前总统德克勒克举行的追悼仪式上讲话。新华社记者 吕天然 摄\r\n\r\n', '0', '国家卫健委网站', '2021-12-12 08:54:44', 0, 0);
INSERT INTO `t_article` VALUES (10, '羽毛球世锦赛中国队开局全线告捷', '在当日的男子单打首轮比赛中，中国三名球员全数出战，并均首战告捷。陆光祖2:0淘汰泰国选手昆拉武特，两局比分分别为21:16和21:12；下轮他将遭遇4号种子、中国台北队的周天成。李诗沣也以21:6和21:10轻取美国选手林恩偕。赵俊鹏则在16:21先失一局的情况下，以21:17和21:15连扳两局，逆转10号种子、中国台北选手王子维。\r\n\r\n　　而在女单首轮的比赛中，8号种子何冰娇和14号种子王祉怡首轮轮空；韩悦则耗时37分钟，以21:16和21:14战胜越南选手阮翠玲。\r\n\r\n　　男双首轮，16号种子何济霆/谭强轮空；刘成/黄凯祥以21:13和21:17淘汰中国香港的杨铭诺和张德正。女双方面，头号种子陈清晨/贾一凡、10号种子李汶妹/郑雨、14号种子刘玄炫/夏玉婷全部首轮轮空。', 'http://114.55.59.237:8080/image/a10.jpg', '12月12日，中国选手赵俊鹏在比赛中庆祝得分。新华社记者张铖摄', '0', '新华网', '2021-12-13 14:43:26', 0, 0);

-- ----------------------------
-- Table structure for t_collection
-- ----------------------------
DROP TABLE IF EXISTS `t_collection`;
CREATE TABLE `t_collection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '收藏标题',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `articleid` int(11) DEFAULT NULL COMMENT '文章id',
  `videoid` int(11) DEFAULT NULL COMMENT '视频id',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_collection
-- ----------------------------
INSERT INTO `t_collection` VALUES (31, '印度空军一直升机坠毁 一高级军官或身亡', 2, 0, 3, '2021-12-08 19:55:59');
INSERT INTO `t_collection` VALUES (32, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-08 20:01:29');
INSERT INTO `t_collection` VALUES (33, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-08 22:08:17');
INSERT INTO `t_collection` VALUES (34, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-08 22:09:26');
INSERT INTO `t_collection` VALUES (35, '印度空军一直升机坠毁 一高级军官或身亡', 2, 0, 3, '2021-12-08 23:32:00');
INSERT INTO `t_collection` VALUES (36, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-09 11:31:49');
INSERT INTO `t_collection` VALUES (37, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-09 11:31:50');
INSERT INTO `t_collection` VALUES (38, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-09 11:31:50');
INSERT INTO `t_collection` VALUES (39, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-09 11:31:50');
INSERT INTO `t_collection` VALUES (40, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-09 11:31:50');
INSERT INTO `t_collection` VALUES (41, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-09 11:31:50');
INSERT INTO `t_collection` VALUES (42, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-09 11:31:51');
INSERT INTO `t_collection` VALUES (43, '美国“外交抵制”冬奥会行径注定失败', 2, 0, 2, '2021-12-09 13:25:16');
INSERT INTO `t_collection` VALUES (44, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-11 09:57:33');
INSERT INTO `t_collection` VALUES (45, '美国“外交抵制”冬奥会行径注定失败', 2, 0, 2, '2021-12-13 14:17:23');
INSERT INTO `t_collection` VALUES (46, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-16 19:17:24');
INSERT INTO `t_collection` VALUES (47, '延庆冬奥村（冬残奥村）开展“全要素”运行测试', 2, 3, 0, '2021-12-19 16:53:46');
INSERT INTO `t_collection` VALUES (48, '实现民主自由人权，中国做对了什么？', 2, 0, 1, '2021-12-20 23:19:26');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `commentid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` int(11) DEFAULT NULL COMMENT '评论用户id',
  `articleid` int(11) DEFAULT NULL COMMENT '文章id',
  `videoid` int(11) DEFAULT NULL COMMENT '视频id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '此为评论' COMMENT '评论',
  `thumbsup` tinyint(4) DEFAULT 0 COMMENT '点赞',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '状态',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `parentid` int(11) DEFAULT NULL COMMENT '二级id',
  PRIMARY KEY (`commentid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, 2, 1, 1, '新华社国家高端智库报告从历史政治学视角指出，中国民主道路顺应历史、理论、实践和价值逻辑，坚守全人类共同价值，又立足中国大地实现了创新性发展。', 99, '1', '2021-11-12 10:10:48', NULL);
INSERT INTO `t_comment` VALUES (2, 2, 2, 1, '楼上说的对', 0, '0', '2021-11-12 10:21:47', NULL);
INSERT INTO `t_comment` VALUES (4, 3, 3, 1, '啊对对对对对', 1, '0', '2021-11-12 10:24:33', NULL);
INSERT INTO `t_comment` VALUES (5, 4, 4, 1, '啊对对对对对', 11, '0', '2021-11-12 10:24:35', NULL);
INSERT INTO `t_comment` VALUES (7, 0, 5, 1, 's', NULL, '0', '2021-11-30 15:34:40', NULL);
INSERT INTO `t_comment` VALUES (9, 0, 6, 1, '测试内容', 0, '0', '2021-11-30 15:36:44', NULL);
INSERT INTO `t_comment` VALUES (10, 0, 8, 1, '测试内容8', 0, '0', '2021-11-30 15:38:30', NULL);
INSERT INTO `t_comment` VALUES (11, 1, 7, 1, '实现人民当家作主的“大逻辑”', 0, '0', '2021-11-30 15:39:13', NULL);
INSERT INTO `t_comment` VALUES (12, 1, 9, 1, '报告指出，近代中国尝试过君主立宪制、议会制、多党制、总统制等多种制度模式，但都以失败告终。', 0, '0', '2021-11-30 16:27:41', NULL);
INSERT INTO `t_comment` VALUES (13, 1, 10, 1, '追求全人类共同价值的“中国策”', 0, '0', '2021-11-30 19:34:46', NULL);
INSERT INTO `t_comment` VALUES (44, 2, NULL, 2, '555', 0, '0', '2021-12-08 19:56:41', NULL);
INSERT INTO `t_comment` VALUES (45, 2, NULL, 2, '123', 0, '0', '2021-12-08 21:58:34', NULL);
INSERT INTO `t_comment` VALUES (46, 2, NULL, 3, '666', 0, '0', '2021-12-08 22:36:06', NULL);
INSERT INTO `t_comment` VALUES (47, 2, 2, NULL, '666', 0, '0', '2021-12-08 22:39:12', NULL);
INSERT INTO `t_comment` VALUES (48, 2, NULL, 3, '666', 0, '0', '2021-12-08 23:32:19', NULL);
INSERT INTO `t_comment` VALUES (49, 2, 2, NULL, '123', 0, '0', '2021-12-09 13:23:15', NULL);
INSERT INTO `t_comment` VALUES (51, 2, NULL, 5, '666', 0, '0', '2021-12-21 21:50:49', NULL);
INSERT INTO `t_comment` VALUES (52, 2, NULL, 3, '666', 0, '0', '2021-12-21 21:51:34', NULL);

-- ----------------------------
-- Table structure for t_friend
-- ----------------------------
DROP TABLE IF EXISTS `t_friend`;
CREATE TABLE `t_friend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id(流水号)',
  `userid` int(11) DEFAULT NULL COMMENT '好友名',
  `userfid` int(11) DEFAULT NULL COMMENT '好友id',
  `level` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_history
-- ----------------------------
DROP TABLE IF EXISTS `t_history`;
CREATE TABLE `t_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '历史标题',
  `articleid` int(11) DEFAULT NULL COMMENT '文章id',
  `videoid` int(11) DEFAULT NULL COMMENT '视频id',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '历史时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_history
-- ----------------------------
INSERT INTO `t_history` VALUES (20, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-08 17:32:59');
INSERT INTO `t_history` VALUES (21, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-08 17:34:34');
INSERT INTO `t_history` VALUES (22, 2, '神舟十二号航天员乘组天外归来首次公开亮相', 6, 0, '2021-12-08 17:34:38');
INSERT INTO `t_history` VALUES (24, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-08 17:34:54');
INSERT INTO `t_history` VALUES (26, 2, '美国“外交抵制”冬奥会行径注定失败', 3, 0, '2021-12-08 21:08:34');
INSERT INTO `t_history` VALUES (27, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-08 21:29:44');
INSERT INTO `t_history` VALUES (28, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-08 21:58:32');
INSERT INTO `t_history` VALUES (29, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-08 21:59:03');
INSERT INTO `t_history` VALUES (30, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-08 21:59:12');
INSERT INTO `t_history` VALUES (31, 2, '截至12月7日24时新型冠状病毒肺炎疫情最新情况', 5, 0, '2021-12-08 22:27:56');
INSERT INTO `t_history` VALUES (32, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 8, 0, '2021-12-08 22:28:00');
INSERT INTO `t_history` VALUES (33, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-08 22:35:57');
INSERT INTO `t_history` VALUES (34, 2, '美国“外交抵制”冬奥会行径注定失败', 3, 0, '2021-12-08 22:36:03');
INSERT INTO `t_history` VALUES (35, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-08 22:38:07');
INSERT INTO `t_history` VALUES (36, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-08 22:39:10');
INSERT INTO `t_history` VALUES (37, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-08 23:31:41');
INSERT INTO `t_history` VALUES (38, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-09 10:29:57');
INSERT INTO `t_history` VALUES (40, 2, '美国“外交抵制”冬奥会行径注定失败', 3, 0, '2021-12-09 11:16:04');
INSERT INTO `t_history` VALUES (41, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-09 11:16:36');
INSERT INTO `t_history` VALUES (42, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-09 11:27:57');
INSERT INTO `t_history` VALUES (43, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-09 11:28:07');
INSERT INTO `t_history` VALUES (44, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-09 11:36:43');
INSERT INTO `t_history` VALUES (45, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-09 13:23:07');
INSERT INTO `t_history` VALUES (46, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-09 13:23:12');
INSERT INTO `t_history` VALUES (47, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-11 09:54:14');
INSERT INTO `t_history` VALUES (48, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-11 09:57:11');
INSERT INTO `t_history` VALUES (49, 2, '美国“外交抵制”冬奥会行径注定失败', 3, 0, '2021-12-11 09:57:16');
INSERT INTO `t_history` VALUES (50, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-12 13:44:26');
INSERT INTO `t_history` VALUES (51, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-13 01:15:46');
INSERT INTO `t_history` VALUES (52, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-13 14:17:31');
INSERT INTO `t_history` VALUES (53, 2, '神舟十二号航天员乘组天外归来首次公开亮相', 6, 0, '2021-12-13 14:17:37');
INSERT INTO `t_history` VALUES (54, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-13 14:17:57');
INSERT INTO `t_history` VALUES (55, 2, '延庆冬奥村（冬残奥村）开展“全要素”运行测试', 3, 0, '2021-12-13 15:20:13');
INSERT INTO `t_history` VALUES (56, 2, '湖南高院女法官遇害案罪犯向慧，被执行死刑', 7, 0, '2021-12-13 19:15:37');
INSERT INTO `t_history` VALUES (57, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-13 19:16:16');
INSERT INTO `t_history` VALUES (58, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-13 19:16:20');
INSERT INTO `t_history` VALUES (59, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-13 19:43:05');
INSERT INTO `t_history` VALUES (60, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-13 19:43:09');
INSERT INTO `t_history` VALUES (61, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-16 19:13:07');
INSERT INTO `t_history` VALUES (62, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-16 19:13:27');
INSERT INTO `t_history` VALUES (63, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-16 19:13:56');
INSERT INTO `t_history` VALUES (64, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-16 19:14:25');
INSERT INTO `t_history` VALUES (65, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-16 19:14:34');
INSERT INTO `t_history` VALUES (66, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-16 19:15:06');
INSERT INTO `t_history` VALUES (67, 1019, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-19 16:13:55');
INSERT INTO `t_history` VALUES (68, 2, '延庆冬奥村（冬残奥村）开展“全要素”运行测试', 3, 0, '2021-12-19 16:17:10');
INSERT INTO `t_history` VALUES (69, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-19 16:47:01');
INSERT INTO `t_history` VALUES (70, 2, '延庆冬奥村（冬残奥村）开展“全要素”运行测试', 3, 0, '2021-12-19 16:48:41');
INSERT INTO `t_history` VALUES (71, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-19 16:49:40');
INSERT INTO `t_history` VALUES (72, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-19 16:49:42');
INSERT INTO `t_history` VALUES (73, 2, '延庆冬奥村（冬残奥村）开展“全要素”运行测试', 3, 0, '2021-12-19 16:52:49');
INSERT INTO `t_history` VALUES (74, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-19 17:10:11');
INSERT INTO `t_history` VALUES (75, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-20 21:28:56');
INSERT INTO `t_history` VALUES (76, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-20 22:09:51');
INSERT INTO `t_history` VALUES (77, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-20 22:13:55');
INSERT INTO `t_history` VALUES (78, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-20 22:14:03');
INSERT INTO `t_history` VALUES (79, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-20 22:14:08');
INSERT INTO `t_history` VALUES (80, 2, '延庆冬奥村（冬残奥村）开展“全要素”运行测试', 3, 0, '2021-12-20 22:21:25');
INSERT INTO `t_history` VALUES (81, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-20 22:23:00');
INSERT INTO `t_history` VALUES (82, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-20 22:23:02');
INSERT INTO `t_history` VALUES (83, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-20 22:23:14');
INSERT INTO `t_history` VALUES (84, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-20 23:50:48');
INSERT INTO `t_history` VALUES (85, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-20 23:50:56');
INSERT INTO `t_history` VALUES (86, 2, '让更多人触摸珍藏的历史——老英雄孙景坤捐赠十六枚奖章记事', 4, 0, '2021-12-21 14:19:45');
INSERT INTO `t_history` VALUES (87, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-21 22:05:34');
INSERT INTO `t_history` VALUES (88, 2, '权威快报 | 我国快递年业务量首次突破千亿件大关', 2, 0, '2021-12-22 14:55:25');
INSERT INTO `t_history` VALUES (89, 2, '实现民主自由人权，中国做对了什么？', 1, 0, '2021-12-22 15:20:32');

-- ----------------------------
-- Table structure for t_homelist
-- ----------------------------
DROP TABLE IF EXISTS `t_homelist`;
CREATE TABLE `t_homelist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `routename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新闻类型[]',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_homelist
-- ----------------------------
INSERT INTO `t_homelist` VALUES (1, '推荐', '1', NULL, NULL);
INSERT INTO `t_homelist` VALUES (2, '要闻新思想', '2', NULL, NULL);
INSERT INTO `t_homelist` VALUES (3, '北京', '3', NULL, NULL);
INSERT INTO `t_homelist` VALUES (4, '综合', '4', NULL, NULL);
INSERT INTO `t_homelist` VALUES (5, '发布', '5', NULL, NULL);
INSERT INTO `t_homelist` VALUES (6, '实践', '6', NULL, NULL);

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日志记录时间',
  `ClassName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '日志记录类名',
  `MethodName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '日志记录方法名',
  `LogDetail` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '日志错误详情',
  `Note` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `IsOK` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '是否解决 0:未解决，1:解决 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (1, '2021-10-22 11:18:21', 'AdminController', 'UpUser', '500 java.lang.null', '错误已解决，解决时间为:2021-12-03 10:38:45', '1');
INSERT INTO `t_log` VALUES (19, '2021-12-03 09:19:01', 'LogController', 'AddNote', 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'Note\' not found. Available parameters are [logEntity, param1]', '错误已解决，解决时间为:2021-12-03 10:28:40', '0');
INSERT INTO `t_log` VALUES (3, '2021-11-25 09:20:21', 'AdminController', 'UpUser', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'username\'\r\n### The error may exist in file [G:\\IDE\\bishe\\zjffabc\\target\\classes\\mapper\\AdminMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE t_user SET nickname= ?,username= ?,                           phone= ?, sex= ? , email= ?         WHERE id = ?\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'username\'\n; Duplicate entry \'1\' for key \'username\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'username\'', '错误已解决，解决时间为:2021-12-03 10:32:57', '1');
INSERT INTO `t_log` VALUES (4, '2021-11-25 09:20:27', 'AdminController', 'UpdateUser', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'1\' for column \'birthday\' at row 1\r\n### The error may exist in file [G:\\IDE\\bishe\\zjffabc\\target\\classes\\mapper\\AdminMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE t_user SET headImg=?,nickname= ?,phone=?,sex=?,birthday=?,address=?         WHERE id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'1\' for column \'birthday\' at row 1\n; Data truncation: Incorrect date value: \'1\' for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'1\' for column \'birthday\' at row 1', '错误已解决，解决时间为:2021-12-03 09:38:52', '1');
INSERT INTO `t_log` VALUES (5, '2021-11-25 09:21:49', 'AdminController', 'UpUser', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'username\'\r\n### The error may exist in file [G:\\IDE\\bishe\\zjffabc\\target\\classes\\mapper\\AdminMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE t_user SET nickname= ?,username= ?,                           phone= ?, sex= ? , email= ?         WHERE id = ?\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'username\'\n; Duplicate entry \'1\' for key \'username\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'username\'', '错误已解决，解决时间为:2021-12-03 10:41:27', '1');
INSERT INTO `t_log` VALUES (6, '2021-11-25 09:21:56', 'AdminController', 'UpUser', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'username\'\r\n### The error may exist in file [G:\\IDE\\bishe\\zjffabc\\target\\classes\\mapper\\AdminMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: UPDATE t_user SET nickname= ?,username= ?,                           phone= ?, sex= ? , email= ?         WHERE id = ?\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'username\'\n; Duplicate entry \'1\' for key \'username\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1\' for key \'username\'', '错误已解决，解决时间为:2021-12-03 10:40:55', '0');
INSERT INTO `t_log` VALUES (7, '2021-11-25 10:59:03', 'AdminController', 'UpdateUserImg', '系统找不到指定的路径。', '错误已解决，解决时间为:2021-12-03 10:44:00', '1');
INSERT INTO `t_log` VALUES (8, '2021-11-25 11:00:25', 'AdminController', 'UpdateUserImg', '系统找不到指定的路径。', '错误已解决，解决时间为:2021-12-03 10:26:50', '1');
INSERT INTO `t_log` VALUES (9, '2021-11-25 11:06:22', 'AdminController', 'UpdateUserImg', '系统找不到指定的路径。', '错误已解决，解决时间为:2021-12-03 09:53:35', '1');
INSERT INTO `t_log` VALUES (10, '2021-11-29 17:56:42', 'AdminController', 'UpdateUserImg', '系统找不到指定的路径。', '错误已解决，解决时间为:2021-12-03 10:04:13', '1');
INSERT INTO `t_log` VALUES (11, '2021-11-30 14:00:17', 'AdminController', 'UpdateUserImg', '系统找不到指定的路径。', '错误已解决，解决时间为:2021-12-09 13:39:32', '1');
INSERT INTO `t_log` VALUES (12, '2021-11-30 14:09:30', 'AdminController', 'UpdateUserImg', '系统找不到指定的路径。', NULL, '0');
INSERT INTO `t_log` VALUES (13, '2021-11-30 14:09:35', 'AdminController', 'UpdateUserImg', '系统找不到指定的路径。', NULL, '0');
INSERT INTO `t_log` VALUES (14, '2021-12-01 10:01:19', 'AdminController', 'UpdateUser', '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'12/4\' for column \'birthday\' at row 1\n### The error may exist in file [/www/server/tomcat/webapps/zjffabc/WEB-INF/classes/mapper/AdminMapper.xml]\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: UPDATE t_user SET headImg=?,nickname= ?,phone=?,sex=?,birthday=?,address=?         WHERE id = ?\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'12/4\' for column \'birthday\' at row 1\n; Data truncation: Incorrect date value: \'12/4\' for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'12/4\' for column \'birthday\' at row 1', NULL, '0');
INSERT INTO `t_log` VALUES (15, '2021-12-02 11:08:53', 'AdminController', 'UpdateUser', '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Sun Nov 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1\n### The error may exist in file [/www/server/tomcat/webapps/zjffabc/WEB-INF/classes/mapper/AdminMapper.xml]\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: UPDATE t_user SET headImg=?,nickname= ?,phone=?,sex=?,birthday=?,address=?         WHERE id = ?\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Sun Nov 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1\n; Data truncation: Incorrect date value: \'Sun Nov 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Sun Nov 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1', NULL, '0');
INSERT INTO `t_log` VALUES (16, '2021-12-02 11:09:05', 'AdminController', 'UpdateUser', '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Sun Mar 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1\n### The error may exist in file [/www/server/tomcat/webapps/zjffabc/WEB-INF/classes/mapper/AdminMapper.xml]\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: UPDATE t_user SET headImg=?,nickname= ?,phone=?,sex=?,birthday=?,address=?         WHERE id = ?\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Sun Mar 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1\n; Data truncation: Incorrect date value: \'Sun Mar 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Sun Mar 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1', NULL, '0');
INSERT INTO `t_log` VALUES (17, '2021-12-02 11:09:34', 'AdminController', 'UpdateUser', '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Sat Aug 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1\n### The error may exist in file [/www/server/tomcat/webapps/zjffabc/WEB-INF/classes/mapper/AdminMapper.xml]\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: UPDATE t_user SET headImg=?,nickname= ?,phone=?,sex=?,birthday=?,address=?         WHERE id = ?\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Sat Aug 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1\n; Data truncation: Incorrect date value: \'Sat Aug 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Sat Aug 01 2020 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1', NULL, '0');
INSERT INTO `t_log` VALUES (18, '2021-12-02 11:10:53', 'AdminController', 'UpdateUser', '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu May 01 1980 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1\n### The error may exist in file [/www/server/tomcat/webapps/zjffabc/WEB-INF/classes/mapper/AdminMapper.xml]\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: UPDATE t_user SET headImg=?,nickname= ?,phone=?,sex=?,birthday=?,address=?         WHERE id = ?\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu May 01 1980 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1\n; Data truncation: Incorrect date value: \'Thu May 01 1980 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Incorrect date value: \'Thu May 01 1980 00:00:00 GMT+0800 (中国标准时间)\' for column \'birthday\' at row 1', NULL, '0');
INSERT INTO `t_log` VALUES (20, '2021-12-03 09:19:09', 'LogController', 'AddNote', 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'Note\' not found. Available parameters are [logEntity, param1]', NULL, '0');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `useridfrom` int(11) NOT NULL COMMENT '收件人id',
  `useridto` int(11) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '发送内容',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '发送类型，0:邮件，1:短信',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '发送状态，0:发送成功，1:发送失败',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发送时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (1, 1, 1, '邮件内容：', '0', '0', '2021-11-09 15:24:08');

-- ----------------------------
-- Table structure for t_point
-- ----------------------------
DROP TABLE IF EXISTS `t_point`;
CREATE TABLE `t_point`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `dpoint` int(11) DEFAULT 0 COMMENT '点数',
  `dpointId` int(11) DEFAULT NULL COMMENT '点数id',
  `fuserid` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `fuserid`(`fuserid`) USING BTREE COMMENT 'fuserid不重复'
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_point
-- ----------------------------
INSERT INTO `t_point` VALUES (1, 39, 1, 1);
INSERT INTO `t_point` VALUES (2, 53, 2, 2);
INSERT INTO `t_point` VALUES (3, 3, 3, 3);
INSERT INTO `t_point` VALUES (4, 0, 4, 4);
INSERT INTO `t_point` VALUES (6, 0, NULL, 5);
INSERT INTO `t_point` VALUES (7, 0, NULL, 6);
INSERT INTO `t_point` VALUES (8, 0, NULL, 1033);
INSERT INTO `t_point` VALUES (11, 0, NULL, 1030);
INSERT INTO `t_point` VALUES (12, 0, NULL, 1019);

-- ----------------------------
-- Table structure for t_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `commentid` int(11) DEFAULT NULL COMMENT '评论id',
  `userid` int(11) DEFAULT NULL COMMENT '回复用户id',
  `replycontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '回复内容',
  `replytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '回复类型',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_reply
-- ----------------------------
INSERT INTO `t_reply` VALUES (1, 1, 1, '回复内容22', '1', '2021-11-30 16:38:55');
INSERT INTO `t_reply` VALUES (3, 3, 3, '2', '0', '2021-11-30 19:05:25');
INSERT INTO `t_reply` VALUES (5, 1, 1, '213123', '0', '2021-11-30 19:30:14');

-- ----------------------------
-- Table structure for t_search
-- ----------------------------
DROP TABLE IF EXISTS `t_search`;
CREATE TABLE `t_search`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `t_subscribe`;
CREATE TABLE `t_subscribe`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userid` int(255) DEFAULT NULL COMMENT 'userid',
  `fuserid` int(11) DEFAULT NULL COMMENT 'fuserid',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订阅时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_subscribe
-- ----------------------------
INSERT INTO `t_subscribe` VALUES (8, 1, 5, '2021-12-08 20:50:19');
INSERT INTO `t_subscribe` VALUES (26, 2, 1, '2021-12-13 14:17:22');
INSERT INTO `t_subscribe` VALUES (27, 2, 2, '2021-12-16 19:17:35');
INSERT INTO `t_subscribe` VALUES (28, 2, 2, '2021-12-16 19:17:52');
INSERT INTO `t_subscribe` VALUES (29, 2, 2, '2021-12-22 14:59:28');

-- ----------------------------
-- Table structure for t_swiper
-- ----------------------------
DROP TABLE IF EXISTS `t_swiper`;
CREATE TABLE `t_swiper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `articleid` int(11) DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '轮播图',
  `routename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '路由名称',
  `reamrk` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '重新标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_swiper
-- ----------------------------
INSERT INTO `t_swiper` VALUES (0, 0, '', '', '');
INSERT INTO `t_swiper` VALUES (1, 1, 'http://114.55.59.237:8080/image/%E8%BD%AE%E6%92%AD%E5%9B%BE/%E8%BD%AE%E6%92%AD%E5%9B%BE1.jpg', '1', '1');
INSERT INTO `t_swiper` VALUES (2, 2, 'http://114.55.59.237:8080/image/%E8%BD%AE%E6%92%AD%E5%9B%BE/%E8%BD%AE%E6%92%AD%E5%9B%BE2.jpg', '1', '1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '123' COMMENT '密码',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '11011011011' COMMENT '电话',
  `headImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto' COMMENT '头像',
  `qrcodeImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967' COMMENT '二维码图片',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '男' COMMENT '性别',
  `birthday` date DEFAULT '2021-11-05' COMMENT '生日',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '浙江省宁波市镇海区风华路495号' COMMENT '地址',
  `status` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0' COMMENT '状态(0正常，1封禁)',
  `card` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '123456789123456789' COMMENT '身份证',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '123456789@163.com' COMMENT '邮箱',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'salt',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE COMMENT '用户名不重复'
) ENGINE = InnoDB AUTO_INCREMENT = 1044 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '秦始皇', 'qwe', '123', '11011011011', 'http://114.55.59.237:8080/image/_收藏.png', 'http://114.55.59.237:8080/image/qrcode_www.baidu.com.png', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (2, '刘 邦777', 'wer', '123', '13736945770', 'http://114.55.59.237:8080/image/头像2.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '女', '1980-11-01', '北京市/北京市/西城区', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (4, '武则天', 'wzt', '123456', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'http://114.55.59.237:8080/image/test.jpg', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (5, '赵匡胤', 'dsg', '123456', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (6, '朱元璋', 'hhn', '123456', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (7, '成吉思汗', 'cjsh', '123456', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (8, '康熙', 'kangxi', '123456', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (9, '雍正', 'yongzheng', '123456', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (10, '乾隆', 'qianlong', '123456', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (11, '管仲', 'guanzhong', '123456', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (12, '李斯', 'lisi', '123', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (13, '萧何', 'xiaohe', '123', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (14, '曹操', 'cc', '123', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (15, '诸葛亮', 'zgl', '123', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (16, '狄仁杰', 'direnjie', '123', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (17, '赵普', 'zp', '123', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (18, '耶律楚材', 'yelv', '123', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (19, '张居正', 'zjz', '123', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (20, 'w', '17', '123', '11011011011', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', '');
INSERT INTO `t_user` VALUES (22, 'wc', 'woz', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1006, NULL, 'woz1', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1009, NULL, 'woz123', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1011, NULL, 'woz123123', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1014, NULL, 'woz1123', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1015, NULL, 'woz1123444', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1016, NULL, 'wo123z1123444', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1018, NULL, '123', '123', '123', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1019, NULL, '123123', '123', '123', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1020, NULL, '123123123', '123', '123', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1022, NULL, '1231231231', '1231', '123', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1024, NULL, 'woz1123444df', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1026, NULL, 'woz1123444df123123', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1028, NULL, 'woz1123444df1231231', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1030, NULL, 'wds', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1032, NULL, 'woz1123444df12312311', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1033, NULL, 'wdss', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1034, NULL, 'woz1123444df123123111', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1035, NULL, '12312312311', '12311', '123', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1036, '', '', '', '', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1038, '1', '1', '1', '1', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '1', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1039, NULL, '1231231', '123123', '13736945332', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', NULL, '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1040, '打牛逼', 'fff', '123', '13100000000', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1041, NULL, 'qweasdzxc', 'qwe', '13736945779', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', NULL, '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1042, NULL, 'qweqwe', 'qweqwe', '13736945770', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', NULL, '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);
INSERT INTO `t_user` VALUES (1043, 'niubiaaaa', 'asdasd', '123', '13736945779', 'https://img2.baidu.com/it/u=1139259069,3728671473&fm=26&fmt=auto', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F019e565c371968a80121fbb08ab405.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1639193085&t=2b5106a78155be4e12b03fe8198b5967', '男', '2021-11-05', '浙江省宁波市镇海区风华路495号', '0', '123456789123456789', '123456789@163.com', NULL);

-- ----------------------------
-- Table structure for t_video
-- ----------------------------
DROP TABLE IF EXISTS `t_video`;
CREATE TABLE `t_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '视频标题',
  `pathurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '视频来源',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '封面图',
  `from` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '视频来源',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '视频简介',
  `clickcount` int(11) DEFAULT NULL COMMENT '视频点击（阅读）',
  `likecount` int(11) DEFAULT NULL COMMENT '视频喜欢（点赞）',
  `star` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '星星',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `userid` int(11) DEFAULT NULL COMMENT 'userid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_video
-- ----------------------------
INSERT INTO `t_video` VALUES (1, '实现民主自由人权，中国做对了什么？', 'http://114.55.59.237:8080/video/v1.mp4', 'http://114.55.59.237:8080/image/a1.jpg', '1', '新华社北京12月7日电 题：实现民主自由人权，中国做对了什么？', 1, 11, '5', '2021-11-17 09:07:03', 2);
INSERT INTO `t_video` VALUES (2, '美国“外交抵制”冬奥会行径注定失败', 'http://114.55.59.237:8080/video/v3.mp4', 'http://114.55.59.237:8080/image/v3.jpg', '1', '新华社北京12月6日电', 1, 1, '3.5', '2021-11-17 09:53:25', 1);
INSERT INTO `t_video` VALUES (3, '印度空军一直升机坠毁 一高级军官或身亡', 'http://114.55.59.237:8080/video/v2.mp4', 'http://114.55.59.237:8080/image/v2.jpg', '1', '据报道，当地军方人员已到达现场，事发现场已经找到两名烧伤面积达80%的乘客，二人已被送往当地医院，事故地区几乎看不到尸体。军方已下令进行调查以确定事故原因。', 1, 11, '2.5', '2021-11-17 09:07:03', 2);
INSERT INTO `t_video` VALUES (4, '拍案丨十个月抓获千名违法犯罪人员，这起跨国（边）境重特大偷渡案件告破', 'http://114.55.59.237:8080/video/v4.mp4', 'http://114.55.59.237:8080/image/v4.jpg', '1', '普洱支队立即上报案情并成立专案组立案侦查，发现一个以境外“蛇头”张某为首的重大跨国（边）境偷渡犯罪团伙。该团伙采取货车藏匿、绕关避卡、分段运送等方式，组织运送中国籍人员非法出境，并将在境外从事违法犯罪活动的人员偷运回国内。专案组加大力度延伸侦查，抓获了包括某境外电信网络诈骗窝点头目在内的34名犯罪嫌疑人。', 1, 1, '4', '2021-11-17 09:53:25', 1);
INSERT INTO `t_video` VALUES (5, '卫星“瞰”雄安容西片区、雄东片区，妙不可言！', 'http://114.55.59.237:8080/video/v5.mp4', 'http://114.55.59.237:8080/image/v5.jpg', '1', '当前雄安新区已经进入承接北京非首都功能疏解和大规模开发建设\r\n同步推进的重要阶段容西片区、雄东片区等项目建设如火如荼规划蓝图正逐步变为现实在深入其中领略建设现场热火朝天的景象时你是否幻想过从高处俯瞰是一种怎样的震撼与磅礴？中国雄安官网联合河北省基础地理信息中心\r\n带你换个角度看雄安跟随高分二号卫星饱览这座城市的蓬勃发展、日新月异', 1, 11, '3.5', '2021-12-04 09:07:03', 2);
INSERT INTO `t_video` VALUES (6, '“致敬这些让我们泪目而震撼的榜样!”《我们是第一书记》在山西点映引学子共鸣', 'http://114.55.59.237:8080/video/v6.mp4', 'http://114.55.59.237:8080/image/v6.jpg', '1', '据悉，由新华社荣誉出品，新华网、北京精彩、北京人杰、华录百纳联合出品的电影《我们是第一书记》，3日起在全国上映。该片是国内新闻领域首次尝试以新闻素材依托电影方式进行融合创作的大银幕作品，以平凡视角讲述了多地扶贫驻村第一书记带领村民搞产业、办教育、抗天灾、保丰收、易地扶贫搬迁的感人事迹。', 1, 1, '4', '2021-11-17 09:53:25', 1);
INSERT INTO `t_video` VALUES (7, '冬日“枫”景：江西大余红枫迎来最佳观赏期', 'http://114.55.59.237:8080/video/v7.mp4', 'http://114.55.59.237:8080/image/v7.jpg', '1', '每到冬季，走入大山深处，满眼梦幻般的红枫铺天盖地，让人陶醉，不禁令人感叹“看万山红遍，层林尽染”。大片的红枫红得娇艳、艳得欲滴，满枝的叶片已完全舒展，远远望去，高低错落，呈现出鲜红、嫩红、艳红等色彩，在阳光的照射下，褶褶生辉，非常可人。走进细细端详，每个叶片上的小角已完全舒展，散发出晶莹的红色，如同色泽饱满的红宝石打磨出的珍品，让人看着爱不释手。', 1, 11, '4.5', '2021-11-17 09:07:03', 2);
INSERT INTO `t_video` VALUES (8, '鄱阳湖开启最美观鸟季，“白鹤亮翅”惊艳全场', 'http://114.55.59.237:8080/video/v8.mp4', 'http://114.55.59.237:8080/image/v8.jpg', '1', '随着白鹤大量南归，万千候鸟陆续抵达鄱阳湖，观鸟正当时。12月11日至13日举办的第二届鄱阳湖国际观鸟周活动，将带您感受“鄱湖美、与鹤舞、人欢乐”的无穷魅力。', 1, 1, '4', '2021-11-17 09:53:25', 1);
INSERT INTO `t_video` VALUES (9, '首都师范大学党委书记孟繁华：加强一流基础学科建设 支撑高水平的教师教育', 'http://114.55.59.237:8080/video/v9.mp4', 'http://114.55.59.237:8080/image/v9.jpg', '1', '12月2日至3日，以“守望未来 智教之道”为主题的第十二届新华网教育论坛在京成功举办。本次论坛聚焦高等教育、基础教育、职业教育、国际教育四大领域的难点、热点问题，前瞻教育发展之势，研判教育改革之策，为教育高质量发展提供智力支撑。', 1, 11, '3.5', '2021-11-17 09:07:03', 2);
INSERT INTO `t_video` VALUES (10, '中国空间站首次太空授课活动取得圆满成功', 'http://114.55.59.237:8080/video/v10.mp4', 'http://114.55.59.237:8080/image/v10.jpg', '1', '中国科技馆科普讲师团副团长陈征表示，太空授课并不是单纯的灌输知识，不希望去进行这样的延伸，因为航天员的太空授课内容，对孩子而言是一种启发，就是希望用实验的方式，用天地互动的方式，去激发孩子们的好奇心，起到一个引领的作用。', 1, 1, '4', '2021-11-17 09:53:25', 1);

SET FOREIGN_KEY_CHECKS = 1;
