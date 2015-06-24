//page no 629
//example no A.9
// ADDITION OF TWO POSITIVE NUMBERS
clc;
//the given numbers are 41H & 54H.
A=hex2dec(['41']);
B=hex2dec(['54']) 
Y=A+B; 
X=dec2hex(Y);
printf('Sum =')
disp(X);
if Y>255 then             // checking the carry flag.
    printf('CY=1 \n \n')   
else
    printf('CY=0 \n \n')
end
if Y>127 then            // checking the sign flag.
    printf('S=1 \n \n')
else
    printf('S=0 \n \n')
end
if Y>0 then               // checking the zero flag.
    printf('Z=0 \n \n')
else
    printf('Z=1 \n \n')
end


