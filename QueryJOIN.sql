-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name` FROM `degrees` JOIN `students` ON `degrees`.`id`= `students`.`degree_id` WHERE `degrees`.`name` = 'Corso di Laurea in Economia'; 

-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name`, `departments`.`name` FROM `departments` JOIN `degrees` ON `departments`.`id`= `degrees`.`department_id` WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'; 

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`name`, `teachers`.`surname`, `courses`.`name` FROM `teachers` JOIN `course_teacher` ON `teachers`.`id` = `course_teacher`.`course_id` JOIN `courses` ON `course_teacher`.`course_id` = `courses`.`id` WHERE `teachers`.`name` = 'Fulvio' AND `teachers`.`surname`= 'Amato'; 

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`surname` AS `Cognome`,`students`.`name` AS `Nome`, `degrees`.`name` AS `Corso di laurea`, `departments`.`name` AS `Dipartimento` FROM `degrees` JOIN `students` ON `degrees`.`id` = `students`.`degree_id` JOIN `departments` ON `degrees`.`department_id` = `departments`.`id` ORDER BY `students`.`surname`ASC; 

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)


-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami

