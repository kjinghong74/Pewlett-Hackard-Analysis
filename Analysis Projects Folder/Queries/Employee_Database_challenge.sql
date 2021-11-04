-- Create a Retirement Titles table that holds all the titles of current employees born between January 1, 1952 and December 31, 1955
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_title
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	first_name,
	last_name,
	title
INTO unique_title
FROM retirement_title AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_title
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

--create a mentorship-eligibility table that holds the current employees
--born between January 1, 1965 and December 31, 1965.
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
INNER JOIN titles AS t
	on e.emp_no = t.emp_no
WHERE (de.to_date = '9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no, e.emp_no;