use myDatabase;

CREATE TABLE `teacher`
(
  `teacher_id`     varchar(255) PRIMARY KEY NOT NULL,
  `surname`        varchar(255)             NOT NULL,
  `position`       varchar(255)             NOT NULL,
  `kafedra`        varchar(255)             NOT NULL,
  `specialization` varchar(255)             NOT NULL,
  `phone`          int UNIQUE               NOT NULL
) ENGINE = INNODB;

CREATE TABLE `subject`
(
  `subject_id`     varchar(255) PRIMARY KEY NOT NULL,
  `name`           varchar(255)             NOT NULL,
  `hours`          int                      NOT NULL,
  `specialization` varchar(255)             NOT NULL,
  `semestr`        int                      NOT NULL
) ENGINE = INNODB;

CREATE TABLE `students_group`
(
  `number_group`    varchar(255) PRIMARY KEY NOT NULL,
  `name`            varchar(255)             NOT NULL,
  `kol_people`      int                      NOT NULL,
  `specialization`  varchar(255)             NOT NULL,
  `surname_of_main` varchar(255)             NOT NULL
) ENGINE = INNODB;

CREATE TABLE `references`
(
  `number_group` varchar(255) NOT NULL,
  `subject_id`   varchar(255) NOT NULL,
  `teacher_id`   varchar(255) NOT NULL,
  `room`         int          NOT NULL
) ENGINE = INNODB;

ALTER TABLE `references`
  ADD FOREIGN KEY (`number_group`) REFERENCES `students_group` (`number_group`)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE `references`
  ADD FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE `references`
  ADD FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`)
    ON UPDATE CASCADE
    ON DELETE CASCADE;