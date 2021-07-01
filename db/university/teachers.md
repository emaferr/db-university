# UNIVERSITY DATABASE

## Teachers

- id                   BIGINT           PRIMARY KEY UNIQUE NOTNULL INDEX
- course_id            BIGINT           FKEY UNIQUE NOTNULL AUTOINCREMENT INDEX
- teacher_name         VARCHAR(50)      NOTNULL
- teacher_surname      VARCHAR(50)      NOTNULL
