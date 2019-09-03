use mydatabase;

INSERT INTO `teacher` (`teacher_id`,
                       `surname`,
                       `position`,
                       `kafedra`,
                       `specialization`,
                       `phone`)
VALUES ('221Л',
        'Фролов',
        'Доцент',
        'ЭВМ',
        'АСОИ, ЭВМ',
        487),
       ('222Л',
        'Костин',
        'Доцент',
        'ЭВМ',
        'ЭВМ',
        543),
       ('225Л',
        'Бойко',
        'Профессор',
        'АСУ',
        'АСОИ, ЭВМ',
        112),
       ('430Л',
        'Глазов',
        'Ассистент',
        'ТФ',
        'СД',
        421),
       ('110Л',
        'Петров',
        'Ассистент',
        'Экономики',
        'Международная экономика',
        324);

INSERT INTO `subject` (`subject_id`,
                       `name`,
                       `hours`,
                       `specialization`,
                       `semestr`)
VALUES ('12П',
        'Мини ЭВМ',
        36,
        'ЭВМ',
        1),
       ('14П',
        'ПЭВМ',
        72,
        'ЭВМ',
        2),
       ('17П',
        'СУБД ПК',
        48,
        'АСОИ',
        4),
       ('18П',
        'ВКСС',
        52,
        'АСОИ',
        6),
       ('34П',
        'Физика',
        30,
        'СД',
        6),
       ('22П',
        'Аудит',
        24,
        'Бухучута',
        3);

INSERT INTO `students_group` (`number_group`,
                       `name`,
                       `kol_people`,
                       `specialization`,
                       `surname_of_main`)
VALUES ('8Г',
        'Э-12',
        18,
        'ЭВМ',
        'Иванова'),
       ('7Г',
        'Э-15',
        22,
        'ЭВМ',
        'Сеткин'),
       ('4Г',
        'АС-9',
        24,
        'АСОИ',
        'Балабанов'),
       ('3Г',
        'АС-8',
        20,
        'АСОИ',
        'Чижов'),
       ('17Г',
        'С-14',
        29,
        'СД',
        'Амросов'),
       ('12Г',
        'М-6',
        16,
        'Международная экономика',
        'Трубин'),
       ('10Г',
        'Б-4',
        21,
        'Бухучет',
        'Зязюткин');

INSERT INTO `references` (`number_group`,
                              `subject_id`,
                              `teacher_id`,
                              `room`)
VALUES ('8Г',
        '12П',
        '222Л',
        112),
       ('8Г',
        '14П',
        '221Л',
        220),
       ('8Г',
        '17П',
        '222Л',
        112),
       ('7Г',
        '14П',
        '221Л',
        220),
       ('7Г',
        '17П',
        '222Л',
        241),
       ('7Г',
        '18П',
        '225Л',
        210),
       ('4Г',
        '12П',
        '222Л',
        112),
       ('4Г',
        '18П',
        '225Л',
        210),
       ('3Г',
        '12П',
        '222Л',
        112),
       ('3Г',
        '17П',
        '221Л',
        241),
       ('3Г',
        '18П',
        '225Л',
        210),
       ('17Г',
        '12П',
        '222Л',
        112),
       ('17Г',
        '22П',
        '110Л',
        220),
       ('17Г',
        '34П',
        '430Л',
        118),
       ('12Г',
        '12П',
        '222Л',
        112),
       ('12Г',
        '22П',
        '110Л',
        210),
       ('10Г',
        '12П',
        '222Л',
        210),
       ('10Г',
        '22П',
        '110Л',
        210);