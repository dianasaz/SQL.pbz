use mydatabase;
SELECT * FROM teacher;
SELECT * FROM students_group WHERE specialization = 'ЭВМ';
SELECT teacher_id, room from `references` where subject_id = '18П';
SELECT DISTINCT subject_identity, name FROM subject JOIN `references` ON subject.subject_identity = subject_id JOIN teacher ON `references`.teacher_id = teacher.teacher_identity WHERE surname = 'Костин';
SELECT number_group FROM `references` JOIN teacher ON `references`.teacher_id = teacher.teacher_identity WHERE surname = 'Фролов';
SELECT * FROM subject WHERE specialization = 'АСОИ';
SELECT * FROM teacher WHERE LOCATE('АСОИ', specialization);
SELECT DISTINCT surname FROM teacher JOIN `references` ON teacher.teacher_identity = `references`.teacher_id WHERE room = 210;


SELECT SUM(kol_people) FROM students_group WHERE specialization = 'ЭВМ';
SELECT DISTINCT teacher_id FROM `references` JOIN students_group sg ON `references`.number_group = sg.number_group WHERE sg.specialization = 'ЭВМ' ;
SELECT DISTINCT surname FROM teacher JOIN `references` r on teacher.teacher_identity = r.teacher_id WHERE r.subject_id IN (SELECT DISTINCT subject_id FROM `references` WHERE `references`.teacher_id = (SELECT DISTINCT teacher_id FROM `references` JOIN teacher t on t.teacher_identity = `references`.teacher_id WHERE `references`.subject_id = '14П'));
SELECT DISTINCT subject_id, name, hours, specialization, semestr FROM subject JOIN `references` r on subject.subject_identity = r.subject_id WHERE subject_id NOT IN (SELECT DISTINCT subject_id FROM `references` WHERE teacher_id = '221Л');
SELECT DISTINCT subject_id, name, hours, specialization, semestr FROM subject JOIN `references` r on subject.subject_identity = r.subject_id WHERE subject_id NOT IN (SELECT DISTINCT subject_id FROM `references` JOIN students_group ON `references`.number_group = students_group.number_group WHERE students_group.name = 'М-6');
