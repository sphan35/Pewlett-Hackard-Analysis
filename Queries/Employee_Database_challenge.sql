-- Employee_Challenge_starter_code.sql Deliverable 1: Retirement Table
SELECT e.emp_no,
	e.first_name,
	e.last_name,
 	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
SELECT * FROM retirement_titles;

-- Employee_Challenge_starter_code.sql Deliverable 1 Part 2: Unique Titles
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
 	rt.title

INTO unique_titles 
FROM employees AS e
INNER JOIN retirement_titles AS rt
ON (e.emp_no = rt.emp_no)
ORDER BY e.emp_no ASC,
	rt.to_date DESC;
SELECT * FROM unique_titles;
--DROP TABLE unique_titles;


-- Employee_Challenge_starter_code.sql Deliverable 1 Part 3: Retiring Table
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;
SELECT * FROM retiring_titles;
--DROP TABLE retiring_titles;	

-- Employee_Challenge_starter_code.sql Deliverable 2: Mentorship Eligibility Table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (ti.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND
	(de.to_date = '9999-01-01')
ORDER BY e.emp_no;