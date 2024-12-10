DECLARE
  
    v_total NUMBER;
    v_avg NUMBER;
    v_grade CHAR(1);


    CURSOR student_cursor IS
        SELECT
            student_id,
            subject1_marks,
            subject2_marks,
            subject3_marks,
            subject4_marks
        FROM
            student_marks;

BEGIN
 
    FOR student IN student_cursor LOOP
  
        v_total := student.subject1_marks + student.subject2_marks + student.subject3_marks + student.subject4_marks;

   
        v_avg := v_total / 4;

    
        IF v_avg >= 90 THEN
            v_grade := 'A';
        ELSIF v_avg >= 75 THEN
            v_grade := 'B';
        ELSIF v_avg >= 60 THEN
            v_grade := 'C';
        ELSE
            v_grade := 'D';
        END IF;


        DBMS_OUTPUT.PUT_LINE('Student ID: ' || student.student_id);
        DBMS_OUTPUT.PUT_LINE('Total Marks: ' || v_total);
        DBMS_OUTPUT.PUT_LINE('Average Marks: ' || v_avg);
        DBMS_OUTPUT.PUT_LINE('Grade: ' || v_grade);
        DBMS_OUTPUT.PUT_LINE('----------------------------------');
    END LOOP;

END;
