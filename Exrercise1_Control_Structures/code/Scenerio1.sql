BEGIN
  FOR rec IN (
    SELECT l.loan_id
    FROM customers c
    JOIN loans l ON l.customer_id = c.customer_id
    WHERE c.age > 60
  ) LOOP
    UPDATE loans
    SET interest_rate = interest_rate - 1
    WHERE loan_id = rec.loan_id;
  END LOOP;

  COMMIT;
  DBMS_OUTPUT.put_line('✓ Interest reduced by 1% for senior citizens.');
END;
/
