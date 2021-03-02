-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS departments
(
    id INTEGER NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS dept_emp
(
    id INTEGER NOT NULL,
    emp_no INTEGER NOT NULL,
    dept_no INTEGER NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS dept_manager
(
    id INTEGER NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS employees
(
    id INTEGER NOT NULL,
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
    birth_date VARCHAR(30) NOT NULL,
    first_name INTEGER,
    last_name INTEGER NOT NULL,
    sex VARCHAR(30),
    hire_date VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS salaries
(
    id INTEGER NOT NULL,
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS titles
(
    id INTEGER NOT NULL,
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);


-- Create FKs
ALTER TABLE salaries
    ADD    FOREIGN KEY (salary)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE departments
    ADD    FOREIGN KEY (dept_name)
    REFERENCES dept_manager(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (last_name)
    REFERENCES dept_manager(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (first_name)
    REFERENCES dept_manager(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE departments
    ADD    FOREIGN KEY (dept_name)
    REFERENCES dept_emp(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (dept_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (first_name)
    REFERENCES dept_emp(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (last_name)
    REFERENCES dept_emp(emp_no)
    MATCH SIMPLE
;
    

-- Create Indexes

