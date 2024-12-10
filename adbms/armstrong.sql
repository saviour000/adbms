DECLARE
    num NUMBER; 
    original_num NUMBER; 
    sum NUMBER := 0; 
    remainder NUMBER;
    num_digits NUMBER; 
    temp_num NUMBER; 
BEGIN
    
    FOR num IN 1..999 LOOP
        original_num := num;
        sum := 0;

       
        num_digits := LENGTH(TO_CHAR(num));

        
        temp_num := num;
        
        
        WHILE temp_num > 0 LOOP
            remainder := temp_num MOD 10; 
            sum := sum + POWER(remainder, num_digits); 
            temp_num := temp_num / 10; 
        END LOOP;

       
        IF sum = original_num THEN
            DBMS_OUTPUT.PUT_LINE(original_num || ' is an Armstrong number.');
        END IF;
    END LOOP;
END;
/
