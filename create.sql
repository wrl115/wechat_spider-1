CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biz` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '每个账号的唯有标记base64',
  `appmsgid` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '每个账号一个文章的 ID，注意，这里不是全局唯一的，多个账号可能重复',
  `accountName` varchar(255) DEFAULT NULL COMMENT '公众号名称',
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `contentUrl` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `digest` text,
  `idx` int(11) DEFAULT NULL COMMENT '多篇文章的时候的排序，第一篇是 1，第二篇是 2',
  `sourceUrl` text CHARACTER SET latin1,
  `createTime` datetime DEFAULT NULL,
  `readNum` int(11) DEFAULT '0',
  `likeNum` int(11) DEFAULT '0',
  `rewardNum` int(11) DEFAULT '0',
  `electedCommentNum` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contentUrl` (`contentUrl`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
