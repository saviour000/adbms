
CREATE OR REPLACE PROCEDURE check_prime (num IN NUMBER) IS

    is_prime BOOLEAN := TRUE;
BEGIN

    IF num <= 1 THEN
        is_prime := FALSE;
    ELSE

        FOR i IN 2..TRUNC(SQRT(num)) LOOP
            IF num MOD i = 0 THEN
                is_prime := FALSE; 
                EXIT; 
            END IF;
        END LOOP;
    END IF;

  
    IF is_prime THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a prime number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is not a prime number.');
    END IF;
END;
/


DECLARE
    num NUMBER := 29; 
BEGIN
   
    check_prime(num);
END;
/
