# UNIVERSITY DATABASE

## Exam sessions

- id                   BIGINT           PRIMARY KEY UNIQUE NOTNULL INDEX
- course_id            BIGINT           FKEY UNIQUE NOTNULL AUTOINCREMENT INDEX
- exam_name            VARCHAR(50)      NOTNULL
- minimum_grade        TINYINT          NOTNULL