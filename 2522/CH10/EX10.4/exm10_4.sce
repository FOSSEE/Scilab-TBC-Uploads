// page no 326
// examle no 10.4
// ADDITION OF TWO 16 BIT NUMBERS
clc;
printf('B--> 27H      C--> 93H \n');
printf('D--> 31H      E--> 82H \n \n');
b=hex2dec(['27']);
c=hex2dec(['93']);
d=hex2dec(['31']);
e=hex2dec(['82']);
printf('MOV A,C \n \n');
a=c;
printf('ADD E \n');
a=a+e;
Z=a-256;
X=dec2hex(Z);
printf('Sum =')
disp(X);
if a>255 then
    printf('CY=1 \n \n');
    CY=1;
else
    printf('CY=0 \n');
    CY=0;
end
printf('MOV L,A \n');
printf('L-->');
disp(X);
printf('\n \n MOV A,B \n \n');
a=b;
printf('ADC D \n');
a=a+d+CY; // CY is added because of the previous carry as per the instructions ADC (add with carry)
T=dec2hex(a);
printf('Sum =')
disp(T);
if a>255 then
    printf('CY=1 \n \n')
else
    printf('CY=0 \n \n')
end
printf('MOV H,A \n');
printf('H-->');
disp(T);
printf('\n \n SHLD 2050H \n'); // stores the contents of HL register pair on memory locations 2051H & 2050H.
printf('2050H--> ');
disp(X);
printf('2051H--> ');
disp(T);
