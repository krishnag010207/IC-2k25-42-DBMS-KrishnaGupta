# DBMS Assignment 1 --- MySQL CREATE TABLE

**Topic:** Table creation, constraints, keys, defaults, and foreign
keys\
**Database:** MySQL / HR-style schema

> All solutions below are based on the questions in the supplied
> Assignment 1 document. The first five questions are included again so
> the README is complete.

------------------------------------------------------------------------

## Questions and Solutions

### 1. Create a simple `countries` table

``` sql
CREATE TABLE countries (
    country_id VARCHAR(2),
    country_name VARCHAR(40),
    region_id DECIMAL(10,0)
);
```

### 2. Create `countries` if it already exists

``` sql
CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(2),
    country_name VARCHAR(40),
    region_id DECIMAL(10,0)
);
```

### 3. Create the structure of `dup_countries` similar to `countries`

``` sql
CREATE TABLE IF NOT EXISTS dup_countries
LIKE countries;
```

### 4. Create a duplicate copy of `countries` including structure and data

``` sql
CREATE TABLE dup_countries LIKE countries;

INSERT INTO dup_countries
SELECT *
FROM countries;
```

### 5. Create `countries` with `NOT NULL` constraints

``` sql
CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(2) NOT NULL,
    country_name VARCHAR(40) NOT NULL,
    region_id DECIMAL(10,0) NOT NULL
);
```

### 6. Create `jobs` with a maximum salary limit of 25000

``` sql
CREATE TABLE IF NOT EXISTS jobs (
    job_id VARCHAR(10) NOT NULL,
    job_title VARCHAR(35) NOT NULL,
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0),
    CHECK (max_salary <= 25000)
);
```

### 7. Allow only Italy, India, and China

``` sql
CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(2),
    country_name VARCHAR(40),
    region_id DECIMAL(10,0),
    CHECK (country_name IN ('Italy', 'India', 'China'))
);
```

### 8. Create `job_histry` with a date check

``` sql
CREATE TABLE IF NOT EXISTS job_histry (
    employee_id DECIMAL(6,0) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    department_id DECIMAL(4,0) NOT NULL,
    CHECK (end_date IS NOT NULL)
);
```

**Note:** MySQL stores a `DATE` as `YYYY-MM-DD`. To display it as
`DD/MM/YYYY`, use:

``` sql
SELECT DATE_FORMAT(end_date, '%d/%m/%Y') AS end_date
FROM job_histry;
```

### 9. Do not allow duplicate `country_id`

``` sql
CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(2) NOT NULL UNIQUE,
    country_name VARCHAR(40),
    region_id DECIMAL(10,0)
);
```

### 10. Create `jobs` with default values

``` sql
CREATE TABLE IF NOT EXISTS jobs (
    job_id VARCHAR(10) NOT NULL,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);
```

### 11. Make `country_id` the key field

``` sql
CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(2) NOT NULL PRIMARY KEY,
    country_name VARCHAR(40),
    region_id DECIMAL(10,0)
);
```

### 12. Make `country_id` unique and auto-incremented

``` sql
CREATE TABLE IF NOT EXISTS countries (
    country_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(40),
    region_id DECIMAL(10,0)
);
```

### 13. Make the combination of `country_id` and `region_id` unique

``` sql
CREATE TABLE IF NOT EXISTS countries (
    country_id VARCHAR(2),
    country_name VARCHAR(40),
    region_id DECIMAL(10,0),
    UNIQUE (country_id, region_id)
);
```

### 14. `job_history` with unique employee IDs and a foreign key to `jobs`

``` sql
CREATE TABLE IF NOT EXISTS job_history (
    employee_id DECIMAL(6,0) NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    department_id DECIMAL(4,0) NOT NULL,
    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
);
```

### 15. `employees` with a composite foreign key

``` sql
CREATE TABLE IF NOT EXISTS employees (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8,2),
    commission DECIMAL(5,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),

    FOREIGN KEY (department_id, manager_id)
        REFERENCES departments(department_id, manager_id)
);
```

### 16. `employees` with foreign keys to `departments` and `jobs`

``` sql
CREATE TABLE IF NOT EXISTS employees (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8,2),
    commission DECIMAL(5,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
) ENGINE=InnoDB;
```

### 17. Foreign key with `ON UPDATE CASCADE` and `ON DELETE RESTRICT`

``` sql
CREATE TABLE IF NOT EXISTS employees (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id VARCHAR(10),
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;
```

### 18. Foreign key with `ON DELETE CASCADE` and `ON UPDATE RESTRICT`

``` sql
CREATE TABLE IF NOT EXISTS employees (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id VARCHAR(10),
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
) ENGINE=InnoDB;
```

### 19. Foreign key with `ON DELETE SET NULL` and `ON UPDATE SET NULL`

``` sql
CREATE TABLE IF NOT EXISTS employees (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id VARCHAR(10) NULL,
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE SET NULL
        ON UPDATE SET NULL
) ENGINE=InnoDB;
```

### 20. Foreign key with `NO ACTION`

``` sql
CREATE TABLE IF NOT EXISTS employees (
    employee_id DECIMAL(6,0) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id VARCHAR(10),
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB;
```

------------------------------------------------------------------------

## Quick Revision

  Question   Main concept
  ---------- --------------------------------------------------------------
  1--4       `CREATE TABLE`, `IF NOT EXISTS`, `LIKE`, `INSERT ... SELECT`
  5          `NOT NULL`
  6--8       `CHECK` constraints
  9          `UNIQUE`
  10         `DEFAULT`
  11         `PRIMARY KEY`
  12         `AUTO_INCREMENT`
  13         Composite `UNIQUE`
  14--16     Foreign keys
  17--20     Foreign-key actions
