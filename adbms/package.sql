CREATE
OR REPLACE PACKAGE math_operations AS

PROCEDURE add_numbers (x NUMBER, y NUMBER, result OUT NUMBER);


FUNCTION multiply_numbers (x NUMBER, y NUMBER) RETURN NUMBER;

END math_operations;

/ CREATE
OR REPLACE PACKAGE BODY math_operations AS

PROCEDURE add_numbers (x NUMBER, y NUMBER, result OUT NUMBER) IS
BEGIN result := x + y;

END add_numbers;


FUNCTION multiply_numbers (x NUMBER, y NUMBER) RETURN NUMBER IS
BEGIN RETURN x * y;

END multiply_numbers;

END math_operations;

/
DECLARE

sum_result NUMBER;

product_result NUMBER;


BEGIN

math_operations.add_numbers (5, 7, sum_result);


DBMS_OUTPUT.PUT_LINE ('Sum Result: ' || sum_result);


product_result := math_operations.multiply_numbers (3, 4);


DBMS_OUTPUT.PUT_LINE ('Product Result: ' || product_result);

END;

/