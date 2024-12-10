CREATE TABLE student_marks(
student_idNUMBER PRIMARY KEY,
subject1_marks NUMBER,
subject2_marks NUMBER,
subject3_marks NUMBER,
subject4_marks NUMBER
  );


INSERT INTO student_marks(student_id, subject1_marks, subject2_marks, subject3_marks, subject4_marks)
VALUES (1, 85, 90, 78, 92);
INSERT INTO student_marks(student_id, subject1_marks, subject2_marks, subject3_marks, subject4_marks)
VALUES (2, 70, 75, 80, 88);
INSERT INTO student_marks(student_id, subject1_marks, subject2_marks, subject3_marks, subject4_marks)
VALUES (3, 60, 65, 72, 58);

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
