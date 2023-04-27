SELECT emp_no,last_name,first_name, sex FROM public."Employees";
SELECT salary FROM public."Salaries";
			
SELECT e.emp_no,last_name,first_name,sex,salary
FROM public."Employees" as e
JOIN public."Salaries" as s
ON e.emp_no = s.emp_no 
ORDER BY
emp_no;

-- 2 
SELECT first_name,
       last_name,
	   hire_date
	   FROM public."Employees"
       WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
  	
--3

SELECT dm.dept_mn
, d.dept_no
, d.dept_name
, e.emp_no
, e.last_name
, e.first_name
FROM public."Dept_manager" as dm
JOIN public."Departments" as d
ON d.dept_no = dm.dept_mn
JOIN public."Employees" as e
ON dm.emp_no = e.emp_no
ORDER BY
	emp_no;

--4

SELECT d.dept_no
, e.emp_no
, e.last_name
, e.first_name
, d.dept_name
FROM public."Departments" as d
JOIN public."Dept_emp" as de
ON d.dept_no = de.dept_no
JOIN public."Employees" as e
ON de.dept_emp = e.emp_no
ORDER BY
	emp_no;
	
--5
SELECT first_name, last_name, sex FROM public."Employees"

WHERE
	first_name='Hercules' and last_name like 'B%';
	
--6 	
SELECT d.dept_name
, e.emp_no
, e.last_name
, e.first_name
FROM public."Departments" as d
JOIN public."Dept_emp" as de
ON d.dept_no = de.dept_no
JOIN public."Employees" as e
ON de.dept_emp = e.emp_no
WHERE dept_name ='Sales'
ORDER BY
	emp_no;
	
	
--7 
SELECT d.dept_name
, e.emp_no
, e.last_name
, e.first_name
FROM public."Departments" as d
JOIN public."Dept_emp" as de
ON d.dept_no = de.dept_no
JOIN public."Employees" as e
ON de.dept_emp = e.emp_no
WHERE dept_name ='Sales' or dept_name ='Development'
ORDER BY
	emp_no;
	
	

--8 
SELECT 
        last_name,
COUNT
        (last_name) AS "frequency"
FROM
       public."Employees"
GROUP BY 
	last_name
ORDER BY
        COUNT(last_name) DESC;