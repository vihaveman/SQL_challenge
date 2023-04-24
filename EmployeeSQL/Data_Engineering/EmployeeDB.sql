CREATE TABLE Departments (
    dept_no VARCHAR(4)   NOT NULL,
    dept_name VARCHAR(40)   NOT NULL,
   	PRIMARY KEY (dept_no),
	UNIQUE (dept_name)
);

CREATE TABLE Titles (
    title_id VARCHAR(5)   NOT NULL,
    title VARCHAR(50)   NOT NULL,
    PRIMARY KEY (title_id)
	
);	

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(5)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL,
	FOREIGN KEY (emp_title_id) References Titles (title_id),
    PRIMARY KEY ( emp_no)

	
);
	

CREATE TABLE Dept_Emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(4)   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	 PRIMARY KEY (emp_no, dept_no)
);


CREATE TABLE Dept_Manager (
    dept_no VARCHAR(4)   NOT NULL,
    emp_no INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	PRIMARY KEY (dept_no,emp_no)
);


CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	PRIMARY KEY (emp_no)
	
);
