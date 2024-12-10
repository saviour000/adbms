
CREATE OR REPLACE FUNCTION factorial (n IN NUMBER)
RETURN NUMBER
IS
    result NUMBER := 1;
BEGIN
    
    FOR i IN 1..n LOOP
        result := result * i;
       
        DBMS_OUTPUT.PUT_LINE('Step ' || i || ': ' || i || ' x ' || (result / i) || ' = ' || result);
    END LOOP;
    RETURN result;
END;
/


DECLARE
    num NUMBER := 5;  
    fact NUMBER;
BEGIN
   
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Step | Multiplier | Previous Result | Current Result');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------');
    
    
    fact := factorial(num);

    
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------');
    DBMS_OUTPUT.PUT_LINE('The factorial of ' || num || ' is: ' || fact);
END;
/
