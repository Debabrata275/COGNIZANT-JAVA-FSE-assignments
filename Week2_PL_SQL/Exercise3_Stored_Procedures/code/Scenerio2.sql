CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
  p_dept_id   IN NUMBER,
  p_bonus_pct IN NUMBER
) IS
BEGIN
  UPDATE employees
  SET    salary = salary + (salary * p_bonus_pct / 100)
  WHERE  dept_id = p_dept_id;

  COMMIT;
END;
/

BEGIN
  UpdateEmployeeBonus(20, 10);
END;
/

SELECT * FROM employees ORDER BY emp_id;
