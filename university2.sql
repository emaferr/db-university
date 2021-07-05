UNIVERSITY DB

GROUP_BY:

- Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(id) AS numero_studenti, YEAR(enrolment_date) AS anno_iscrizione 
FROM students 
GROUP BY anno_iscrizione

- Contare gli insegnanti che hanno ufficio nello stesso edificio

SELECT COUNT(id) AS numero_insegnanti, office_address AS indirizzo_ufficio 
FROM teachers 
GROUP BY indirizzo_ufficio

- Calcolare la media dei voti di ogni appello di esame

SELECT exam_id AS id_esame , ROUND(AVG(vote),2) AS media_voti 
FROM exam_student 
GROUP BY id_esame

- Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT degrees.name AS nome_laurea, courses.degree_id AS id_laurea, COUNT(courses.id) AS numero_corsi 
FROM degrees 
JOIN courses ON degrees.id = courses.degree_id 
GROUP BY id_laurea

JOINS:

- Selezionare tutti gli studenti iscritti al Corso di Laurea Economia

SELECT students.* 
FROM degrees 
JOIN students ON degrees.id = students.degree_id 
WHERE degrees.name = "Corso di Laurea in Economia"

- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze

SELECT degrees.* 
FROM departments 
JOIN degrees ON departments.id = degrees.department_id 
WHERE departments.name = "Dipartimento di Neuroscienze"

- Selezionare tutti i corsi dove insegna Fulvio Amato (id=44)

SELECT `courses`.`name` 
FROM courses 
JOIN course_teacher ON courses.id = course_teacher.course_id 
WHERE course_teacher.teacher_id = 44


