DROP TABLE IF EXISTS USERS;

CREATE TABLE USERS (
                       userId          varchar(12)		NOT NULL,
                       password		varchar(12)		NOT NULL,
                       name			varchar(20)		NOT NULL,
                       email			varchar(50),

                       PRIMARY KEY               (userId)
);

INSERT INTO USERS VALUES('admin', 'password', '지윤', 'admin@naver.com');

DROP TABLE IF EXISTS QUESTIONS;

CREATE TABLE QUESTIONS (
                           questionId 			bigint				auto_increment,
                           writer				varchar(30)			NOT NULL,
                           title				varchar(50)			NOT NULL,
                           contents			varchar(5000)		NOT NULL,
                           createdDate			timestamp			NOT NULL,
                           countOfAnswer int,
                           PRIMARY KEY               (questionId)
);

DROP TABLE IF EXISTS ANSWERS;

CREATE TABLE ANSWERS (
                         answerId 			bigint				auto_increment,
                         writer				varchar(30)			NOT NULL,
                         contents			varchar(5000)		NOT NULL,
                         createdDate			timestamp			NOT NULL,
                         questionId			bigint				NOT NULL,
                         PRIMARY KEY         (answerId)
);

INSERT INTO QUESTIONS (writer, title, contents, createdDate, countOfAnswer) VALUES
    ('강지윤',
     '요즘 날씨가 넘 좋아서 신나요.',
     '살랑살랑 불어오는 바람을 맞으며.. 한강을 산책하니.. 개가 되는 이 기분. 신난다.',
     CURRENT_TIMESTAMP(), 0);

INSERT INTO QUESTIONS (writer, title, contents, createdDate, countOfAnswer) VALUES
    ('박재욱',
     '안녕하세요??^^',
     '저는 낯을 정말 안가려서 어느 자리에 가도 진행자가 된답니다 ^^\n 저를 발견하면 말 걸어주세요^^~!',
     CURRENT_TIMESTAMP(), 0);

INSERT INTO QUESTIONS (writer, title, contents, createdDate, countOfAnswer) VALUES
    ('김민우',
     '세상 제일 열정맨이에요.',
     '어려움에 봉착하면 슈퍼맨 민우를 불러주세요. >.0',
     CURRENT_TIMESTAMP(), 0);

INSERT INTO QUESTIONS (writer, title, contents, createdDate, countOfAnswer) VALUES
    ('정재연',
     '항상 웃고 있는 스마일맨',
     '문제 풀 때도 웃고 있으려나?? :)',
     CURRENT_TIMESTAMP(), 0);

INSERT INTO ANSWERS (writer, contents, createdDate, questionId) VALUES
    ('이현희',
     '잠 좀 자게 해주세요.',
     CURRENT_TIMESTAMP(), 1);

INSERT INTO ANSWERS (writer, contents, createdDate, questionId) VALUES
    ('김채린',
     '바쁘다 바빠 현대사회',
     CURRENT_TIMESTAMP(), 4);

INSERT INTO ANSWERS (writer, contents, createdDate, questionId) VALUES
    ('유가은',
     '돈 계산은 철저하게.',
     CURRENT_TIMESTAMP(), 2);

INSERT INTO ANSWERS (writer, contents, createdDate, questionId) VALUES
    ('박성현',
     '저는 막내지만 팀장 맡는 것을 좋아한답니다. 팀장은 모두 잘생긴 제게 맡겨주세요^^~~!!',
     CURRENT_TIMESTAMP(), 3);