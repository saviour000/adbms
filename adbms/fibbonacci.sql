
CREATE OR REPLACE FUNCTION fibonacci (n IN NUMBER)
RETURN NUMBER
IS
    
    a NUMBER := 0;
    b NUMBER := 1;
    c NUMBER := 0;
BEGIN
    
    IF n = 1 THEN
        RETURN a;
    ELSIF n = 2 THEN
        RETURN b;
    ELSE
       
        FOR i IN 3..n LOOP
            c := a + b; 
            a := b; 
            b := c; 
        END LOOP;
        RETURN c;
    END IF;
END;
/


DECLARE
    num_terms NUMBER := 10; 
    i NUMBER;
    fib NUMBER;
BEGIN
   
    DBMS_OUTPUT.PUT_LINE('Fibonacci Series:');
    DBMS_OUTPUT.PUT_LINE('------------------');
    
   
    FOR i IN 1..num_terms LOOP
        fib := fibonacci(i); 
        DBMS_OUTPUT.PUT_LINE('Term ' || i || ': ' || fib); 
    END LOOP;
END;
/
