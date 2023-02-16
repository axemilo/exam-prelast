DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS colleges CASCADE;
DROP TABLE IF EXISTS facultets CASCADE;
DROP TABLE IF EXISTS subjects CASCADE;
DROP TABLE IF EXISTS setsubjects CASCADE;

CREATE TABLE users (
  user_id serial PRIMARY KEY,
  fullname varchar(35) NOT NULL,
  username varchar(20) NOT NULL UNIQUE,
  password varchar(16) NOT NULL,
  email varchar(25) NOT NULL UNIQUE,
  gender varchar(6) NOT NULL
);

CREATE TABLE colleges(
  college_id serial PRIMARY KEY,
  college_name varchar(65) NOT NULL
);

CREATE TABLE facultets(
  facultet_id serial PRIMARY KEY,
  facultet_name varchar(45) NOT NULL,
  college_id int references colleges(college_id)
);

CREATE TABLE subjects(
  subject_id serial PRIMARY KEY,
  subject_name varchar(20) NOT NULL
);

CREATE TABLE setsubjects(
  set_subject_id serial PRIMARY KEY,
  first_subject int references subjects(subject_id),
  second_subject int references subjects(subject_id)
);

CREATE TABLE tests(
  test_id serial PRIMARY KEY,
  test_ques text NOT NULL,
  test_answer varchar(35) NOT NULL,
  subject_id references subjects(subject_id)
);



INSERT INTO colleges
VALUES
(1, 'Toshkent Tibbiyot Akademiyasi',4),
(2, 'Toshkent Axborot Texnologiyalari Universiteti', 2),
(3, 'Toshkent Moliya Instuti', 1),
(4, 'Ozbekiston Milliy Universiteti', 3),
(5, 'Toshkent Pediatriya Tibbiyot Instuti', 4);

INSERT INTO facultets
VALUES
(1, 'Biotibbiyot muhandisligi', 1),
(2, 'Davolash ishi', 1),
(3, 'Oliy hamshiralik ishi', 1),
(4, 'Pediatriya ishi', 1),
(5, 'Stomatologiya', 1);

INSERT INTO facultets
VALUES
(6, 'Elektron Tijorat', 2),
(7, 'Infokommunikatsiya injiringi', 2),
(8, 'Kiberxavfsizlik injiringi', 2),
(9, 'Mexatronika va robototexnika', 2),
(10, 'Pochta aloqasi texnologiyasi', 2);

INSERT INTO facultets
VALUES
(11, 'Baholash ishi', 3),
(12, 'Bank ishi va auditi', 3),
(13, 'Birja ishi', 3),
(14, 'Biznes tahlil', 3),
(15, 'Budget nazorati va gaznachiligi', 3);

INSERT INTO facultets
VALUES
(16, 'Amaliy etika', 4),
(17, 'Amaliy Matematika', 4),
(18, 'Arxeologiya', 4),
(19, 'Arxivshunoslik', 4),
(20, 'Astronomiya', 4);

INSERT INTO facultets
VALUES
(21, 'Xalq tabobati', 5),
(22, 'Tibbiy-biologik ishi', 5),
(23, 'Oliy hamshiralik', 5),
(24, 'Pediatriya ishi', 5),
(25, 'Davolash ishi', 5);

INSERT INTO subjects
VALUES
(1, 'Matematika'),
(2, 'Ingliz tili'),
(3, 'Fizika'),
(4, 'Biologiya'),
(5, 'Kimyo');

INSERT INTO setsubjects
VALUES
(1, 1,2),
(2, 1,3),
(3, 4,5);

INSERT INTO tests
VALUES
(1,'Test_1', "answer_1", 1),
(2,'Test_2', "answer_2", 1),
(3,'Test_3', "answer_3", 1),
(4,'Test_4', "answer_4", 1),
(5,'Test_5', "answer_5", 1),
(6,'Test_6', "answer_6", 1),
(7,'Test_7', "answer_7", 1),
(8,'Test_8', "answer_8", 1),
(9,'Test_9', "answer_9", 1),
(10,'Test_10', "answer_10", 1),
(11,'Test_11', "answer_11", 2),
(12,'Test_12', "answer_12", 2),
(13,'Test_13', "answer_13", 2),
(14,'Test_14', "answer_14", 2),
(15,'Test_15', "answer_15", 2),
(16,'Test_16', "answer_16", 2),
(17,'Test_17', "answer_17", 2),
(18,'Test_18', "answer_18", 2),
(19,'Test_19', "answer_19", 2),
(20,'Test_20', "answer_20", 2),
(21,'Test_21', "answer_21", 3),
(22,'Test_22', "answer_22", 3),
(23,'Test_23', "answer_23", 3),
(24,'Test_24', "answer_24", 3),
(25,'Test_25', "answer_25", 3),
(26,'Test_26', "answer_26", 3),
(27,'Test_27', "answer_27", 3),
(28,'Test_28', "answer_28", 3),
(29,'Test_29', "answer_29", 3),
(30,'Test_30', "answer_30", 3),
(31,'Test_31', "answer_31", 4),
(32,'Test_32', "answer_32", 4),
(33,'Test_33', "answer_33", 4),
(34,'Test_34', "answer_34", 4),
(35,'Test_35', "answer_35", 4),
(36,'Test_36', "answer_36", 4),
(37,'Test_37', "answer_37", 4),
(38,'Test_38', "answer_38", 4),
(39,'Test_39', "answer_39", 4),
(40,'Test_40', "answer_40", 4),
(41,'Test_41', "answer_41", 5),
(42,'Test_42', "answer_42", 5),
(43,'Test_43', "answer_43", 5),
(44,'Test_44', "answer_44", 5),
(45,'Test_45', "answer_45", 5),
(46,'Test_46', "answer_46", 5),
(47,'Test_47', "answer_47", 5),
(48,'Test_48', "answer_48", 5),
(49,'Test_49', "answer_49", 5),
(50,'Test_50', "answer_50", 5);

