-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE dept_emp (
    emp_no varchar   NOT NULL,
    dept_no varchar   NOT NULL
);

CREATE TABLE dept_manager (
    dept_no varchar   NOT NULL,
    emp_no varchar   NOT NULL
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    title_id varchar   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL
);

CREATE TABLE titles (
    title_id varchar   NOT NULL,
    title varchar   NOT NULL
);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE titles ADD CONSTRAINT fk_titles_title_id FOREIGN KEY(title_id)
REFERENCES employees (title_id);