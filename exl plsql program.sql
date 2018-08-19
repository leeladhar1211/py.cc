

---------------------------------------------------------------------------------------------
CREATE or replace PROCEDURE EVENODD
is
n1 NUMBER := &num1;
BEGIN
-- test if the number provided by the user is even
IF MOD(n1,2) = 0 THEN
DBMS_OUTPUT.PUT_LINE ('The number. '||n1||
' is even number');
ELSE
DBMS_OUTPUT.PUT_LINE ('The number '||n1||' is odd number.');
END IF;
DBMS_OUTPUT.PUT_LINE ('Done Successfully');
END;
/
--------------------------------------------------------------------------------------------------
DECLARE
dt1 DATE := TO_DATE('&new_dt', 'DD-MON-YYYY');
get_day VARCHAR2(15);
BEGIN
get_day := RTRIM(TO_CHAR(dt1, 'DAY'));
IF get_day IN ('SATURDAY', 'SUNDAY') THEN
dbms_output.new_line;
DBMS_OUTPUT.PUT_LINE 
('The day of the given date is '||get_day||' and it falls on weekend');
ELSE
dbms_output.new_line;
DBMS_OUTPUT.PUT_LINE ('The day of the given date is '||get_day||' and it does not fall on the weekend');
END IF;
DBMS_OUTPUT.PUT_LINE ('Execution  done successfully.');
END;
/
------------------------------------------------------------------------------------
DECLARE
    grd CHAR(1);
  BEGIN
    -- Accept value for grade
    grd := '&new_grd';
    IF grd = 'A' THEN
      dbms_output.Put_line('Your Grade is: Outstanding');
    ELSIF grd = 'B' THEN
      dbms_output.Put_line('Your Grade is: Excellent');
    ELSIF grd = 'C' THEN
      dbms_output.Put_line('Your Grade is: Very Good');
    ELSIF grd = 'D' THEN
      dbms_output. Put_line('Your Grade is: Average');
    ELSIF grd = 'F' THEN
      dbms_output.Put_line('Your Grade is: Poor');
    ELSE
      dbms_output.Put_line('No such grade in the list.');
    END IF;
  END;
/
----------------------------------------------------------------------------------------------
--Write a program in PL/SQL to print 1st n numbers.
DECLARE
  n number:= &first_n_number;
BEGIN
 DBMS_OUTPUT.PUT_LINE ('The first '||n||' numbers are: ');
    for i in 1..n loop
       dbms_output.put(i||'  ');
    END LOOP;
    dbms_output.new_line;
 END;
/
-------------------------------------------------------
--Write a program in PL/SQL to print 1st n numbers with a difference of 3 and starting from 1
DECLARE
  n number:= &first_n_number;
  i number:=1;
  m number:=1;
BEGIN
 DBMS_OUTPUT.PUT_LINE ('The first '||n||' numbers are: ');
  DBMS_OUTPUT.PUT (i||'  ');
    for i in 1..n-1 loop
	   m:=m+3;
	   dbms_output.put(m||'  ');
    END LOOP;
    dbms_output.new_line;
 END;
/
---------------------------------------------------------------
--Write a program in PL/SQL to show the value of a same variable declared as local and global.
<<main_label>>
DECLARE
  n NUMBER := 6;
BEGIN
  FOR n IN 1..4 LOOP
    DBMS_OUTPUT.PUT_LINE (
      'When local the value: ' || TO_CHAR(n) || ', but the value as global: ' ||
      TO_CHAR(main_label.n)  
    );
  END LOOP;
END main_label;
/
----------------------------------------------------------------------------------
