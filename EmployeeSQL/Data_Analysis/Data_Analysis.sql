SELECT 
	e.emp_no as employee_number, 
	e.last_name, 
	e.first_name, 
	e.sex, s.salary
	FROM 
		employees AS e 
	LEFT JOIN 
		Salaries AS s ON e.emp_no = s.emp_no
	ORDER by 
		employee_number;
	

SELECT 
	emp_no as employee_number, 
	first_name, 
	last_name, 
	hire_date
	FROM 
		employees 
	WHERE 
		hire_date >= '1986-01-01' AND hire_date <= '1987-01-01'
	ORDER BY
		hire_date;
		

SELECT 
		m.dept_no as department_number,
		d.dept_name as department_name, 
		e.emp_no as manager_employee_number,
		e.last_name as manager_last_name, 
		e.first_name as manager_first_name		
	FROM 
		dept_manager as m
		LEFT JOIN 
			employees as e ON m.emp_no = e.emp_no
		LEFT JOIN 
			departments AS d ON m.dept_no = d.dept_no
		ORDER BY department_name;	
	
SELECT 
		d.dept_no AS department_number,
		e.emp_no AS employee_number, 
		e.last_name AS employee_last_name, 
		e.first_name AS employee_first_name, 
		d.dept_name AS department_name
	FROM 
		employees AS e
		JOIN 
			dept_emp AS de ON e.emp_no = de.emp_no
		JOIN 
			departments AS d ON de.dept_no = d.dept_no
	ORDER BY department_number;


	
SELECT 
	first_name, 
	last_name, 
	sex
	FROM 
		employees
	WHERE 
		first_name = 'Hercules' AND last_name LIKE 'B%'
	ORDER BY 
		last_name;
	

	
SELECT 
    e.emp_no AS employee_number, 
    e.last_name AS employee_last_name, 
    e.first_name AS employee_first_name,
	d.dept_name AS department_name
	FROM 
    	employees AS e
    JOIN 
		dept_emp AS de ON e.emp_no = de.emp_no
    JOIN 
		departments AS d ON de.dept_no = d.dept_no
	WHERE 
    	d.dept_name = 'Sales'
	ORDER BY 
    	employee_last_name, employee_first_name;
	


SELECT 
    e.emp_no AS employee_number, 
    e.last_name AS employee_last_name, 
    e.first_name AS employee_first_name,
	d.dept_name AS department_name
	FROM 
    	employees AS e
    JOIN 
		dept_emp AS de ON e.emp_no = de.emp_no
    JOIN 
		departments AS d ON de.dept_no = d.dept_no
	WHERE 
    	d.dept_name = 'Sales' OR d.dept_name = 'Development'
	ORDER BY 
    	department_name, employee_last_name, employee_first_name;


SELECT 
    	last_name, 
    	COUNT(*) AS frequency
	FROM 
    	employees
	GROUP BY 
    	last_name
	ORDER BY 
    	frequency DESC;


