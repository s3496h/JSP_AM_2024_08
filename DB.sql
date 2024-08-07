DROP DATABASE IF EXISTS `24_08_JAM`;
CREATE DATABASE `24_08_JAM`;
USE `24_08_JAM`;
CREATE TABLE article(
      id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
      regDate DATETIME NOT NULL,
      title CHAR(100) NOT NULL,
      `body` TEXT NOT NULL
);

CREATE TABLE `member`(
      id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
      regDate DATETIME NOT NULL,
      loginId CHAR(100) NOT NULL,
      loginPw CHAR(200) NOT NULL,
      `name` CHAR(100) NOT NULL
);

## 게시글 테스트 데이터 생성
INSERT INTO article
SET regDate = NOW(),
title = '제목1',
`body` = '내용1';
INSERT INTO article
SET regDate = NOW(),
title = '제목2',
`body` = '내용2';
INSERT INTO article
SET regDate = NOW(),
title = '제목3',
`body` = '내용3';

## 회원 테스트 데이터 생성
INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = '회원1';

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = '회원2';

SELECT *
FROM article
ORDER BY id DESC;

SELECT *
FROM `member`;



###############################################################################

## 게시글 테스트 데이터 대량 생성
INSERT INTO article
SET regDate = NOW(),
title = CONCAT('제목', SUBSTRING(RAND() * 1000 FROM 1 FOR 2)),
`body` = CONCAT('내용', SUBSTRING(RAND() * 1000 FROM 1 FOR 2));1000 FROM 1 FOR 2));