# UNIVERSITY DATABASE

## Courses

- id                   BIGINT            PRIMARY KEY UNIQUE NOTNULL INDEX
- degree_course_id     BIGINT            FKEY UNIQUE NOTNULL AUTOINCREMENT INDEX
- course_name          VARCHAR(100)      NOTNULL
- course_duration      SMALLINT          NULL
- max_number_students  TINYINT           NOTNULL