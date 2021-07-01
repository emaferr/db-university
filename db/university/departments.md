# UNIVERSITY DATABASE

## Departments

- id                   BIGINT            PRIMARY KEY UNIQUE NOTNULL INDEX
- department_name      VARCHAR(100)      UNIQUE NOTNULL
- director             VARCHAR(100)      NOTNULL
- contacts             VARCHAR(255)      NULL