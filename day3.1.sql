



















DELIMITER //

CREATE FUNCTION CalcIncome ( starting_value INT )
  RETURNS INT deterministic
BEGIN
   DECLARE income INT;
   SET income = 0;

   label1: WHILE income <= 3000 DO
     SET income = income + starting_value;
   END WHILE label1;

   RETURN income;
END //

-- DELIMITER ;
-- You could then reference your new function as follows:

SELECT CalcIncome (1000);



DELIMITER |
CREATE FUNCTION sample_fn_no_param ()
RETURNS INT deterministic
BEGIN
DECLARE count INT;
SELECT COUNT(*) INTO count FROM emp;
RETURN count;
END
|

select sample_fn_no_param();
