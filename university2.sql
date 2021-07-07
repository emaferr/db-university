UNIVERSITY DB

GROUP_BY:

1 Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(id) AS numero_studenti, YEAR(enrolment_date) AS anno_iscrizione 
FROM students 
GROUP BY anno_iscrizione

2 Contare gli insegnanti che hanno ufficio nello stesso edificio

SELECT COUNT(id) AS numero_insegnanti, office_address AS indirizzo_ufficio 
FROM teachers 
GROUP BY indirizzo_ufficio

3 Calcolare la media dei voti di ogni appello di esame

SELECT exam_id AS id_esame , ROUND(AVG(vote),2) AS media_voti 
FROM exam_student 
GROUP BY id_esame

4 Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT degrees.name AS nome_laurea, courses.degree_id AS id_laurea, COUNT(courses.id) AS numero_corsi 
FROM degrees 
JOIN courses ON degrees.id = courses.degree_id 
GROUP BY id_laurea

JOINS:

1 Selezionare tutti gli studenti iscritti al Corso di Laurea Economia

SELECT students.* 
FROM degrees 
JOIN students ON degrees.id = students.degree_id 
WHERE degrees.name = "Corso di Laurea in Economia"

2 Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze

SELECT degrees.* 
FROM departments 
JOIN degrees ON departments.id = degrees.department_id 
WHERE departments.name = "Dipartimento di Neuroscienze"

3 Selezionare tutti i corsi dove insegna Fulvio Amato (id=44)

SELECT `courses`.`name` 
FROM courses 
JOIN course_teacher ON courses.id = course_teacher.course_id 
WHERE course_teacher.teacher_id = 44

4 Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, ordine alfabetico per cognome e nome 

SELECT `students`.`surname` AS cognome_studente, `students`.`name` AS nome_studente, `degrees`.`name` AS nome_laurea, `degrees`.`level` AS livello_laurea, `departments`.`name` AS nome_dipartimento 
FROM departments 
JOIN degrees ON departments.id = degrees.department_id 
JOIN students ON degrees.id = students.degree_id 
ORDER BY cognome_studente ASC, nome_studente ASC

5 Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

SELECT `degrees`.`name` AS nome_laurea, `courses`.`name` AS nome_corso, `teachers`.`name` AS nome_insegnante, `teachers`.`surname` AS cognome_insegnante 
FROM degrees 
JOIN courses ON degrees.id = courses.degree_id 
JOIN course_teacher ON course_teacher.course_id = courses.id 
JOIN teachers ON course_teacher.teacher_id = teachers.id

6 Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

SELECT COUNT(teachers.id)
FROM departments
JOIN degrees ON departments.id = degrees.department_id
JOIN courses ON degrees.id = courses.degree_id
JOIN course_teacher ON course_teacher.course_id = courses.id 
JOIN teachers ON course_teacher.teacher_id = teachers.id
WHERE `departments`.`id` = 5
// Il risultato e 70 non riesco ad ottenere 54!

7 BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami

SELECT students.name AS nome_studente, students.surname AS cognome_studente, courses.name AS nome_corso, COUNT(exams.id) AS tentativi
FROM courses
JOIN exams ON courses.id = exams.course_id
JOIN exam_student ON exams.id  = exam_student.exam_id
JOIN students ON exam_student.student_id = students.id
GROUP BY courses.id, students.id

                               