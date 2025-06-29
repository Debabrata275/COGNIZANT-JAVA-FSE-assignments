BEGIN
  FOR rec IN (
    SELECT customer_id FROM customers WHERE balance > 10000
  ) LOOP
    UPDATE customers
    SET isvip = 'Y'
    WHERE customer_id = rec.customer_id;
  END LOOP;

  COMMIT;
  DBMS_OUTPUT.put_line('✓ VIP status set for eligible customers.');
END;
/
