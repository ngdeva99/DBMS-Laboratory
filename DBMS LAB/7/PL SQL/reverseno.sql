
declare

-- declare variable num , len 
-- and revnum of datatype varchar 
num varchar2(5):='12345';			 
len number(2);			 
revnum varchar2(5);		 


begin

-- Here we find the length of string 
len := length(num);				 

-- here we starting a loop from max len to 1 
for i in reverse 1.. len 
loop 

-- assigning the reverse number in revnum			 
revnum := revnum || substr(num,i,1); 
end loop; 

-- Print the Result 
dbms_output.put_line('given number ='|| num); 
dbms_output.put_line('reverse number ='|| revnum); 
end;						 
/

-- Program End 
