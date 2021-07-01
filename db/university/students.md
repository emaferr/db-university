# UNIVERSITY DATABASE

## Students

- id                   BIGINT           PRIMARY KEY UNIQUE NOTNULL INDEX
- course_id            BIGINT           FKEY UNIQUE NOTNULL AUTOINCREMENT INDEX
- student_name         VARCHAR(50)      NOTNULL
- student_surname      VARCHAR(50)      NOTNULL
