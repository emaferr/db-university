UNIVERSITY DB

GROUP BY:

Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(id) AS numero_studenti, YEAR(enrolment_date) AS anno_iscrizione 
FROM students 
GROUP BY anno_iscrizione

Contare gli insegnanti che hanno ufficio nello stesso edificio

SELECT COUNT(id) AS numero_insegnanti, office_address AS indirizzo_ufficio 
FROM teachers 
GROUP BY indirizzo_ufficio

Calcolare la media dei voti di ogni appello di esame

SELECT exam_id AS id_esame , ROUND(AVG(vote),2) AS media_voti 
FROM exam_student 
GROUP BY id_esame

Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT degrees.name AS nome_laurea, courses.degree_id AS id_laurea, COUNT(courses.id) AS numero_corsi 
FROM degrees 
JOIN courses ON degrees.id = courses.degree_id 
GROUP BY id_laurea

