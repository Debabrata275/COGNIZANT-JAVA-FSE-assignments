CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest IS
BEGIN
  FOR acc IN (
    SELECT account_id, balance
    FROM   accounts
    WHERE  account_type = 'SAVINGS'
  ) LOOP
    UPDATE accounts
    SET    balance = balance * 1.01
    WHERE  account_id = acc.account_id;
  END LOOP;

  COMMIT;
END;
/


BEGIN
  ProcessMonthlyInterest;
END;
/


SELECT * FROM accounts ORDER BY account_id;
