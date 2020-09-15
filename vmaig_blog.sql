-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: vmaig_blog
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_4e4d53fae08b26a6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_4e4d53fae08b26a6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_56d7985d9fa72bb_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_2faf3e84f4e3c68c_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 导航条',6,'add_nav'),(17,'Can change 导航条',6,'change_nav'),(18,'Can delete 导航条',6,'delete_nav'),(19,'Can add 分类',7,'add_category'),(20,'Can change 分类',7,'change_category'),(21,'Can delete 分类',7,'delete_category'),(22,'Can add 文章',8,'add_article'),(23,'Can change 文章',8,'change_article'),(24,'Can delete 文章',8,'delete_article'),(25,'Can add 专栏',9,'add_column'),(26,'Can change 专栏',9,'change_column'),(27,'Can delete 专栏',9,'delete_column'),(28,'Can add 轮播',10,'add_carousel'),(29,'Can change 轮播',10,'change_carousel'),(30,'Can delete 轮播',10,'delete_carousel'),(31,'Can add 资讯',11,'add_news'),(32,'Can change 资讯',11,'change_news'),(33,'Can delete 资讯',11,'delete_news'),(34,'Can add user',12,'add_vmaiguser'),(35,'Can change user',12,'change_vmaiguser'),(36,'Can delete user',12,'delete_vmaiguser'),(37,'Can add 评论',13,'add_comment'),(38,'Can change 评论',13,'change_comment'),(39,'Can delete 评论',13,'delete_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `en_title` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `summary` longtext NOT NULL,
  `content` longtext NOT NULL,
  `view_times` int(11) NOT NULL,
  `zan_times` int(11) NOT NULL,
  `is_top` tinyint(1) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_4f331e2f` (`author_id`),
  KEY `blog_article_b583a629` (`category_id`),
  CONSTRAINT `blog_artic_author_id_252e836fa11c2bf3_fk_vmaig_auth_vmaiguser_id` FOREIGN KEY (`author_id`) REFERENCES `vmaig_auth_vmaiguser` (`id`),
  CONSTRAINT `blog_article_category_id_398653ada1ade9d4_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (8,'关于作者','about_me','https://img-blog.csdnimg.cn/20200403161647646.jpeg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjY2ODc3,size_16,color_FFFFFF,t_70','关于作者','### 关于作者\r\n```\r\n屏幕前的盆友，你好，我叫樊丁，是一名不甘于做一名程序的程序员，呵呵，这句话虽然有点绕，却是我内心想要表达的。我想做的事情有很多，可是现在手头上最重要的事情只有一件，那就是\r\n```','### 关于作者\r\n```\r\n屏幕前的盆友，你好，我叫樊丁，是一名不甘于做一名程序的程序员，呵呵，这句话虽然有点绕，却是我内心想要表达的。我想做的事情有很多，可是现在手头上最重要的事情只有一件，那就是谋生，我想最起码大部分的人应该是这样。我很幸运选择了计算机这个行业，在亲身体验过后，这个行业的就业机会还是蛮多的，在薪资待遇方面也不错。如果你从事的是其他行业，如果有兴趣的话，欢迎加入这个行列，注意，我说的是如果有兴趣。其实，学习编程是一件比较枯燥的事情，如果不感兴趣是很难坚持下去的。我个人接触编程也已经有几年了，由于我对这些东西有那么一点小小的兴趣，所以也就没感觉到有多枯燥。但是身边却有很多人是放弃了的，一问原因，都是不喜欢。\r\n```\r\n\r\n### 对编程的误解\r\n- 编程看上去都是英文，我英语不好，选择放弃。\r\n- 学编程，那么多字母要敲，我记不住啊，我放弃。\r\n- 写一个东西，代码好几百行，好几千行，甚至更多，太麻烦，我选择放弃。\r\n- ......\r\n\r\n### 解决误解\r\n- 英文底子问题：其实如果只作为一般的程序员的话，对英语的要求也不是特别高，可是就是有的人说英语很重要，这是为什么呢，其实想往深了研究技术，没点英语水平可能是真的不行，现在很多比较优秀的资料还有技术都是以英文的形式呈现给我们的，虽然有翻译版，可是与原来的意思总会有些偏差，有些东西甚至用翻译工具都不好使。此刻英语就成为你上升的瓶颈之一了。\r\n- 字母多问题：别看平时我们敲那么多字母，其实有很多是我们起的变量名，变量名你可以随便起，拼音都可以，（不过一般我们不这么干，怕同行笑话），真正要记的单词也就那么几个，不要误解。\r\n- 代码量大问题：有句话不是告诉我们要站在巨人的肩膀上干活么，其实很多代码都是复制黏贴过来的（我们行内俗称CV大法），我们自己只写一部分就好了。现在有很多东西都是进行封装过了的，我们直接拿过来用就好了，没必要重复的去构造轮子。\r\n- 扯句没用的，平时我们在抖音上偶尔会刷到一些视屏，稍微写几行代码，就会出来一个很炫酷的东西，其实他们就是用了别人造好的轮子，只要引入就好了，没什么特别的东西。\r\n\r\n### 上道前所备技能\r\n- 选择方向：编程的方向有很多，有后台开发、爬虫、数据分析、大数据、算法方向，还有一些偏硬件的嵌入式开发等等方向，所以要慎重选择，主打一个方向，其他方向为辅，一旦选择一个方向，不要轻易改变。\r\n- 禁用CV大法：CV大法是比较高阶的武功，入门级同学禁止修炼，怕你最后学艺不精，走火入门，前期还是需要多敲代码，多练感觉。\r\n- 找一套比较系统的资料（入门的话介意视屏资料）去学习，体系化的去构建你的编程思维，不要一会儿学下这个一会儿学下那个的。（敲黑板）\r\n- 入门初期，尽量找个人去带你，那样会少走很多弯路，节省很多时间，少掉很多头发。\r\n- 学习的时候一定要去做笔记，方便后期查阅。（敲黑板），现在做笔记的工具还是很多的，可以用博客记录像CSDN、博客园等等，也可以使用一些做笔记的工具去记录，像有道云笔记、印象笔记等等，我个人比较喜欢使用Typora这个markdown文本编辑器来做笔记，然后配合gitHub做保存，还有一些的话会发布到微信公众号和当前网站上。\r\n- 搭环境，一般这是个考验心态的活儿，刚学习肯定要搭建开发环境的，在这个环节中我们容易被扼杀在摇篮中，有很多人在这一步就放弃了，当你跟着教程去搭建的时候，难免会报出各种问题，此刻你要安耐住你要把电脑吃了的冲动，多采坑，多问人，后面学习循序渐进的话，是不会有这么难的，所以上面说，入门找视屏学习，然后最好还能找个人去指导你。作者深有体会，在大学时由于开发环境搭建不起来，放弃了好多东西（龇牙龇牙）。\r\n- 广告植入时刻，如果你想学习技术，可以加我微信，或者QQ群（该网站随处都可以找到这些信息，哈哈），我们可以相互交流，共同进步。\r\n\r\n### 我的期望\r\n- 以后该网站会发布一些系统成体系的技术文章，由浅入深，希望可以帮到你们。\r\n- 写一些有意义的开源项目，分享给大家，比如该博客的搭建，然后配合我写过的一些插件，可以很快速的将你想要的信息记录下来（后期专门有更详细文章进行说明）。\r\n- 通过该网站的建设，聚集一些真正在技术上志同道合的朋友，我们一起交流共同进步。（欢迎加我微信拉你入群或直接加QQ群，以这样的方式加入我们，然后多多交流平时所遇到的问题）\r\n- 通过手机打开该网站可能看不到我的联系方式，不要慌，将手机浏览切换到桌面模式或者用电脑打开该网站就可以看到了，介意使用电脑浏览该网站，那样体验更好。\r\n\r\n### 其他\r\n- 业界有句调侃我们程序员的话是这样说的，\'钱多话少去的早，程序员你值得拥有\'。\r\n\r\n',135,0,1,0,0,'2020-04-01 23:45:00.000000','2020-04-01 23:45:23.766185','2020-09-14 15:38:48.112046',1,7),(9,'博客文章提取插件','get_blog','https://img-blog.csdnimg.cn/20200403162159901.jpeg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjY2ODc3,size_16,color_FFFFFF,t_70','工具,推介工具,Chrome','# 文章内容提取工具\r\n\r\n## 功能描述\r\n\r\n```\r\n将一些平台上的文章（如csdn、博客园、掘金社区等等），快速转化成md文档，从而成为自己的笔记保存起来。\r\n```','# 文章内容提取工具\r\n\r\n## 功能描述\r\n\r\n```\r\n将一些平台上的文章（如csdn、博客园、掘金社区等等），快速转化成md文档，从而成为自己的笔记保存起来。\r\n```\r\n\r\n## 插件的导入\r\n\r\n### 方式一\r\n\r\n- 1、将本项目克隆到本地：git clone https://github.com/fandsimple/chrome_copy.git\r\n\r\n- 2、打开chrome浏览器，一次点击如下图红框圈住的地方\r\n![](/media/editor/1_20200402140346539965.png)\r\n\r\n- 3、按如上操作会出现如下界面，注意红框圈住的地方，一般来说开发者模式是关闭着的，我们需要打开。\r\n![](/media/editor/2_20200402140416302058.png)\r\n![](/media/editor/3_20200402140438590248.png)\r\n- 4、点击上图中的加载已解压的扩展程序，选择克隆下来的项目即可。\r\n![](/media/editor/4_20200402140450725115.png)\r\n\r\n- 5、最终导入成功时的样子\r\n![](/media/editor/5_20200402140501594938.png)\r\n\r\n### 方式二\r\n\r\n```\r\n暂略\r\n```\r\n\r\n## 插件使用描述\r\n\r\n- 点击我们插件图标\r\n![](/media/editor/6_20200402140535697476.png)\r\n\r\n  ```\r\n  可以看到有一些配置开关，如果将对应平台的开关打开，那么当我们在浏览对应平台的文章的时候，会自动添加\'导出文章\'按钮，我们使用csdn平台来举例，csdn平台的开关是打开的，故如下图：会出现红框圈住的导出文章按钮。当我们点击导出文章按钮，markdon格式的文章内容将存在电脑的粘贴板中，到时候我们可以打开markdown编辑工具，将内容复制进去，稍加修改，就成为我们自己的文章了。\r\n  ```\r\n![](/media/editor/10_20200402142735483675.png)\r\n\r\n- 转化效果\r\n![](/media/editor/8_20200402140640070757.png)\r\n\r\n## 平台支持\r\n\r\n- csdn\r\n- 博客园\r\n- 简书\r\n- 掘金（有bug，在解决）\r\n\r\n## 联系作者\r\n\r\n- 如果你经常使用的技术博客平台该插件不支持，联系作者，我们一起完善。\r\n\r\n- 有bug，欢迎提出来，我来解决。',74,0,0,0,0,'2020-04-02 14:08:00.000000','2020-04-02 14:08:14.143188','2020-09-15 00:02:13.764152',1,2),(10,'博客搭建','create_blog','https://img-blog.csdnimg.cn/20200403162428997.jpeg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjY2ODc3,size_16,color_FFFFFF,t_70','工具,推介工具,效率','# 功能\r\n1. 文章,分类,专栏的添加，删除，修改。支持**mrakdonwn**文本编辑器。支持文章中代码**高亮**。\r\n2. 实现**用户注册,登陆,修改密码,忘记重置密码**。通过**邮箱**通知注册用户, 用户忘记密码基于邮件（需要在setting.py设置好邮箱)。\r\n3. 实现**用户头像**，用户可以上传头像，然后编辑头像大小，然后保存，头像可以存在本地，也可自动保存在**七牛**云中（需要在setting.py 中设置好七牛的相关配置）。\r\n4. **支持评论**，实现了一个独立的评论系统。\r\n5. 首页支持显示**轮播**，显示最新评论，显示人气最高的文章。\r\n6. 首页支持显示**标签云**，拥有一个非常酷炫的便签云。\r\n7. 拥有一个**动态加载**的“全部文章”板块 可以显示所有文章分类，可以按照浏览数或者时间排序显示文章。\r\n8. 拥有一个以**时间轴**显示的非常酷炫的“新闻”板块，你可以每天在后台添加新闻。\r\n9. 支持**手机浏览**，对手机浏览进行了调整。\r\n10. 后台支持markdown编辑文章。\r\n','# 声明\r\n```\r\n该博客基于GitHub作者billvsme的博客系统再度优化和封装，首先向前辈致敬。\r\n```\r\n# 有问题欢迎加qq群\r\n樊樊家园技术交流qq群: 981094716  （注明加群目的）\r\n我的qq: 2094531487  \r\n如果搭建过程中遇到问题，比较着急的话可以通过该站中的二维码直接添加作者微信。\r\n\r\n\r\n# 更新日志\r\n2020-3-30博客基本功能完成，后台支持markdown文档的编辑和发布\r\n\r\n# 概述\r\n樊樊家园博客 是一个基于  **Django1.8**  跟  **Bootstrap3**  开发的 **博客系统** ，实现了一个博客完整的功能。http://49.233.143.57/（fanfanhome.cn正在备案） 就是基于该博客 搭建的。\r\n# 功能\r\n1. 文章,分类,专栏的添加，删除，修改。支持**mrakdonwn**文本编辑器。支持文章中代码**高亮**。\r\n2. 实现**用户注册,登陆,修改密码,忘记重置密码**。通过**邮箱**通知注册用户, 用户忘记密码基于邮件（需要在setting.py设置好邮箱)。\r\n3. 实现**用户头像**，用户可以上传头像，然后编辑头像大小，然后保存，头像可以存在本地，也可自动保存在**七牛**云中（需要在setting.py 中设置好七牛的相关配置）。\r\n4. **支持评论**，实现了一个独立的评论系统。\r\n5. 首页支持显示**轮播**，显示最新评论，显示人气最高的文章。\r\n6. 首页支持显示**标签云**，拥有一个非常酷炫的便签云。\r\n7. 拥有一个**动态加载**的“全部文章”板块 可以显示所有文章分类，可以按照浏览数或者时间排序显示文章。\r\n8. 拥有一个以**时间轴**显示的非常酷炫的“新闻”板块，你可以每天在后台添加新闻。\r\n9. 支持**手机浏览**，对手机浏览进行了调整。\r\n10. 后台支持markdown编辑文章。\r\n\r\n\r\n# 可访问如下链接进行预览\r\nhttp://49.233.143.57/  \r\n\r\n\r\n# 安装运行\r\n安装python3.6.7 :\r\n\r\n    教程略，网上一大堆\r\n\r\n下载代码,切换目录：\r\n    \r\n    gitHub地址： https://github.com/fandsimple/vmaig_blog\r\n	将该项目克隆到本地\r\n    cd vmaig_bolg\r\n    \r\n##### 安装所需要的的依赖包\r\n    pip install -r requirments.txt\r\n\r\n配置setting.py :\r\n\r\n    vim vmaig_blog/setting.py\r\n设置其中的  PAGE\\_NUM 每页显示文章数，EMAIL\\_HOST(你用的邮箱的smtp)，EMAIL\\_PORT(smtp端口)，EMAIL\\_HOST\\_USER(你的邮箱的用户名)，如果要使用七牛设置好七牛的相关配置。\r\nEMAIL\\_HOST\\_PASSWORD(你的邮箱密码)，\r\n```\r\n    #分页配置#######################################可选配置\r\n    PAGE_NUM = 3\r\n\r\n    #email配置#########################################必须配置\r\n    EMAIL_BACKEND = \'django.core.mail.backends.smtp.EmailBackend\'\r\n    EMAIL_HOST = \'\'                        #SMTP地址 例如: smtp.163.com\r\n    EMAIL_PORT = 25                        #SMTP端口 例如: 25\r\n    EMAIL_HOST_USER = \'\'                   #我自己的邮箱 例如: xxxxxx@163.com\r\n    EMAIL_HOST_PASSWORD = \'\'               #我的邮箱密码 例如  xxxxxxxxx\r\n    EMAIL_SUBJECT_PREFIX = u\'vmaig\'        #为邮件Subject-line前缀,默认是\'[django]\'\r\n    EMAIL_USE_TLS = True                   #与SMTP服务器通信时，是否启动TLS链接(安全链接)。默认是false\r\n\r\n    DEFAULT_FROM_EMAIL = EMAIL_HOST_USER\r\n\r\n    #七牛配置#######################################可选配置\r\n    qiniu_access_key = \'\'\r\n    qiniu_secret_key = \'\'\r\n    qiniu_bucket_name = \'\'\r\n```\r\n\r\n```\r\n# mysql数据库配置\r\n# 方式一\r\n\'default\': {\r\n        \'ENGINE\': \'django.db.backends.mysql\',\r\n        \'NAME\': \'vmaig_blog\', # 数据库名称，必须先在数据库软件中创建该数据库\r\n        \'USER\': \'root\', # 数据库用户名\r\n        \'PASSWORD\': \'123456\', # 数据库密码\r\n        \'HOST\': \'localhost\', # 数据库所在服务器地址\r\n        \'PORT\': 3306, # 端口\r\n        \'CONN_MAX_AGE\': 9,\r\n        \'OPTIONS\': {\r\n            \'charset\': \'utf8mb4\', # 指定编码\r\n        }\r\n    }\r\n\r\n# 方式二\r\n将settings.py中的这部分注释掉，将如下内容打开\r\n# \'default\': {\r\n    #     \'ENGINE\': \'django.db.backends.sqlite3\',\r\n    #     \'NAME\': os.path.join(BASE_DIR, \'db.sqlite3\'),\r\n    # },\r\n这样会选择sqlite数据库。\r\n如果该方式报错，检查sqlite数据库文件是否存在。\r\n\r\n以上两种方式可以任选一种。\r\n```\r\n\r\n\r\n\r\n初始化数据库 :\r\n\r\n    python manage.py makemigrations\r\n    python manage.py migrate\r\n    python manage.py createsuperuser (创建管理员)\r\n    \r\n运行 : \r\n    python manage.py runserver\r\n    \r\n# 接下来该干什么？\r\n在浏览器中输入 http://127.0.0.1:8000/admin  （后台地址）\r\n输入前面初始化数据库时的用户名密码。  \r\n后台中，可以  \r\n通过“轮播”添加首页的轮播  \r\n通过“导航条”添加首页nav中的项目  \r\n通过“专栏” 添加博客专栏（可以和导航条结合起来）  \r\n通过“资讯” 添加转载的新闻  \r\n通过“分类” “文章” 添加分类跟文章  \r\n通过“用户” 对用户进行操作  \r\n\r\n**特别注意**\r\n首页的便签云中的内容，在后台不能修改。\r\n请修改  blog/templates/blog/widgets/tags_cloud.html 中的 tags数组的内容。\r\n\r\n# 配套工具\r\n该博客支持以markdown文本形式发布文章，配合***[博客文章提取插件](http://49.233.143.57/article/get_blog.html \"博客文章提取插件\")***（点击跳转），可以快速将网页内容转化成markdown格式，从而整理发布到自己的博客上面，非常节省时间（敲黑板）',163,0,0,0,0,'2020-04-03 12:49:00.000000','2020-04-03 12:49:23.420642','2020-09-14 15:38:52.174044',1,2),(12,'Nginx+uWSGI+Django部署','develop','https://img-blog.csdnimg.cn/20200404102232417.jpeg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjY2ODc3,size_16,color_FFFFFF,t_70','运维,Linux','### Nginx+uWSGI+Django+Mysql部署FQA','# Nginx+uWSGI+Django部署FQA\r\n\r\n## 交互流程\r\n\r\n```\r\n浏览器<>Nginx<>uWSGI<>Django\r\n```\r\n\r\n## Nginx\r\n\r\n### 功能\r\n\r\n- 反向代理\r\n- 静态文件代理\r\n- 负载均衡\r\n  - 轮询策略\r\n  - ip哈希策略\r\n  - 最少连接策略\r\n  - …...\r\n\r\n### 操作命令\r\n\r\n- 测试配置文件：nginx -t\r\n- 重启nginx：nginx -s reload\r\n\r\n### 配置文件举例\r\n\r\n```nginx\r\nserver {\r\n            listen       80;\r\n            server_name  49.233.143.57; # 服务器外网ip\r\n\r\n        root   /home/ubuntu/vmaig_blog; # 项目根目录\r\n\r\n            location /static {\r\n                 alias /home/ubuntu/vmaig_blog/static; # 静态资源\r\n            }\r\n\r\n            location /static/tx {\r\n                 alias /home/ubuntu/vmaig_blog/vmaig_auth/static/tx; # 静态资源\r\n            }\r\n            location /media/editor {\r\n                 alias /home/ubuntu/vmaig_blog/uploads/editor; # 静态资源\r\n            }\r\n\r\n            location / { # 反向代理\r\n                include /etc/nginx/uwsgi_params;\r\n                uwsgi_pass 127.0.0.1:8000;\r\n            }\r\n\r\n    }\r\n```\r\n\r\n\r\n## uWSGI服务\r\n\r\n### WSGI\r\n\r\nWSGI 是一个Web服务器（如nginx）与应用服务器（如uWSGI）通信的一种规范（协议）。官方定义是，the Python Web Server Gateway Interface。从名字就可以看出来，这东西是一个Gateway，也就是网关。网关的作用就是在协议之间进行转换。\r\n\r\n在生产环境中使用WSGI作为python web的服务器。Python Web服务器网关接口，是Python应用程序或框架和Web服务器之间的一种接口，被广泛接受。WSGI没有官方的实现, 因为WSGI更像一个协议，只要遵照这些协议，WSGI应用(Application)都可以在任何服务器(Server)上运行。\r\n\r\n### uWSGI\r\n\r\nuWSGI 实现了WSGI的所有接口，是一个快速、自我修复、开发人员和系统管理员友好的服务器。把 HTTP 协议转化成语言支持的网络协议。uWSGI代码完全用C编写，效率高、性能稳定。\r\n\r\n### uwsgi\r\n\r\n（注意：此处为小写，是另一个东西，和 uWSGI 不一样）\r\nuwsgi是一种线路协议，不是通信协议，常用于在uWSGI服务器与其他网络服务器的数据通信。uwsgi协议是一个uWSGI服务器自有的协议，它用于定义传输信息的类型。\r\n\r\n### 常用操作命令\r\n\r\n- 启动：uwsgi --ini xxx.ini\r\n\r\n- 重启：uwsgi --reload xxx.pid\r\n\r\n- 停止：uwsgi --stop xxx.pid\r\n\r\n### 常用配置文件\r\n```python\r\n[uwsgi]\r\nsocket=127.0.0.1:8000 # 使用nginx连接时 使用\r\nchdir=/home/ubuntu/vmaig_blog # 配置工程目录\r\nwsgi-file=vmaig_blog/wsgi.py # 配置项目的wsgi目录。相对于工程目录\r\nprocesses=1 #配置进程，线程信息\r\nthreads=10\r\nenable-threads=True\r\nmaster=True\r\npidfile=uwsgi.pid\r\ndaemonize=/home/ubuntu/env/log/uwsgi_log/uwsgi.log\r\ndisable-logging = true\r\nplugins = python\r\npythonpath = /usr/local/python3.6.7S/lib/python3.6/site-packages\r\n```\r\n\r\n## Django\r\n\r\n- django中uwsgi.py模块是和uWSGI服务进行对接的。\r\n- 当关闭调试功能的时候，注意使用nginx静态资源代理功能。\r\n\r\n## 注意事项\r\n\r\n- 数据库创建的时候注意指定字符集和字符排序规则\r\n\r\n  - CREATE DATABASE `vmaig_blog` CHARACTER SET utf8 COLLATE utf8_general_ci;\r\n\r\n- 支持表情符号的字符集和字符排序规则设置\r\n\r\n  - ALTER TABLE django_admin_log CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;\r\n\r\n- Django中ORM时间查询问题\r\n\r\n  ```python\r\n  修改settings.py中的该配置\r\n  USE_TZ = False\r\n  ```\r\n\r\n- 为python、pip、uwsgi配置软链\r\n',42,0,0,0,0,'2020-04-04 00:54:00.000000','2020-04-04 00:54:08.083195','2020-09-02 20:54:19.467727',1,5),(13,'一文理解Flask日志处理','flask_log','https://img-blog.csdnimg.cn/20200407145300926.jpeg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjY2ODc3,size_16,color_FFFFFF,t_70','Web,Flask,log,日志','- 日志保存位置\r\n- 日志切割\r\n- 日志输出格式\r\n- 蓝图中使用日志\r\n- 邮件发送错误日志\r\n- 自定义日志输出信息','# flask中日志处理\r\n\r\n## 指定某个文件进行存储日志\r\n\r\n```python\r\n# -*- coding:utf-8 -*-\r\nfrom flask import Flask\r\nimport logging\r\nfrom logging import FileHandler\r\n \r\napp = Flask(__name__)\r\n \r\n@app.route(\'/\')\r\ndef hello_world():\r\n    app.logger.info(\"Info message\")\r\n    app.logger.warning(\"Warning msg\")\r\n    app.logger.error(\"Error msg!!!\")\r\n    return \'Hello, World!\'\r\n \r\nif __name__ == \'__main__\':\r\n    app.debug = True\r\n    handler = logging.FileHandler(\'flask.log\')\r\n    app.logger.addHandler(handler)\r\n    app.run()\r\n```\r\n\r\n## 日志的切割\r\n\r\n### 按照日志文件大小切割\r\n\r\n```python\r\nfrom logging.handlers import RotatingFileHandler \r\nhandler = RotatingFileHandler(\"flask.log\", maxBytes=1024000, backupCount=10)\r\n```\r\n\r\n- 描述\r\n  - **\"flask.log\"** 就是日志的文件名\r\n  - **maxBytes** 就是 日志大小\r\n  - **backupCount** 就是保留的日志个数。 比如`flask.log` 写满了， 就会被重命名成`flask.log.1`, 程序继续向`flask.log`写入。\r\n\r\n### 按照时间切割\r\n\r\n```python\r\nfrom logging.handlers import TimedRotatingFileHandler\r\nhandler = TimedRotatingFileHandler(\r\n        \"flask.log\", when=\"D\", interval=1, backupCount=15,\r\n        encoding=\"UTF-8\", delay=False, utc=True)\r\n```\r\n\r\n- 描述\r\n  - when=D： 表示按天进行切分\r\n  - interval=1： 每天都切分。 比如interval=2就表示两天切分一下。\r\n  - backupCount=15: 保留15天的日志\r\n  - encoding=UTF-8: 使用`UTF-8`的编码来写日志\r\n  - utc=True: 使用UTC+0的时间来记录 （一般docker镜像默认也是UTC+0）\r\n\r\n## 配置日志输出格式\r\n\r\n```python\r\n# My Config\r\n# [%(asctime)s][%(filename)s:%(lineno)d][%(levelname)s][%(thread)d] - %(message)s\r\n \r\n# Output\r\n[2018-12-11 21:13:23,315][main.py:10][INFO][24012] - Info message\r\n[2018-12-11 21:13:23,315][main.py:11][WARNING][24012] - Warning msg\r\n[2018-12-11 21:13:23,316][main.py:12][ERROR][24012] - Error msg!!!\r\n```\r\n\r\n```python\r\n# -*- coding:utf-8 -*-\r\nfrom flask import Flask\r\nimport logging\r\nfrom logging.handlers import TimedRotatingFileHandler\r\n \r\nfrom views.simple_page import simple_page\r\n \r\napp = Flask(__name__)\r\napp.register_blueprint(simple_page, url_prefix=\"/simple_page\")\r\n \r\n \r\n@app.route(\'/\')\r\ndef hello_world():\r\n    app.logger.info(\"Info message\")\r\n    app.logger.warning(\"Warning msg\")\r\n    app.logger.error(\"Error msg!!!\")\r\n    return \'Hello, World!\'\r\n \r\n \r\nif __name__ == \'__main__\':\r\n    app.debug = True\r\n    formatter = logging.Formatter(\r\n        \"[%(asctime)s][%(filename)s:%(lineno)d][%(levelname)s][%(thread)d] - %(message)s\")\r\n    handler = TimedRotatingFileHandler(\r\n        \"flask.log\", when=\"D\", interval=1, backupCount=15,\r\n        encoding=\"UTF-8\", delay=False, utc=True)\r\n    app.logger.addHandler(handler)\r\n    handler.setFormatter(formatter)\r\n \r\n    app.run()\r\n```\r\n\r\n## Blueprint中使用日志\r\n\r\n```python\r\n#!/usr/bin/python\r\n# -*- coding: utf-8 -*-\r\n\r\nfrom flask import Blueprint\r\nfrom flask import current_app\r\n\r\nuserPrint = Blueprint(\'userPrint\', __name__)\r\n@userPrint.route(\'/index\')\r\ndef index():\r\n    current_app.logger.info(\'user:i am info!!\')\r\n    current_app.logger.error(\'user:i am error!!\')\r\n    return \'hello user!!\'\r\n\r\n```\r\n\r\n- 描述\r\n  - from flask import current_app获取当前蓝图中的app\r\n  - 使用当前app打印日志\r\n\r\n## 使用loggin模块中的日志邮件发送功能\r\n\r\n```python\r\n# -*- coding:utf-8 -*-\r\nfrom flask import Flask\r\nimport logging\r\nfrom logging.handlers import TimedRotatingFileHandler\r\nfrom logging.handlers import SMTPHandler\r\n \r\nfrom views.simple_page import simple_page\r\n \r\napp = Flask(__name__)\r\napp.register_blueprint(simple_page, url_prefix=\"/simple_page\")\r\n \r\n \r\n@app.route(\'/\')\r\ndef hello_world():\r\n    app.logger.info(\"Info message\")\r\n    app.logger.warning(\"Warning msg\")\r\n    app.logger.error(\"Error msg----1\")\r\n    app.logger.error(\"Error msg----2\")\r\n    app.logger.error(\"Error msg----3\")\r\n    return \'Hello, World!\'\r\n \r\n \r\nif __name__ == \'__main__\':\r\n    app.debug = True\r\n \r\n    # File and Console handler &amp; formtter\r\n    formatter = logging.Formatter(\r\n        \"[%(asctime)s][%(module)s:%(lineno)d][%(levelname)s][%(thread)d] - %(message)s\")\r\n    handler = TimedRotatingFileHandler(\r\n        \"flask.log\", when=\"D\", interval=1, backupCount=15,\r\n        encoding=\"UTF-8\", delay=False, utc=True)\r\n    app.logger.addHandler(handler)\r\n    handler.setFormatter(formatter)\r\n \r\n    # Email Handler\r\n    mail_handler = SMTPHandler(\r\n        mailhost=\'smtp.163.com\', # 邮箱服务器地址\r\n        fromaddr=\'fand1024@163.com\',\r\n        toaddrs=[\'2094531487@qq.com\'], # 接收错误邮件收件人列表\r\n        subject=\'Flask Application Error\',\r\n        credentials=(\'fand1024@163.com\', \'123456aa\') # 163账户信息(用户名、密码)\r\n    )\r\n    mail_handler.setLevel(logging.ERROR)\r\n    mail_handler.setFormatter(logging.Formatter(\r\n        \"[%(asctime)s][%(module)s:%(lineno)d][%(levelname)s][%(thread)d] - %(message)s\"\r\n    ))\r\n    app.logger.addHandler(mail_handler)\r\n    app.run()\r\n```\r\n\r\n## 在Log中增加其他辅助信息\r\n\r\n- 自定义LogFilter实现\r\n\r\n```python\r\n# 首先自定义一个LogFilter\r\nclass ContextFilter(logging.Filter):\r\n    \'\'\'Enhances log messages with contextual information\'\'\'\r\n    def filter(self, record):\r\n        record.hostname = \"my-windows-10\"\r\n        return True\r\n      \r\n# 在main函数之中， 增加加载这个filter即可\r\nhandler.addFilter(ContextFilter())\r\n```\r\n\r\n```python\r\n# 原来的formatter\r\n[%(asctime)s][%(filename)s:%(lineno)d][%(levelname)s][%(thread)d] - %(message)s\r\n \r\n# 新的Formatter\r\n(%(hostname)s)[%(asctime)s][%(filename)s:%(lineno)d][%(levelname)s][%(thread)d] - %(message)s\r\n \r\n```\r\n\r\n',37,0,0,0,0,'2020-04-07 14:44:00.000000','2020-04-07 14:44:14.213213','2020-08-30 02:36:27.175517',1,9),(14,'centos下搭建python环境','centos_python','https://img-blog.csdnimg.cn/20200416183818273.jpeg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjY2ODc3,size_16,color_FFFFFF,t_70','运维,工具,自动化运维,python','- python环境搭建\r\n- pycharm安装\r\n- node环境搭建\r\n- 支持拼音输入法\r\n','# centos下python环境搭建\r\n\r\n## python环境搭建\r\n\r\n```python\r\n\'\'\'\r\n1、下载python源码\r\n2、解压源码然后进入目录\r\n3、执行以下命令\r\n\r\n./configure --prefix=/usr/local/python3 --with-ssl\r\nsudo make && make install\r\n\r\n此时python就安装在了/usr/local/python3目录下，进入该目录的bin下就可以执行python了。\r\n\r\n4、为python添加软链，目的输入python就可一进入我们安装的python环境\r\n(1).删除/usr/bin目录中的python文件\r\n(2).ln -s /usr/local/python3/bin/python3 python\r\n(3).ln -s /usr/local/python3/bin/pip3 pip\r\n\r\n5、这样修改完之后yum可能不可用了，所以继续如下操作：\r\nsudo vim /usr/libexec/urlgrabber-ext-down\r\nsudo vim /usr/bin/yum\r\nsudo vim /usr/bin/firewall-cmd\r\n\r\n将这三个文件首行的python改为之前的python2版本\r\n例如改为： #!/usr/bin/python2\r\n\'\'\'\r\n```\r\n\r\n## pycharm安装\r\n\r\n```python\r\n\'\'\'\r\n参考：https://blog.csdn.net/one312/article/details/81063024\r\n\'\'\'\r\n```\r\n\r\n## node环境搭建\r\n\r\n```python\r\n# 参考：https://www.cnblogs.com/lee-qi/p/11621883.html\r\n```\r\n\r\n## 拼音输入法安装\r\n\r\n```python\r\n\'\'\'\r\n参考链接：https://blog.csdn.net/alex_my/article/details/38223449\r\n\'\'\'\r\n```\r\n\r\n',33,0,0,0,0,'2020-04-16 18:34:00.000000','2020-04-16 18:34:51.651785','2020-09-15 09:38:48.903524',1,5),(15,'测试','bb','/static/img/article/default.jpg','总结','# 这是张图片\r\n','# 这是张图片\r\n![](https://gitee.com/fanding/src/raw/master/images/image-20200909162720565.png)',1,0,1,0,1,'2020-09-09 16:34:00.000000','2020-09-09 16:34:12.757187','2020-09-09 16:39:54.986501',1,7),(17,'git使用','git','https://gitee.com/fanding/src/raw/master/images/image-20200723115144545.png','推介工具','# git详细使用','# git创建分支与合并分支\r\n\r\n```python\r\n\'\'\'\r\n1、创建分支\r\ngit checkout -b fandsimple origin/master->在本地新建一个分支,基于远程的master分支而创建。\r\ngit push origin fandsimple->同步到远程库\r\n删除分支\r\n删除远程库分支：git push origin --delete fandsimple\r\n删除本地库分支：git branch -d fandsimple\r\n\r\n2、 合并分支\r\n假如现在有两个分支分别为dev1、dev2，下面情景是将dev2分支下的内容合并到dev1分支下。\r\n(1)、先切换到dev1分支下：git checkout dev1\r\n(2)、进行合并分支操作：git merge dev2\r\n此时如果两个分支修改的地方没有冲突的话，直接会合并成功，否则需要我们手动去解决合并冲突。\r\n解决冲突：进行人工审查，解决冲突。\r\n冲突解决完成将每个解决完冲突的文件添加到暂存区。（git add）\r\n所有都暂存完成后，可以使用git commit 完成合并的提交。\r\n(3)、同步到远程库当中。\r\n\'\'\'\r\n\r\n# 参考文章：https://git-scm.com/book/zh/v2/Git-%E5%88%86%E6%94%AF-%E5%88%86%E6%94%AF%E7%9A%84%E6%96%B0%E5%BB%BA%E4%B8%8E%E5%90%88%E5%B9%B6\r\n```\r\n\r\n# git pull\r\n\r\n```python\r\n\'\'\'\r\ngit pull == git fetch + git merge\r\n\r\ngit pull origin master:next\r\n将远程的master分支合并到本地next分支上\r\n\r\ngit pull origin master\r\n将远程的master分支合并到本地的当前分支上\r\n\r\n还可以建立追踪关系，从而命令可以更精简。(略)\r\n\'\'\'\r\n```\r\n\r\n# 避免每次进行验证\r\n\r\n```python\r\n\'\'\'\r\ngit config --global credential.helper store\r\n\'\'\'\r\n```\r\n\r\n#  git commit --amend\r\n\r\n```python\r\n\'\'\'\r\n基于上次提交再次提交，不会产生新的版本号。\r\n\'\'\'\r\n```\r\n\r\n# 强制将远程代码覆盖本地仓库代码\r\n\r\n```shell\r\ngit fetch --all\r\ngit reset --hard origin/master\r\ngit pull\r\n```\r\n\r\n# 差异比较\r\n\r\n```shell\r\ngit diff <file> # 比较当前文件和暂存区文件差异 git diff\r\ngit diff <id1><id1><id2> # 比较两次提交之间的差异\r\ngit diff <branch1> <branch2> # 在两个分支之间比较\r\ngit diff --staged # 比较暂存区和版本库差异\r\ngit diff --cached # 比较暂存区和版本库差异\r\ngit diff --stat # 仅仅比较统计信息//原文出自【易百教程】，商业转载请联系作者获得授权，非商业请保留原文链接：https://www.yiibai.com/git/git_diff.html\r\n```\r\n\r\n# 删除分支\r\n\r\n```bash\r\n# 删除本地分支\r\ngit branch -d fanding_tem1\r\n\r\n# 删除远程分支\r\n\r\n```\r\n\r\n\r\n\r\n# 合并代码\r\n\r\n```bash\r\n# 切换到backend_master分支\r\ngit merge fanding_tem1\r\n\r\n# 如果有冲突，先解决冲突，然后\r\ngit add filename\r\ngit commit filename\r\n```\r\n\r\n\r\n\r\n# git工作流\r\n\r\n- master（发布分支）（只有master可操作）\r\n- develop（联调分支）（所有开发人员都可操作）\r\n- hotfix（紧急bug修复）（临时创建修复完成删除分支）\r\n- fanding（个人分支）（只有自己有操作权限）\r\n- yangtao(个人分支)（只有自己有操作权限）\r\n- mayi（个人分支）（只有自己有操作权限）\r\n- 以上权限可以由工蜂分支保护中的分支成员功能实现。\r\n\r\n\r\n\r\n```python\r\n\'\'\'\r\n开始工作：\r\n\r\nmaster需要做的事情：\r\n将master和develop进行合并，一般来说不用解决冲突。除非在开发中途进行了hotfix操作，此时代码有可能会有冲突或者被冲掉的可能性。\r\n\r\n开发人员要做的事情：\r\n协作开发，保持一个比较稳定（没有bug，在master基础上进行修改的）的develop分支，具体再进行讨论。\r\n\'\'\'\r\n```\r\n\r\n\r\n\r\n\r\n\r\n![image-20200723115144545](https://gitee.com/fanding/src/raw/master/images/image-20200723115144545.png)',6,0,1,0,0,'2020-09-13 21:22:00.000000','2020-09-13 21:22:27.674861','2020-09-15 10:45:45.405997',1,2),(18,'ELK','elk','https://gitee.com/fanding/src/raw/master/images/image-20200417234406585.png','推介工具','# ELK','# 环境搭建\r\n\r\n## ES安装的正确姿势（版本7.6.2）\r\n\r\n- 下载es压缩文件->https://www.elastic.co/cn/downloads/elasticsearch\r\n- 启动即可\r\n\r\n- 插件安装\r\n\r\n```bash\r\n./elasticsearch-plugin install analysis-icu\r\n./elasticsearch-plugin list\r\n```\r\n\r\n## kibana安装（版本7.6.2）\r\n\r\n- 官网下载对应压缩包\r\n\r\n- kibana中插件安装如下图\r\n\r\n![image-20200417230951006](https://gitee.com/fanding/src/raw/master/images/image-20200417230951006.png)\r\n\r\n## logstash安装（版本7.6.2）\r\n\r\n- 官网下载对应版本压缩包即可\r\n\r\n# 关系型数据库和es的对比\r\n\r\n![image-20200417234406585](https://gitee.com/fanding/src/raw/master/images/image-20200417234406585.png)\r\n\r\n# es数据库分词器介绍\r\n\r\n![image-20200420132222042](https://gitee.com/fanding/src/raw/master/images/image-20200420132222042.png)\r\n\r\n![image-20200420132254441](https://gitee.com/fanding/src/raw/master/images/image-20200420132254441.png)\r\n\r\n# 查询\r\n\r\n## uri查询\r\n\r\n![image-20200420132944705](https://gitee.com/fanding/src/raw/master/images/image-20200420132944705.png)\r\n\r\n- match phrase语句（包含Beautiful Mind顺序和字符都一样）\r\n\r\n  ![image-20200420201646014](https://gitee.com/fanding/src/raw/master/images/image-20200420201646014.png)\r\n\r\n- Match查询，分组概念（name中包含fanding 或者fanfan都行）\r\n\r\n  ![image-20200420202619325](https://gitee.com/fanding/src/raw/master/images/image-20200420202619325.png)\r\n\r\n- 逻辑运算符\r\n\r\n  ![image-20200420202927275](https://gitee.com/fanding/src/raw/master/images/image-20200420202927275.png)\r\n\r\n- 范围查询\r\n\r\n  ![image-20200420203046006](https://gitee.com/fanding/src/raw/master/images/image-20200420203046006.png)\r\n\r\n- 通配符查询、模糊匹配、正则表达式查询\r\n\r\n  - 注：模糊匹配与近似查询（第一个是找相似， 第二个是lord 和rings中间可以出现一些字符）\r\n\r\n  ![image-20200420203216102](https://gitee.com/fanding/src/raw/master/images/image-20200420203216102.png)\r\n\r\n## DSL查询\r\n\r\n- 分页\r\n\r\n  ![image-20200420205239055](https://gitee.com/fanding/src/raw/master/images/image-20200420205239055.png)\r\n\r\n- 排序\r\n\r\n  ![image-20200420205320868](https://gitee.com/fanding/src/raw/master/images/image-20200420205320868.png)\r\n\r\n- 过滤，只返回需要字段\r\n\r\n  ![image-20200420205912509](https://gitee.com/fanding/src/raw/master/images/image-20200420205912509.png)\r\n\r\n- 脚本字段（脚本可以干预返回结果）\r\n\r\n  ![image-20200420210128088](https://gitee.com/fanding/src/raw/master/images/image-20200420210128088.png)\r\n\r\n  ![image-20200420210219555](https://gitee.com/fanding/src/raw/master/images/image-20200420210219555.png)\r\n\r\n- match查询\r\n\r\n  - 第一个的条件是出现Last 或者 Christmas\r\n  - 第二个的条件是两个都必须出现\r\n  - 注意：comment是字段名\r\n\r\n  ![image-20200420210407872](https://gitee.com/fanding/src/raw/master/images/image-20200420210407872.png)\r\n\r\n- match phrase查询\r\n\r\n  - 条件：词必须出现，顺序也保持一致，词与词之间可以夹杂其他的一个词（slop作用）。\r\n\r\n  ![image-20200420210550277](https://gitee.com/fanding/src/raw/master/images/image-20200420210550277.png)\r\n\r\n## query string\r\n\r\n- 多字段和逻辑运算符的使用\r\n\r\n  ![image-20200420214412346](https://gitee.com/fanding/src/raw/master/images/image-20200420214412346.png)\r\n\r\n## simple query string\r\n\r\n- query中的and会当成字符串进行处理\r\n\r\n![image-20200420214209137](https://gitee.com/fanding/src/raw/master/images/image-20200420214209137.png)\r\n\r\n# mapping\r\n\r\n## 定义\r\n\r\n![image-20200420214714137](https://gitee.com/fanding/src/raw/master/images/image-20200420214714137.png)\r\n\r\n## es中数据类型\r\n\r\n![image-20200420215007879](https://gitee.com/fanding/src/raw/master/images/image-20200420215007879.png)\r\n\r\n## 查看mapping定义\r\n\r\n![image-20200420215224523](https://gitee.com/fanding/src/raw/master/images/image-20200420215224523.png)\r\n\r\n## mapping字段更改问题\r\n\r\n![image-20200420215446775](https://gitee.com/fanding/src/raw/master/images/image-20200420215446775.png)\r\n\r\n![image-20200420215634233](https://gitee.com/fanding/src/raw/master/images/image-20200420215634233.png)\r\n\r\n- 修改dynamic字段\r\n\r\n  ![image-20200420215841808](https://gitee.com/fanding/src/raw/master/images/image-20200420215841808.png)\r\n\r\n## 自定义mapping\r\n\r\n- 方法先插入一篇文档，然后查看es自动为我们生成的mapping定义，复制下来然后再把不符合我们意愿的字段进行修改。\r\n- index字段，控制是否可以被索引。\r\n\r\n![image-20200421083722027](https://gitee.com/fanding/src/raw/master/images/image-20200421083722027.png)\r\n\r\n- NULL值搜索问题\r\n\r\n  ![image-20200421084256099](https://gitee.com/fanding/src/raw/master/images/image-20200421084256099.png)\r\n\r\n- copy_to字段作用\r\n\r\n  ![image-20200421084559522](https://gitee.com/fanding/src/raw/master/images/image-20200421084559522.png)\r\n\r\n### mapping中自定义analyzer\r\n\r\n![image-20200421085750720](https://gitee.com/fanding/src/raw/master/images/image-20200421085750720.png)\r\n\r\n- character filter（过滤一些字符，对原始字符串进行初步处理）\r\n\r\n  ![image-20200421085934960](https://gitee.com/fanding/src/raw/master/images/image-20200421085934960.png)\r\n\r\n- tokenizer（按照一定规则进行分词）\r\n\r\n  ![image-20200421090116014](https://gitee.com/fanding/src/raw/master/images/image-20200421090116014.png)\r\n\r\n- token filter（对分词结果进行过滤，再一步处理）\r\n\r\n# template\r\n\r\n## index template\r\n\r\n![image-20200421205037866](https://gitee.com/fanding/src/raw/master/images/image-20200421205037866.png)\r\n\r\n## 什么是dynamic template\r\n\r\n![image-20200421205749209](https://gitee.com/fanding/src/raw/master/images/image-20200421205749209.png)\r\n\r\n[demo地址](https://github.com/geektime-geekbang/geektime-ELK/tree/master/part-1/3.13-IndexTemplate%E5%92%8CDynamicTemplate)\r\n\r\n# 聚合功能\r\n\r\n## 聚合的分类\r\n\r\n![image-20200421210556101](https://gitee.com/fanding/src/raw/master/images/image-20200421210556101.png)\r\n\r\n## bucket例子\r\n\r\n![image-20200421211506005](https://gitee.com/fanding/src/raw/master/images/image-20200421211506005.png)\r\n\r\n## metric例子\r\n\r\n![image-20200421211746573](https://gitee.com/fanding/src/raw/master/images/image-20200421211746573.png)\r\n\r\n## 嵌套\r\n\r\n![image-20200421212016527](/Users/fanding/Desktop/博客文章临时保存/ELK/src/image-20200421212016527.png)\r\n\r\n[demo地址](https://github.com/geektime-geekbang/geektime-ELK/tree/master/part-1/3.14-Elasticsearch%E8%81%9A%E5%90%88%E5%88%86%E6%9E%90%E7%AE%80%E4%BB%8B)\r\n\r\n# 深入搜索\r\n\r\n## term查询\r\n\r\n![image-20200421230938999](https://gitee.com/fanding/src/raw/master/images/image-20200421230938999.png)\r\n\r\n## bool query\r\n\r\n- must_not和filter是不贡献算分的\r\n\r\n![image-20200428192958509](/Users/fanding/Desktop/博客文章临时保存/ELK/src/image-20200428192958509.png)\r\n\r\n## boosting query \r\n\r\n- 排序打分可打消极分数\r\n\r\n![image-20200428193745085](https://gitee.com/fanding/src/raw/master/images/image-20200428193745085.png)\r\n\r\n## multi match query\r\n\r\n![image-20200429142903594](/Users/fanding/Desktop/fandsimple笔记/ELK/src/image-20200429142903594.png)\r\n\r\n# 聚合操作\r\n\r\n```python\r\n\r\n```\r\n\r\n# ES分词器整理\r\n\r\n## standard\r\n\r\n- 按空格切分并且转化为小写\r\n\r\n## simple\r\n\r\n- 按非字母进行切割，并转化为小写\r\n\r\n## whitespace\r\n\r\n- 只按照空格进行切割，不做其他处理\r\n\r\n## stop\r\n\r\n- 在simple分词器的基础上将a、the、is等修饰性词去掉\r\n\r\n## keyword\r\n\r\n- 不做任何处理，将输入作为一个完整的term进行输出\r\n\r\n## pattern\r\n\r\n- 在stop分词器的基础上，可以自定义分词规则，默认是以非字母字符进行切割的\r\n\r\n## 不同国家有指定不同国家的分词器\r\n\r\n```elasticsearch\r\nGET _analyze\r\n{\r\n  \"analyzer\": \"english\",\r\n  \"text\": \"55 FANDING is a good fan4fan man\"\r\n}\r\n```\r\n\r\n## 中文分词器\r\n\r\n- ik：https://github.com/medcl/elasticsearch-analysis-ik\r\n- 通过插件安装：icu-anaylias\r\n- \r\n\r\n\r\n\r\n\r\n\r\n# url search详解\r\n\r\n```python\r\n\'\'\'\r\n描述：\r\n参数拼接在url中的查询\r\n\'\'\'\r\n```\r\n\r\n## 指定字段查询\r\n\r\n- 查看执行详细情况语句\r\n\r\n  ```\r\n  GET /movie/_search\r\n  {\r\n  	\"profile\":\"true\"\r\n  }\r\n  ```\r\n\r\n  \r\n\r\n- 两种方式\r\n\r\n  - GET /movie/_search?q=title:2012\r\n  - GET /movie/_search?q=2012&df=title\r\n\r\n## 查询类型\r\n\r\n- phrase查询:必须出现fan 和 ding ，顺序不能反\r\n\r\n  ```\r\n  GET /movie/_search?q=title:\"fan ding\"\r\n  {\r\n  	\"profile\":\"true\"\r\n  }\r\n  ```\r\n\r\n  \r\n\r\n- term查询：出现fan或出现ding\r\n\r\n  ```\r\n  GET /movie/_search?q=title:（fan ding）\r\n  {\r\n  	\"profile\":\"true\"\r\n  }\r\n  ```\r\n\r\n## 符号在查询语句中的使用\r\n\r\n![image-20200717093118620](https://gitee.com/fanding/src/raw/master/images/image-20200717093118620.png)\r\n\r\n## 区间查询\r\n\r\n![image-20200717093420964](https://gitee.com/fanding/src/raw/master/images/image-20200717093420964.png)\r\n\r\n## 模糊匹配与通配符使用\r\n\r\n![image-20200717093550572](https://gitee.com/fanding/src/raw/master/images/image-20200717093550572.png)\r\n\r\n# request body 查询方式\r\n\r\n- 基本查询\r\n\r\n  ```\r\n  POST /movie/_search\r\n  {\r\n  	\"profile\":\"true\", // 查看执行过程\r\n  	\"query\":{\r\n  			\"match_all\":{} // 查询所有数据\r\n  	},\r\n  	\"from\":10, //分页查询\r\n  	\"size\":20,\r\n  	\"sort\":[{\"order_date\":\"desc\"}], // 按照字段进行排序\r\n  	\"_source\":[\'order_date*\', ...], // 查找指定字段，支持通配符\r\n  	\r\n  	// 脚本字段\r\n  	\"script_fields\":{\r\n  			\"new_field\":{\r\n  					\"script\":{\r\n  						\"lang\":\"painless\",\r\n  						\"source\":\"doc[\'order_date\'].value + \'hello\'\"\r\n  				}\r\n  			}\r\n  	}\r\n  }\r\n  ```\r\n\r\n  \r\n\r\n- 两种查询方式\r\n\r\n  - match方式\r\n\r\n    ```\r\n    GET /movie/_search // 出现fan或出现ding\r\n    {\r\n    	\"query\":{\r\n    			\"match\":{\r\n    					\"comment\":\"fan ding\"\r\n    			}\r\n    	}\r\n    }\r\n    \r\n    GET /movie/_search // 即出现fan又出现ding\r\n    {\r\n    	\"query\":{\r\n    			\"match\":{\r\n    					\"comment\":{\r\n    							\"query\":\"fan ding\",\r\n    							\"operator\":\"and\"\r\n    					}\r\n    			}\r\n    	}\r\n    }\r\n    ```\r\n\r\n    \r\n\r\n  - query match方式\r\n\r\n    ```\r\n    GET /movie/_search // 即出现fan又出现ding\r\n    {\r\n    	\"query\":{\r\n    			\"match_phrase\":{\r\n    					\"comment\":{\r\n    							\"query\":\"fan ding\",\r\n    							\"slop\":1\r\n    					}\r\n    			}\r\n    	}\r\n    }\r\n    ```\r\n\r\n- query string 和simple query string\r\n\r\n  - query string: 必须出现fan同时出现ding\r\n\r\n  ```\r\n  POST /movie/_search\r\n  {\r\n  		\"query\":{\r\n  				\"query_string\":{\r\n  						\"default_field\": \"name\",\r\n  						\"query\":\"fan AND ding\"\r\n  				}\r\n  		}\r\n  }\r\n  \r\n  \r\n  // 同时支持分组\r\n  POST /movie/_search\r\n  {\r\n  		\"query\":{\r\n  				\"query_string\":{\r\n  						\"fields\": [\"name\",\"about\"],\r\n  						\"query\":\"(fan AND ding) OR (duan AND shu AND kai)\"\r\n  				}\r\n  		}\r\n  }\r\n  ```\r\n\r\n  - Simple query string: AND当做字符串进行处理，不做运算符处理\r\n\r\n    ```\r\n    POST /movie/_search\r\n    {\r\n    		\"query\":{\r\n    				\"simple_query_string\":{\r\n    						\"query\": \"fan AND ding\",\r\n    						\"fields\":[\"name\"]\r\n    				}\r\n    		}\r\n    }\r\n    \r\n    \r\n    //AND当做运算符处理的写法\r\n    POST /movie/_search\r\n    {\r\n    		\"query\":{\r\n    				\"simple_query_string\":{\r\n    						\"query\": \"fan ding\",\r\n    						\"fields\":[\"name\"]，\r\n    						\"default_operator\":\"AND\"\r\n    				}\r\n    		}\r\n    }\r\n    ```\r\n\r\n# mapping与Dynamic mapping\r\n\r\n- 区别\r\n\r\n- ```python\r\n  \'\'\'\r\n  mapping是人工定义的规范，dynamic mapping是elasticsearch自动帮我们推断出字段的数据类型。\r\n  \'\'\'\r\n  ```\r\n\r\n  \r\n\r\n![image-20200718231028881](https://gitee.com/fanding/src/raw/master/images/image-20200718231028881.png)\r\n\r\n- 查看mapping定义写法\r\n\r\n  ```\r\n  GET movie/_mappings\r\n  ```\r\n\r\n- 支持null值的倒排索引写法\r\n\r\n  ```\r\n  PUT movie\r\n  {\r\n  		\"mappings\" : {\r\n        \"properties\" : {\r\n        		\"firstname\":{\r\n        				\"index\":true,\r\n        				\"type\":\"text\",\r\n        				\"copy_to\":\"fullname\"\r\n        		},\r\n        		\"lastname\":{\r\n        				\"type\":\"text\",\r\n        				\"null_value\":\"NULL\",\r\n        				\"copy_to\":\"fullname\",\r\n        		}\r\n          }\r\n  }\r\n  ```\r\n\r\n  \r\n\r\n# term查询与全文本查询\r\n\r\n- term查询：term是分词的最小单位，按照term进行查询，特别要注意大小写问题，如果要精确匹配，那么需要利用到keyword属性\r\n\r\n- 全文本查询：会对查询的文本进行分词处理，分成不同的term，然后根据每个term进行查询，算分，按分数又高到低进行排序\r\n\r\n- 可以跳过算分的过程，可以利用缓存，查询更快，关键词filter查询\r\n\r\n  ```\r\n  DELETE products\r\n  PUT products\r\n  {\r\n    \"settings\": {\r\n      \"number_of_shards\": 1\r\n    }\r\n  }\r\n  \r\n  \r\n  POST /products/_bulk\r\n  { \"index\": { \"_id\": 1 }}\r\n  { \"productID\" : \"XHDK-A-1293-#fJ3\",\"desc\":\"iPhone\" }\r\n  { \"index\": { \"_id\": 2 }}\r\n  { \"productID\" : \"KDKE-B-9947-#kL5\",\"desc\":\"iPad\" }\r\n  { \"index\": { \"_id\": 3 }}\r\n  { \"productID\" : \"JODL-X-1937-#pV7\",\"desc\":\"MBP\" }\r\n  \r\n  GET /products\r\n  \r\n  POST /products/_search\r\n  {\r\n    \"query\": {\r\n      \"term\": {\r\n        \"desc\": {\r\n          //\"value\": \"iPhone\"\r\n          \"value\":\"iphone\"\r\n        }\r\n      }\r\n    }\r\n  }\r\n  \r\n  POST /products/_search\r\n  {\r\n    \"query\": {\r\n      \"term\": {\r\n        \"desc.keyword\": {\r\n          //\"value\": \"iPhone\"\r\n          //\"value\":\"iphone\"\r\n        }\r\n      }\r\n    }\r\n  }\r\n  \r\n  \r\n  POST /products/_search\r\n  {\r\n    \"query\": {\r\n      \"term\": {\r\n        \"productID\": {\r\n          \"value\": \"XHDK-A-1293-#fJ3\"\r\n        }\r\n      }\r\n    }\r\n  }\r\n  \r\n  POST /products/_search\r\n  {\r\n    //\"explain\": true,\r\n    \"query\": {\r\n      \"term\": {\r\n        \"productID.keyword\": {\r\n          \"value\": \"XHDK-A-1293-#fJ3\"\r\n        }\r\n      }\r\n    }\r\n  }\r\n  \r\n  \r\n  \r\n  \r\n  POST /products/_search //跳过算分的步骤，更快\r\n  {\r\n    \"explain\": true,\r\n    \"query\": {\r\n      \"constant_score\": {\r\n        \"filter\": {\r\n          \"term\": {\r\n            \"productID.keyword\": \"XHDK-A-1293-#fJ3\"\r\n          }\r\n        }\r\n  \r\n      }\r\n    }\r\n  }\r\n  \r\n  \r\n  #设置 position_increment_gap\r\n  DELETE groups\r\n  PUT groups\r\n  {\r\n    \"mappings\": {\r\n      \"properties\": {\r\n        \"names\":{\r\n          \"type\": \"text\",\r\n          \"position_increment_gap\": 0\r\n        }\r\n      }\r\n    }\r\n  }\r\n  \r\n  GET groups/_mapping\r\n  \r\n  POST groups/_doc\r\n  {\r\n    \"names\": [ \"John Water\", \"Water Smith\"]\r\n  }\r\n  \r\n  POST groups/_search\r\n  {\r\n    \"query\": {\r\n      \"match_phrase\": {\r\n        \"names\": {\r\n          \"query\": \"Water Water\",\r\n          \"slop\": 100\r\n        }\r\n      }\r\n    }\r\n  }\r\n  \r\n  \r\n  POST groups/_search\r\n  {\r\n    \"query\": {\r\n      \"match_phrase\": {\r\n        \"names\": \"Water Smith\"\r\n      }\r\n    }\r\n  }\r\n  ```\r\n\r\n# 结构化数据\r\n\r\n- 结构化数据的精确匹配问题\r\n  - text中term精确匹配：利用keyword属性可以直接精确匹配\r\n  - 多值的精确匹配：多值匹配查找的是包含关系，所有包含的都会被查找出来。自己设计逻辑去解决精确匹配问题。\r\n\r\n',3,0,1,0,0,'2020-09-13 21:36:00.000000','2020-09-13 21:38:23.651305','2020-09-14 15:37:17.141883',1,2),(19,'python源码解析','yuanma','https://gitee.com/fanding/src/raw/master/images/image-20200913214816869.png','python,源码','# python源码解析\r\n## 陈儒 著','# 可变对象、不可变对象、定长对象、变长对象\r\n\r\n```python\r\n\'\'\'\r\n变长对象：有变长域的对象为变长对象\r\n定长对象：整数\r\n\r\n可变对象：\r\n不可变对象：\r\n\'\'\'\r\n```\r\n\r\n# python对象归类\r\n\r\n![image-20200727120126342](https://gitee.com/fanding/src/raw/master/images/image-20200727120126342.png)\r\n\r\n# 整数\r\n\r\n![image-20200727115008515](https://gitee.com/fanding/src/raw/master/images/image-20200727115008515.png)\r\n\r\n## 小整数对象\r\n\r\n![image-20200727115304677](https://gitee.com/fanding/src/raw/master/images/image-20200727115304677.png)\r\n\r\n![image-20200727115433900](https://gitee.com/fanding/src/raw/master/images/image-20200727115433900.png)\r\n\r\n## 大整数对象\r\n\r\n![image-20200727115335396](https://gitee.com/fanding/src/raw/master/images/image-20200727115335396.png)\r\n\r\n![image-20200727115457481](https://gitee.com/fanding/src/raw/master/images/image-20200727115457481.png)\r\n\r\n# 字符串对象\r\n\r\n![image-20200727115206529](https://gitee.com/fanding/src/raw/master/images/image-20200727115206529.png)\r\n\r\n![image-20200727134426293](https://gitee.com/fanding/src/raw/master/images/image-20200727134426293.png)\r\n\r\n\r\n\r\n## 字符缓存池\r\n\r\n- 单个字符的字符串对象会有一个缓存池\r\n\r\n## 字符串对象的intern机制\r\n\r\n- 该机制使得创建相同的字符串对象的时候不用同时创建多个字符串对象，而是同时引用intern机制中维护的字典中的该值。\r\n\r\n## 优化\r\n\r\n- 字符串拼接\r\n\r\n  - 使用join代替+来实现多字符拼接的过程\r\n\r\n    ```python\r\n    \'\'\'\r\n    +每执行一次+操作需要开辟新内存，然后将拼接后的内容拷贝到新内存中去\r\n    join拼接多个字符串的时候，一次性开辟，一次性拷贝\r\n    \'\'\'\r\n    ```\r\n\r\n# 列表\r\n\r\n## 结构\r\n\r\n```c\r\ntypedef struct {\r\n    PyObject_VAR_HEAD\r\n    /* Vector of pointers to list elements.  list[0] is ob_item[0], etc. */\r\n    PyObject **ob_item;\r\n\r\n    /* ob_item contains space for \'allocated\' elements.  The number\r\n     * currently in use is ob_size.\r\n     * Invariants:\r\n     *     0 <= ob_size <= allocated\r\n     *     len(list) == ob_size\r\n     *     ob_item == NULL implies ob_size == allocated == 0\r\n     * list.sort() temporarily sets allocated to -1 to detect mutations.\r\n     *\r\n     * Items must normally not be NULL, except during construction when\r\n     * the list is not yet visible outside the function that builds it.\r\n     */\r\n    Py_ssize_t allocated;\r\n} PyListObject;\r\n```\r\n\r\n## 对元素的操作\r\n\r\n- 时间复杂度O(1)，指针移动确定。\r\n\r\n  ![image-20200727152342149](https://gitee.com/fanding/src/raw/master/images/image-20200727152342149.png)\r\n\r\n- 增加元素\r\n\r\n  - insert（时间复杂度O(n)）\r\n  - append时间复杂度O(1)\r\n  - 二者都涉及到扩容操作\r\n\r\n- 查\r\n\r\n  - 时间复杂度（O(n)）\r\n\r\n- 删除\r\n\r\n  - remove（时间复杂度(O(n))）因为要向前移动元素\r\n\r\n## 对象缓存池的使用\r\n\r\n```python\r\n\'\'\'\r\n维护一个对象缓冲池数组，在pylistobject销毁的时候会将该对象添加到对象缓冲池列表中，当新创建对象的时候从对象缓冲池中取出一个，然后进行使用。\r\n\'\'\'\r\n```\r\n\r\n# 字典（Dict）\r\n\r\n- 使用的数据结构\r\n  - hash table（散列表）（增加O(1)、删除O(1)、修改O(1)）——> 防止冲突概率变大在插入时会检测装载因子，然后动态扩容，当然也会缩容，防止内存浪费。\r\n  - 解决冲突的方式是线性探测法\r\n\r\n## 对象缓存池\r\n\r\n- 同pylistobject对象缓冲池原理一样。\r\n\r\n',6,0,1,0,0,'2020-09-13 21:45:00.000000','2020-09-13 21:49:22.330256','2020-09-15 10:46:14.413111',1,3);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_carousel`
--

DROP TABLE IF EXISTS `blog_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `summary` longtext,
  `img` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_carousel_article_id_7390bb98c939336f_fk_blog_article_id` (`article_id`),
  CONSTRAINT `blog_carousel_article_id_7390bb98c939336f_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_carousel`
--

LOCK TABLES `blog_carousel` WRITE;
/*!40000 ALTER TABLE `blog_carousel` DISABLE KEYS */;
INSERT INTO `blog_carousel` VALUES (4,'关于作者','对于作者想要了解更多，欢迎戳我。','https://img-blog.csdnimg.cn/20200403161647646.jpeg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjY2ODc3,size_16,color_FFFFFF,t_70','2020-04-02 01:30:40.250181',8),(5,'博客搭建','该文章详细描述了樊樊家园的搭建过程，戳我查看。','https://img-blog.csdnimg.cn/20200403162428997.jpeg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM2MjY2ODc3,size_16,color_FFFFFF,t_70','2020-04-03 16:46:06.280967',10);
/*!40000 ALTER TABLE `blog_carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_category_parent_id_710a94996b953898_fk_blog_category_id` (`parent_id`),
  CONSTRAINT `blog_category_parent_id_710a94996b953898_fk_blog_category_id` FOREIGN KEY (`parent_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'爬虫',0,0,'2020-03-30 17:13:09.660975',NULL),(2,'推介工具',0,0,'2020-03-31 16:41:07.774480',NULL),(3,'python',0,0,'2020-04-01 22:23:06.289699',NULL),(4,'机器学习',0,0,'2020-04-01 22:23:19.543344',NULL),(5,'运维',0,0,'2020-04-01 22:23:29.190509',NULL),(6,'生活',0,0,'2020-04-01 22:24:28.278681',NULL),(7,'关于作者',0,0,'2020-04-01 22:24:45.615425',NULL),(8,'Web',0,0,'2020-04-07 14:41:32.487186',NULL),(9,'Flask',0,0,'2020-04-07 14:41:46.005967',8);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_column`
--

DROP TABLE IF EXISTS `blog_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `summary` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_column`
--

LOCK TABLES `blog_column` WRITE;
/*!40000 ALTER TABLE `blog_column` DISABLE KEYS */;
INSERT INTO `blog_column` VALUES (1,'推介工具','作者亲测，学习或工作效率特别高，作者极力推挤。',0,'2020-04-03 13:23:31.890937'),(2,'生活','记录生活，记录成长。',0,'2020-04-03 13:46:25.727754');
/*!40000 ALTER TABLE `blog_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_column_article`
--

DROP TABLE IF EXISTS `blog_column_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_column_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `column_id` (`column_id`,`article_id`),
  KEY `blog_column_articl_article_id_ec5d819c59e93c8_fk_blog_article_id` (`article_id`),
  CONSTRAINT `blog_column_articl_article_id_ec5d819c59e93c8_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_column_article_column_id_4207d1303cf54c54_fk_blog_column_id` FOREIGN KEY (`column_id`) REFERENCES `blog_column` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_column_article`
--

LOCK TABLES `blog_column_article` WRITE;
/*!40000 ALTER TABLE `blog_column_article` DISABLE KEYS */;
INSERT INTO `blog_column_article` VALUES (5,1,9),(6,1,10),(7,2,8);
/*!40000 ALTER TABLE `blog_column_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_nav`
--

DROP TABLE IF EXISTS `blog_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_nav`
--

LOCK TABLES `blog_nav` WRITE;
/*!40000 ALTER TABLE `blog_nav` DISABLE KEYS */;
INSERT INTO `blog_nav` VALUES (13,'生活','http://49.233.143.57/column/生活',0,'2020-04-01 22:31:54.582397'),(14,'推介工具','http://49.233.143.57/column/推介工具',0,'2020-04-01 22:33:20.197801');
/*!40000 ALTER TABLE `blog_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_news`
--

DROP TABLE IF EXISTS `blog_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `summary` longtext NOT NULL,
  `news_from` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_news`
--

LOCK TABLES `blog_news` WRITE;
/*!40000 ALTER TABLE `blog_news` DISABLE KEYS */;
INSERT INTO `blog_news` VALUES (4,'完善个人博客','1、完善该博客，发现bug，修复bug，编写完整的用户使用手册，开源出去。<br>\r\n2、进一步完善日志管理，包括日志切割、日志脚本化管理等。<br>\r\n3、完善开发流程，目标是尽量向自动化管理方向靠近，减少人工操作。<br>',0,'https://www.baidu.com','2020-04-01 22:59:48.123937','2020-09-01 22:59:00.000000'),(5,'博客优化v1','1、markdwon中图片上传支持复制黏贴功能。<br>\r\n2、尽量将用户上传图片保存在自己服务器中，不依赖其他平台。<br>\r\n3、解决后台markdown图片上传大小不能超出1M问题。<br>\r\n4、对接友盟统计。<br>\r\n',0,'https://www.baidu.com','2020-04-01 23:10:38.750697','2020-09-01 23:10:00.000000'),(6,'elasticsearch学习','ELK学习',0,'https://www.baidu.com','2020-04-16 20:16:19.244763','2020-09-01 20:16:00.000000');
/*!40000 ALTER TABLE `blog_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(255) CHARACTER SET utf8 NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_7c9ae4d0fc388d0f_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_user_id_33a00315d1d4d797_fk_vmaig_auth_vmaiguser_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_7c9ae4d0fc388d0f_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_user_id_33a00315d1d4d797_fk_vmaig_auth_vmaiguser_id` FOREIGN KEY (`user_id`) REFERENCES `vmaig_auth_vmaiguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-30 17:13:09.661867','1','爬虫',1,'',7,1),(2,'2020-03-30 17:21:01.836839','1','博客文章提取插件',1,'',8,1),(3,'2020-03-30 17:21:12.406149','1','Carousel object',1,'',10,1),(4,'2020-03-30 17:23:19.662664','1','News object',1,'',11,1),(5,'2020-03-30 17:25:19.075027','2','News object',1,'',11,1),(6,'2020-03-30 17:25:56.433137','1','Nav object',1,'',6,1),(7,'2020-03-31 07:54:18.639312','2','News object',3,'',11,1),(8,'2020-03-31 07:54:18.645167','1','News object',3,'',11,1),(9,'2020-03-31 07:54:33.664706','3','News object',1,'',11,1),(10,'2020-03-31 16:03:39.140572','1','博客文章提取插件',3,'',8,1),(11,'2020-03-31 16:20:44.010045','2','博客文章提取插件',1,'',8,1),(12,'2020-03-31 16:39:00.206671','3','数据结构之堆',1,'',8,1),(13,'2020-03-31 16:40:25.929101','3','数据结构之堆',3,'',8,1),(14,'2020-03-31 16:40:25.937770','2','博客文章提取插件',3,'',8,1),(15,'2020-03-31 16:41:07.777194','2','推介工具',1,'',7,1),(16,'2020-03-31 16:42:23.153020','4','博客文章提取插件',1,'',8,1),(17,'2020-03-31 16:43:46.012135','5','csdn',1,'',8,1),(18,'2020-03-31 17:04:26.738649','2','Carousel object',1,'',10,1),(19,'2020-03-31 17:05:04.405153','3','Carousel object',1,'',10,1),(20,'2020-03-31 17:08:16.181537','6','20年三月五日夜生活',1,'',8,1),(21,'2020-04-01 22:23:06.290532','3','python',1,'',7,1),(22,'2020-04-01 22:23:19.546130','4','机器学习',1,'',7,1),(23,'2020-04-01 22:23:29.191381','5','运维',1,'',7,1),(24,'2020-04-01 22:24:28.281265','6','生活',1,'',7,1),(25,'2020-04-01 22:24:45.616122','7','关于作者',1,'',7,1),(26,'2020-04-01 22:25:21.333936','2','Nav object',1,'',6,1),(27,'2020-04-01 22:25:34.371410','3','Nav object',1,'',6,1),(28,'2020-04-01 22:27:48.161897','3','Nav object',3,'',6,1),(29,'2020-04-01 22:27:48.168476','2','Nav object',3,'',6,1),(30,'2020-04-01 22:27:48.175121','1','Nav object',3,'',6,1),(31,'2020-04-01 22:28:05.456461','4','Nav object',1,'',6,1),(32,'2020-04-01 22:28:17.646115','5','Nav object',1,'',6,1),(33,'2020-04-01 22:28:26.720399','6','Nav object',1,'',6,1),(34,'2020-04-01 22:28:35.017813','7','Nav object',1,'',6,1),(35,'2020-04-01 22:30:00.945321','7','Nav object',3,'',6,1),(36,'2020-04-01 22:30:00.956928','6','Nav object',3,'',6,1),(37,'2020-04-01 22:30:00.966252','5','Nav object',3,'',6,1),(38,'2020-04-01 22:30:00.978982','4','Nav object',3,'',6,1),(39,'2020-04-01 22:30:25.527244','8','Nav object',1,'',6,1),(40,'2020-04-01 22:30:36.283126','9','Nav object',1,'',6,1),(41,'2020-04-01 22:30:42.209075','10','Nav object',1,'',6,1),(42,'2020-04-01 22:30:50.757564','11','Nav object',1,'',6,1),(43,'2020-04-01 22:30:58.823804','12','Nav object',1,'',6,1),(44,'2020-04-01 22:31:54.585256','13','Nav object',1,'',6,1),(45,'2020-04-01 22:33:20.198459','14','Nav object',1,'',6,1),(46,'2020-04-01 22:55:12.232109','3','News object',3,'',11,1),(47,'2020-04-01 22:59:48.124675','4','News object',1,'',11,1),(48,'2020-04-01 23:05:48.256065','7','自我介绍',1,'',8,1),(49,'2020-04-01 23:06:31.136162','7','自我介绍',2,'已修改 en_title 。',8,1),(50,'2020-04-01 23:10:38.753761','5','News object',1,'',11,1),(51,'2020-04-01 23:11:17.858559','5','News object',2,'已修改 summary 。',11,1),(52,'2020-04-01 23:11:43.538062','5','News object',2,'已修改 summary 。',11,1),(53,'2020-04-01 23:12:13.006793','4','News object',2,'已修改 summary 。',11,1),(54,'2020-04-01 23:45:23.767177','8','关于作者',1,'',8,1),(55,'2020-04-01 23:45:52.018495','7','自我介绍',2,'已修改 en_title 。',8,1),(56,'2020-04-01 23:46:34.045359','8','关于作者',2,'已修改 content 。',8,1),(57,'2020-04-01 23:55:18.436710','8','关于作者',2,'已修改 content 。',8,1),(58,'2020-04-01 23:58:08.097140','7','自我介绍',3,'',8,1),(59,'2020-04-02 00:11:05.372560','8','关于作者',2,'已修改 content 。',8,1),(60,'2020-04-02 00:30:47.621391','8','关于作者',2,'已修改 content 。',8,1),(61,'2020-04-02 00:38:17.496904','8','关于作者',2,'已修改 content 。',8,1),(62,'2020-04-02 00:48:20.690960','8','关于作者',2,'已修改 content 。',8,1),(63,'2020-04-02 00:59:31.449340','8','关于作者',2,'已修改 content 。',8,1),(64,'2020-04-02 01:09:41.800896','8','关于作者',2,'已修改 content 。',8,1),(65,'2020-04-02 01:13:02.236660','8','关于作者',2,'已修改 content 。',8,1),(66,'2020-04-02 01:17:32.786788','8','关于作者',2,'已修改 content 。',8,1),(67,'2020-04-02 01:18:13.829865','8','关于作者',2,'已修改 content 。',8,1),(68,'2020-04-02 01:19:34.030617','8','关于作者',2,'已修改 summary 。',8,1),(69,'2020-04-02 01:25:55.746407','8','关于作者',2,'已修改 summary 。',8,1),(70,'2020-04-02 01:26:49.845881','8','关于作者',2,'已修改 summary 。',8,1),(71,'2020-04-02 01:28:52.927378','4','博客文章提取插件',2,'已修改 content 。',8,1),(72,'2020-04-02 01:30:40.250799','4','Carousel object',1,'',10,1),(73,'2020-04-02 01:32:46.182825','4','Carousel object',2,'已修改 img 。',10,1),(74,'2020-04-02 01:35:10.695016','4','Carousel object',2,'已修改 img 。',10,1),(75,'2020-04-02 01:35:50.383287','4','Carousel object',2,'已修改 img 。',10,1),(76,'2020-04-02 10:55:12.496793','4','Carousel object',2,'已修改 img 。',10,1),(77,'2020-04-02 12:50:10.124675','4','Carousel object',2,'已修改 img 。',10,1),(78,'2020-04-02 13:30:35.005337','8','关于作者',2,'已修改 content 。',8,1),(79,'2020-04-02 13:33:42.700402','8','关于作者',2,'已修改 content 。',8,1),(80,'2020-04-02 14:08:14.144323','9','博客文章提取插件',1,'',8,1),(81,'2020-04-02 14:09:22.343858','9','博客文章提取插件',2,'已修改 summary 。',8,1),(82,'2020-04-02 14:11:48.720416','4','博客文章提取插件',3,'',8,1),(83,'2020-04-02 14:12:03.194629','6','20年三月五日夜生活',3,'',8,1),(84,'2020-04-02 14:12:03.207115','5','csdn',3,'',8,1),(85,'2020-04-02 14:19:46.764566','9','博客文章提取插件',2,'已修改 tags 。',8,1),(86,'2020-04-02 14:27:54.723283','9','博客文章提取插件',2,'已修改 content 。',8,1),(87,'2020-04-02 14:30:33.836716','5','News object',2,'已修改 summary 。',11,1),(88,'2020-04-02 14:33:29.527068','8','关于作者',2,'已修改 content 。',8,1),(89,'2020-04-02 14:35:18.488440','4','Carousel object',2,'已修改 img 。',10,1),(90,'2020-04-02 14:35:52.784939','4','Carousel object',2,'已修改 img 。',10,1),(91,'2020-04-03 12:49:23.422753','10','博客搭建',1,'',8,1),(92,'2020-04-03 12:50:58.118946','10','博客搭建',2,'已修改 content 和 summary 。',8,1),(93,'2020-04-03 12:52:16.214455','10','博客搭建',2,'已修改 summary 。',8,1),(94,'2020-04-03 12:53:42.351400','10','博客搭建',2,'已修改 summary 。',8,1),(95,'2020-04-03 12:55:10.186952','10','博客搭建',2,'已修改 summary 。',8,1),(96,'2020-04-03 13:01:12.807693','10','博客搭建',2,'已修改 content 。',8,1),(97,'2020-04-03 13:01:49.523881','10','博客搭建',2,'已修改 content 。',8,1),(98,'2020-04-03 13:03:18.415235','10','博客搭建',2,'已修改 content 。',8,1),(99,'2020-04-03 13:03:52.016522','10','博客搭建',2,'已修改 content 。',8,1),(100,'2020-04-03 13:04:50.313256','10','博客搭建',2,'已修改 content 。',8,1),(101,'2020-04-03 13:05:50.851678','10','博客搭建',2,'已修改 content 。',8,1),(102,'2020-04-03 13:08:20.343907','10','博客搭建',2,'已修改 content 。',8,1),(103,'2020-04-03 13:13:46.506080','9','博客文章提取插件',2,'已修改 content 。',8,1),(104,'2020-04-03 13:23:31.913455','1','推介工具',1,'',9,1),(105,'2020-04-03 13:29:39.977220','14','Nav object',2,'已修改 url 。',6,1),(106,'2020-04-03 13:41:31.859073','1','tools',2,'已修改 name 。',9,1),(107,'2020-04-03 13:41:47.556775','14','Nav object',2,'已修改 url 。',6,1),(108,'2020-04-03 13:43:25.894786','14','Nav object',2,'已修改 url 。',6,1),(109,'2020-04-03 13:44:12.688941','14','Nav object',2,'已修改 url 。',6,1),(110,'2020-04-03 13:44:40.499142','1','推介工具',2,'已修改 name 。',9,1),(111,'2020-04-03 13:44:53.477017','14','Nav object',2,'已修改 url 。',6,1),(112,'2020-04-03 13:46:25.739880','2','生活',1,'',9,1),(113,'2020-04-03 13:46:43.313326','13','Nav object',2,'已修改 url 。',6,1),(114,'2020-04-03 13:47:27.189504','12','Nav object',3,'',6,1),(115,'2020-04-03 13:47:27.196116','11','Nav object',3,'',6,1),(116,'2020-04-03 13:47:27.203620','10','Nav object',3,'',6,1),(117,'2020-04-03 13:47:27.209804','9','Nav object',3,'',6,1),(118,'2020-04-03 13:47:27.215362','8','Nav object',3,'',6,1),(119,'2020-04-03 14:09:19.297392','10','博客搭建',2,'已修改 content 。',8,1),(120,'2020-04-03 15:20:53.202523','11','上传图片',1,'',8,1),(121,'2020-04-03 15:21:15.083923','4','Carousel object',2,'已修改 img 。',10,1),(122,'2020-04-03 15:35:32.389539','11','上传图片',2,'已修改 content 。',8,1),(123,'2020-04-03 15:35:52.365904','4','Carousel object',2,'已修改 img 。',10,1),(124,'2020-04-03 15:36:44.070976','4','Carousel object',2,'已修改 img 。',10,1),(125,'2020-04-03 15:38:15.584677','8','关于作者',2,'已修改 img 。',8,1),(126,'2020-04-03 15:45:28.142482','4','Carousel object',2,'已修改 img 。',10,1),(127,'2020-04-03 15:47:28.108713','8','关于作者',2,'已修改 img 。',8,1),(128,'2020-04-03 16:06:30.554981','11','上传图片',2,'没有字段被修改。',8,1),(129,'2020-04-03 16:07:29.250695','11','上传图片',2,'已修改 status 。',8,1),(130,'2020-04-03 16:07:52.864197','11','上传图片',3,'',8,1),(131,'2020-04-03 16:17:31.424285','8','关于作者',2,'已修改 img 。',8,1),(132,'2020-04-03 16:17:41.181059','4','Carousel object',2,'已修改 img 。',10,1),(133,'2020-04-03 16:22:29.905870','9','博客文章提取插件',2,'已修改 img 。',8,1),(134,'2020-04-03 16:24:45.921214','10','博客搭建',2,'已修改 img 。',8,1),(135,'2020-04-03 16:46:06.281923','5','Carousel object',1,'',10,1),(136,'2020-04-03 17:20:59.075196','5','News object',2,'已修改 summary 。',11,1),(137,'2020-04-03 18:05:11.777139','10','博客搭建',2,'已修改 content 。',8,1),(138,'2020-04-03 18:25:43.428360','3','fand',3,'',12,1),(139,'2020-04-03 23:08:05.774740','6','Comment object',3,'',13,1),(140,'2020-04-04 00:54:08.083905','12','Nginx+uWSGI+Django部署',1,'',8,1),(141,'2020-04-04 00:54:32.656137','12','Nginx+uWSGI+Django部署',2,'已修改 status 。',8,1),(142,'2020-04-04 10:22:48.425483','12','Nginx+uWSGI+Django部署',2,'已修改 img，content 和 summary 。',8,1),(143,'2020-04-04 10:23:08.944170','12','Nginx+uWSGI+Django部署',2,'已修改 status 。',8,1),(144,'2020-04-04 10:23:57.724396','12','Nginx+uWSGI+Django部署',2,'已修改 summary 。',8,1),(145,'2020-04-04 10:31:16.547489','12','Nginx+uWSGI+Django部署',2,'已修改 content 。',8,1),(146,'2020-04-04 10:31:50.260140','12','Nginx+uWSGI+Django部署',2,'已修改 content 。',8,1),(147,'2020-04-04 10:33:30.231777','12','Nginx+uWSGI+Django部署',2,'已修改 content 。',8,1),(148,'2020-04-04 10:34:56.446151','12','Nginx+uWSGI+Django部署',2,'已修改 content 。',8,1),(149,'2020-04-04 10:37:23.815993','12','Nginx+uWSGI+Django部署',2,'已修改 content 。',8,1),(150,'2020-04-04 10:38:24.913235','12','Nginx+uWSGI+Django部署',2,'已修改 content 。',8,1),(151,'2020-04-04 10:39:08.351757','12','Nginx+uWSGI+Django部署',2,'已修改 content 。',8,1),(152,'2020-04-07 14:41:32.489638','8','Web',1,'',7,1),(153,'2020-04-07 14:41:46.006568','9','Web-->Flask',1,'',7,1),(154,'2020-04-07 14:44:14.246189','13','一文理解Flask日志处理',1,'',8,1),(155,'2020-04-07 14:45:24.653615','13','一文理解Flask日志处理',2,'已修改 status 。',8,1),(156,'2020-04-07 14:53:25.829622','13','一文理解Flask日志处理',2,'已修改 img 和 status 。',8,1),(157,'2020-04-16 18:34:51.652556','14','centos下搭建python环境',1,'',8,1),(158,'2020-04-16 18:38:45.710531','14','centos下搭建python环境',2,'已修改 img 。',8,1),(159,'2020-04-16 20:16:19.245482','6','News object',1,'',11,1),(160,'2020-04-16 20:16:41.672029','6','News object',2,'已修改 summary 。',11,1),(161,'2020-09-01 10:07:35.860498','4','News object',2,'已修改 pub_time 。',11,1),(162,'2020-09-01 10:07:41.004167','5','News object',2,'已修改 pub_time 。',11,1),(163,'2020-09-01 10:07:46.398805','6','News object',2,'已修改 pub_time 。',11,1),(164,'2020-09-09 16:34:12.765321','15','测试',1,'',8,1),(165,'2020-09-09 16:34:36.561911','15','测试',2,'已修改 status 。',8,1),(166,'2020-09-09 16:35:12.727204','15','测试',2,'已修改 content 。',8,1),(167,'2020-09-09 16:38:08.082133','15','测试',2,'已修改 content 和 summary 。',8,1),(168,'2020-09-09 16:39:54.987994','15','测试',2,'已修改 status 。',8,1),(169,'2020-09-09 17:28:23.269330','16','测试2',1,'',8,1),(170,'2020-09-09 17:31:01.506072','16','测试2',3,'',8,1),(171,'2020-09-13 21:22:27.740019','17','git使用',1,'',8,1),(172,'2020-09-13 21:26:53.333558','17','git使用',2,'已修改 tags 。',8,1),(173,'2020-09-13 21:38:23.653404','18','ELK',1,'',8,1),(174,'2020-09-13 21:44:29.981146','18','ELK',2,'已修改 is_top 。',8,1),(175,'2020-09-13 21:49:22.331434','19','python源码解析',1,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3a11fef54b408512_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(8,'blog','article'),(10,'blog','carousel'),(7,'blog','category'),(9,'blog','column'),(6,'blog','nav'),(11,'blog','news'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(12,'vmaig_auth','vmaiguser'),(13,'vmaig_comments','comment');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-30 17:10:32.220581'),(2,'contenttypes','0002_remove_content_type_name','2020-03-30 17:10:32.408252'),(3,'auth','0001_initial','2020-03-30 17:10:32.904951'),(4,'auth','0002_alter_permission_name_max_length','2020-03-30 17:10:33.022302'),(5,'auth','0003_alter_user_email_max_length','2020-03-30 17:10:33.037033'),(6,'auth','0004_alter_user_username_opts','2020-03-30 17:10:33.052095'),(7,'auth','0005_alter_user_last_login_null','2020-03-30 17:10:33.071361'),(8,'auth','0006_require_contenttypes_0002','2020-03-30 17:10:33.079200'),(9,'vmaig_auth','0001_initial','2020-03-30 17:10:33.691989'),(10,'admin','0001_initial','2020-03-30 17:10:33.955198'),(11,'blog','0001_initial','2020-03-30 17:10:34.792570'),(12,'blog','0002_auto_20150514_2229','2020-03-30 17:10:35.318193'),(13,'blog','0003_auto_20200328_0052','2020-03-30 17:10:35.428325'),(14,'blog','0004_auto_20200329_1203','2020-03-30 17:10:35.456744'),(15,'blog','0005_auto_20200329_1209','2020-03-30 17:10:35.487211'),(16,'blog','0006_auto_20200330_1720','2020-03-30 17:10:35.538763'),(17,'sessions','0001_initial','2020-03-30 17:10:35.634694'),(18,'vmaig_auth','0002_auto_20200328_0052','2020-03-30 17:10:35.661829'),(19,'vmaig_comments','0001_initial','2020-03-30 17:10:35.960527');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7fcpr4azndcqhcjclf2agx1msfuvy83q','NmRmMjQ0MWI4NjA2ODBjMGExNDk2NmI3M2MwOWVkOWQ2MTFiNjQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjRlMmViZTFmMDdiNWZhMDY1MzAwZDVjNDMxNTA2ZmNhYTQ1ODdkIn0=','2020-04-17 23:12:21.550993'),('b6mg0r6xw05yockd8h632k2thpu6t3it','NmRmMjQ0MWI4NjA2ODBjMGExNDk2NmI3M2MwOWVkOWQ2MTFiNjQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjRlMmViZTFmMDdiNWZhMDY1MzAwZDVjNDMxNTA2ZmNhYTQ1ODdkIn0=','2020-07-28 16:02:20.831247'),('bgy01njzbd6g5o3f9k0lqcea7lhnu8ha','MmY5MTNlYzQ5NmNlNjRkMTcyZGMzZjM4OThmMGMxOTRhNGQ0MGNlMzp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMDQ1MTcxYmE4ZmY4NmQ1MzRhNDgyYTAzMmY1YTMxZWNjYTA4MjYxIn0=','2020-04-19 09:17:41.181358'),('hrsewcutkskyjgty4crqjkgx7wa0wv0j','NmRmMjQ0MWI4NjA2ODBjMGExNDk2NmI3M2MwOWVkOWQ2MTFiNjQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjRlMmViZTFmMDdiNWZhMDY1MzAwZDVjNDMxNTA2ZmNhYTQ1ODdkIn0=','2020-07-25 11:30:56.324474'),('i2w2pc2s1errpjxdsj0wnrvlc2mnn0sn','NmRmMjQ0MWI4NjA2ODBjMGExNDk2NmI3M2MwOWVkOWQ2MTFiNjQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjRlMmViZTFmMDdiNWZhMDY1MzAwZDVjNDMxNTA2ZmNhYTQ1ODdkIn0=','2020-04-29 22:27:50.872398'),('k3o952jhd4vzg1gpniuhc4xhz3rcn4dq','NmRmMjQ0MWI4NjA2ODBjMGExNDk2NmI3M2MwOWVkOWQ2MTFiNjQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjRlMmViZTFmMDdiNWZhMDY1MzAwZDVjNDMxNTA2ZmNhYTQ1ODdkIn0=','2020-09-23 16:37:30.415722'),('q016c7uu548wf805oenmujukkyyhcs3f','NmRmMjQ0MWI4NjA2ODBjMGExNDk2NmI3M2MwOWVkOWQ2MTFiNjQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjRlMmViZTFmMDdiNWZhMDY1MzAwZDVjNDMxNTA2ZmNhYTQ1ODdkIn0=','2020-09-11 10:26:52.545405'),('rz16hndlgp9mqj5pq37zo6g6jtcx9s5q','NGYzYWU1YzgyMWU1MDY0YmFjOTVkM2NhNTUwNWE2YzZlODkwMDczMTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YTllZjBiMGE0NzNmZjkwYjUyZWExYTg2NDZjOTcxOGI0NDE4Yzg0In0=','2020-08-15 16:13:56.063231'),('v1qbdbcwrxw017bdtey98gvf2d10oapg','NmRmMjQ0MWI4NjA2ODBjMGExNDk2NmI3M2MwOWVkOWQ2MTFiNjQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjRlMmViZTFmMDdiNWZhMDY1MzAwZDVjNDMxNTA2ZmNhYTQ1ODdkIn0=','2020-04-30 18:32:36.146820'),('y3402i96kz3zyr3wxzyaa5xs3hs3k34q','NmRmMjQ0MWI4NjA2ODBjMGExNDk2NmI3M2MwOWVkOWQ2MTFiNjQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjRlMmViZTFmMDdiNWZhMDY1MzAwZDVjNDMxNTA2ZmNhYTQ1ODdkIn0=','2020-04-17 13:59:37.649748');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmaig_auth_vmaiguser`
--

DROP TABLE IF EXISTS `vmaig_auth_vmaiguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmaig_auth_vmaiguser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `img` varchar(200) NOT NULL,
  `intro` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmaig_auth_vmaiguser`
--

LOCK TABLES `vmaig_auth_vmaiguser` WRITE;
/*!40000 ALTER TABLE `vmaig_auth_vmaiguser` DISABLE KEYS */;
INSERT INTO `vmaig_auth_vmaiguser` VALUES (1,'pbkdf2_sha256$20000$jUzSk2Xll6P3$Wn/84HFIuVxIsiGtJXnJZwq6NSC2RTlkW4COdQQEJ0I=','2020-09-09 16:37:30.406624',1,'fandsimple','','','',1,1,'2020-03-30 17:12:39.351302','/static/tx/tx_100x100_1.png',NULL),(2,'pbkdf2_sha256$20000$cqjMFflYBLWI$DVh9Vylwotk0/C7WUKloQ3v5myffDuBy3zfEVUTv83o=','2020-04-01 19:44:19.175124',0,'段书凯','','','fand1024@163.com',0,1,'2020-04-01 19:44:17.639791','/static/tx/default.jpg',NULL),(4,'pbkdf2_sha256$20000$L2Tp4MiwKIi6$prmtp9mr2P4kNd6JgnW95CZoN6Ry52DmZ/bFKOAhkPQ=','2020-04-03 23:08:37.069219',0,'link','','','1065442143@qq.com',0,1,'2020-04-03 23:04:30.151824','/static/tx/tx_100x100_4.png',NULL),(5,'pbkdf2_sha256$20000$57eafMRGmU4m$n6M6p09iWBkmKxVgxi/fKxcKqnQ2P0QsrgD4Y/G3EKk=','2020-04-05 09:17:41.175276',0,'franck','','','842549758@qq.com',0,1,'2020-04-05 09:17:39.658923','/static/tx/default.jpg',NULL),(6,'pbkdf2_sha256$20000$UROvcsGg5Jpn$NtkzdkWJzVZTkli9h1VKCfWQV5ByCuMMCEYQbTpiBtg=','2020-08-01 16:13:56.055355',0,'test','','','zhanglu2@bestseller.com.cn',0,1,'2020-08-01 16:13:54.229827','/static/tx/default.jpg',NULL);
/*!40000 ALTER TABLE `vmaig_auth_vmaiguser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmaig_auth_vmaiguser_groups`
--

DROP TABLE IF EXISTS `vmaig_auth_vmaiguser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmaig_auth_vmaiguser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vmaiguser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vmaiguser_id` (`vmaiguser_id`,`group_id`),
  KEY `vmaig_auth_vmaiguser__group_id_340f3db32d8c0cb8_fk_auth_group_id` (`group_id`),
  CONSTRAINT `vmaig_a_vmaiguser_id_76876c59adeaa1e8_fk_vmaig_auth_vmaiguser_id` FOREIGN KEY (`vmaiguser_id`) REFERENCES `vmaig_auth_vmaiguser` (`id`),
  CONSTRAINT `vmaig_auth_vmaiguser__group_id_340f3db32d8c0cb8_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmaig_auth_vmaiguser_groups`
--

LOCK TABLES `vmaig_auth_vmaiguser_groups` WRITE;
/*!40000 ALTER TABLE `vmaig_auth_vmaiguser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `vmaig_auth_vmaiguser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmaig_auth_vmaiguser_user_permissions`
--

DROP TABLE IF EXISTS `vmaig_auth_vmaiguser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmaig_auth_vmaiguser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vmaiguser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vmaiguser_id` (`vmaiguser_id`,`permission_id`),
  KEY `vmaig_auth__permission_id_2ddbf0bd545607f7_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `vmaig_a_vmaiguser_id_5e3fd080ffd6e46c_fk_vmaig_auth_vmaiguser_id` FOREIGN KEY (`vmaiguser_id`) REFERENCES `vmaig_auth_vmaiguser` (`id`),
  CONSTRAINT `vmaig_auth__permission_id_2ddbf0bd545607f7_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmaig_auth_vmaiguser_user_permissions`
--

LOCK TABLES `vmaig_auth_vmaiguser_user_permissions` WRITE;
/*!40000 ALTER TABLE `vmaig_auth_vmaiguser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `vmaig_auth_vmaiguser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmaig_comments_comment`
--

DROP TABLE IF EXISTS `vmaig_comments_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmaig_comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vmaig_comments_com_article_id_ffe32c361a6f6b8_fk_blog_article_id` (`article_id`),
  KEY `vmaig_comment_user_id_f29b22d5595e962_fk_vmaig_auth_vmaiguser_id` (`user_id`),
  CONSTRAINT `vmaig_comment_user_id_f29b22d5595e962_fk_vmaig_auth_vmaiguser_id` FOREIGN KEY (`user_id`) REFERENCES `vmaig_auth_vmaiguser` (`id`),
  CONSTRAINT `vmaig_comments_com_article_id_ffe32c361a6f6b8_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmaig_comments_comment`
--

LOCK TABLES `vmaig_comments_comment` WRITE;
/*!40000 ALTER TABLE `vmaig_comments_comment` DISABLE KEYS */;
INSERT INTO `vmaig_comments_comment` VALUES (4,'你们是我最好的产品经理，期待大家的建议。','2020-04-03 13:11:16.060757',9,1),(5,'大家是最好的产品经理，期待大家的建议','2020-04-03 13:14:52.207864',10,1),(7,'期待更精彩内容','2020-04-03 23:08:56.951246',8,4);
/*!40000 ALTER TABLE `vmaig_comments_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-15 10:51:42
