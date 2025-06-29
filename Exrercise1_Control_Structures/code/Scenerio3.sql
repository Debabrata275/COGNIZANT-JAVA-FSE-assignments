BEGIN
  FOR rec IN (
    SELECT c.cust_name, l.loan_id, l.due_date
    FROM customers c
    JOIN loans l ON l.customer_id = c.customer_id
    WHERE l.due_date BETWEEN SYSDATE AND SYSDATE + 30
  ) LOOP
    DBMS_OUTPUT.put_line(
      'Reminder: ' || rec.cust_name || 
      ', your loan #' || rec.loan_id || 
      ' is due on ' || TO_CHAR(rec.due_date, 'DD-Mon-YYYY')
    );
  END LOOP;
END;
/
