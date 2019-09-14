DECLARE
	-- declare variable str , len 
	-- and str1 of datatype varchar 
	str VARCHAR(20) := 'CODECHEF'; 
	len NUMBER; 
	str1 VARCHAR(20); 
BEGIN
	-- Here we find the length of string 
	len := Length(str); 

	-- here we starting a loop from max len to 1 
	FOR i IN REVERSE 1.. len LOOP 
		-- assigning the reverse string in str1			 
		str1 := str1 
				|| Substr(str, i, 1); 
	END LOOP; 

	dbms_output.Put_line('Reverse of string is '
						|| str1); 
END; 
/
-- Program End 
