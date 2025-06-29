CREATE OR REPLACE PROCEDURE TransferFunds(
  p_from_account IN NUMBER,
  p_to_account   IN NUMBER,
  p_amount       IN NUMBER
) IS
  v_balance NUMBER;
BEGIN
  SELECT balance INTO v_balance
  FROM   accounts
  WHERE  account_id = p_from_account
  FOR UPDATE;

  IF v_balance < p_amount THEN
    DBMS_OUTPUT.PUT_LINE('✖ Insufficient funds');
    ROLLBACK;
  ELSE
    UPDATE accounts
    SET    balance = balance - p_amount
    WHERE  account_id = p_from_account;

    UPDATE accounts
    SET    balance = balance + p_amount
    WHERE  account_id = p_to_account;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('✓ Transfer completed');
  END IF;
END;
/

BEGIN
  TransferFunds(1003, 1005, 5000);
END;
/

SELECT * FROM accounts
WHERE  account_id IN (1003, 1005)
ORDER BY account_id;
