# UNIVERSITY DATABASE

## Degree courses

- id                   BIGINT            PRIMARY KEY UNIQUE NOTNULL INDEX
- department_id        BIGINT            FKEY UNIQUE NOTNULL AUTOINCREMENT INDEX
- degree_course_name   VARCHAR(100)      UNIQUE NOTNULL
- internship_present   BOOLEAN           NULL