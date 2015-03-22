SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE=NO_AUTO_VALUE_ON_ZERO */;
/*!40101 SET NAMES utf8 */;
CREATE TABLE `e2BlogActions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EntityID` int(10) unsigned NOT NULL DEFAULT '0',
  `Stamp` int(10) unsigned NOT NULL DEFAULT '0',
  `HitCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

ALTER TABLE `e2BlogActions` DISABLE KEYS;
INSERT INTO `e2BlogActions` VALUES('103', '4', '1425970800', '1'), ('102', '4', '1425970800', '1'), ('101', '3', '1425970800', '1');
ALTER TABLE `e2BlogActions` ENABLE KEYS;
CREATE TABLE `e2BlogAliases` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EntityID` int(10) unsigned NOT NULL DEFAULT '0',
  `Alias` varchar(64) NOT NULL DEFAULT '',
  `Stamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Alias` (`Alias`),
  KEY `EntityID` (`EntityID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

ALTER TABLE `e2BlogAliases` DISABLE KEYS;
INSERT INTO `e2BlogAliases` VALUES('1', '3', 'pervaya-zapis', '1425971051'), ('2', '4', 'novaya-2', '1425991934');
ALTER TABLE `e2BlogAliases` ENABLE KEYS;
CREATE TABLE `e2BlogNotes` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL DEFAULT '',
  `OriginalAlias` varchar(64) NOT NULL DEFAULT '',
  `Text` text NOT NULL,
  `FormatterID` varchar(32) NOT NULL DEFAULT 'neasden',
  `IsPublished` tinyint(1) NOT NULL DEFAULT '0',
  `IsIssue` tinyint(1) NOT NULL DEFAULT '0',
  `IsCommentable` tinyint(1) NOT NULL DEFAULT '0',
  `IsVisible` tinyint(1) NOT NULL DEFAULT '1',
  `IsFavourite` tinyint(1) NOT NULL DEFAULT '0',
  `Stamp` int(10) unsigned NOT NULL DEFAULT '0',
  `LastModified` int(10) unsigned NOT NULL DEFAULT '0',
  `Offset` int(11) NOT NULL DEFAULT '0',
  `IsDST` tinyint(1) NOT NULL DEFAULT '0',
  `IP` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `Stamp` (`Stamp`),
  FULLTEXT KEY `Title` (`Title`,`Text`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

ALTER TABLE `e2BlogNotes` DISABLE KEYS;
INSERT INTO `e2BlogNotes` VALUES('1', 'test', 'test', 'LOREN IPSUM', 'neasden', '0', '0', '0', '1', '0', '1420138490', '1420138490', '10800', '0', ''), ('2', 'new', 'new', 'new', 'neasden', '0', '0', '0', '1', '0', '1420138524', '1420138524', '10800', '0', ''), ('3', 'Первая запись', 'pervaya-zapis', 'Ровно месяц до переезда в Питер. Не очень-то и готовлюсь. Никак не могу собраться, преимущественно с мыслями в голове. Почему-то настраиваю себя на худшие сценарии, хотя и понимаю, что это неправильно. Хочу через год прочитать этот пост. Рассмеяться.', 'neasden', '1', '0', '1', '1', '1', '1420318166', '1425971051', '10800', '0', '::1'), ('4', 'Моя осминожка', 'novaya-2', 'Ровно месяц до переезда в Питер. Не очень-то и готовлюсь. Никак не могу собраться, преимущественно с мыслями в голове. \r\n\r\nПочему-то настраиваю себя на худшие сценарии, хотя и понимаю, что это неправильно. Хочу через год прочитать этот пост. Рассмеяться.', 'neasden', '1', '0', '1', '1', '0', '1422647202', '1425991934', '10800', '0', '::1'), ('5', 'Новая', 'novaya', 'текст', 'neasden', '0', '0', '0', '1', '0', '1424024750', '1424024750', '10800', '0', '');
ALTER TABLE `e2BlogNotes` ENABLE KEYS;
CREATE TABLE `e2BlogComments` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NoteID` int(10) unsigned NOT NULL DEFAULT '0',
  `AuthorName` varchar(255) NOT NULL DEFAULT '',
  `AuthorEmail` varchar(255) NOT NULL DEFAULT '',
  `Text` text NOT NULL,
  `Reply` text NOT NULL,
  `IsVisible` tinyint(1) NOT NULL DEFAULT '1',
  `IsFavourite` tinyint(1) NOT NULL DEFAULT '0',
  `IsReplyVisible` tinyint(1) NOT NULL DEFAULT '0',
  `IsReplyFavourite` tinyint(1) NOT NULL DEFAULT '0',
  `IsAnswerAware` tinyint(1) NOT NULL DEFAULT '1',
  `IsSubscriber` tinyint(1) NOT NULL DEFAULT '0',
  `IsSpamSuspect` tinyint(1) NOT NULL DEFAULT '0',
  `IsNew` tinyint(1) NOT NULL DEFAULT '0',
  `Stamp` int(10) unsigned NOT NULL DEFAULT '0',
  `LastModified` int(10) unsigned NOT NULL DEFAULT '0',
  `ReplyStamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ReplyLastModified` int(10) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `NoteID` (`NoteID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

ALTER TABLE `e2BlogComments` DISABLE KEYS;
INSERT INTO `e2BlogComments` VALUES('1', '4', 'Дмитрий', 'dmitry@mail.ru', 'Комментарий', '', '1', '0', '0', '0', '1', '0', '0', '0', '1424020669', '1424020669', '0', '0', '::1');
ALTER TABLE `e2BlogComments` ENABLE KEYS;
CREATE TABLE `e2BlogKeywords` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ParentKeywordID` int(10) unsigned NOT NULL DEFAULT '0',
  `Keyword` varchar(255) NOT NULL DEFAULT '',
  `URLName` varchar(32) NOT NULL DEFAULT '',
  `Description` text NOT NULL,
  `IsFavourite` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

ALTER TABLE `e2BlogKeywords` DISABLE KEYS;
INSERT INTO `e2BlogKeywords` VALUES('1', '0', 'новая', 'novaya', '', '0'), ('2', '0', 'не новая', 'ne-novaya', '', '0'), ('3', '0', 'тег', 'teg', '', '0');
ALTER TABLE `e2BlogKeywords` ENABLE KEYS;
CREATE TABLE `e2BlogNotesKeywords` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NoteID` int(10) unsigned NOT NULL DEFAULT '0',
  `KeywordID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `NoteID` (`NoteID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

ALTER TABLE `e2BlogNotesKeywords` DISABLE KEYS;
INSERT INTO `e2BlogNotesKeywords` VALUES('1', '4', '1'), ('2', '3', '2'), ('3', '5', '3');
ALTER TABLE `e2BlogNotesKeywords` ENABLE KEYS;
COMMIT;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
