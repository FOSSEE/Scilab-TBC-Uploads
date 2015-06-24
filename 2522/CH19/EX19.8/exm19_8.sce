// page no 629
// example no A.8
// SUBTRACTION OF SIGNED NUMBERS
clc;
printf('Part a \n \n')
printf('Minuend= FAH \n \n');
printf('It is a negative no since D7= 1 for FAH, this must be represented in \n2s compliment form. \n');
// finding 2's complement of subtrahend (FAH);
m=hex2dec(['FA']);
x=hex2dec(['62']);
y=bitcmp(m,8); // 1's compliment of FAH
z=y+1; // 2's compliment of FAH
printf('2s compliment of minuend is= ');
disp(z);

printf('\n \n Subtrahend= 62H \n');
printf('It is a positive no since D7= 0 for 62H. \n');
// subtraction can be represented as
// FAH-62H= (-06H)-(+62H)
s=-x-z; 
a=-s;
d=dec2hex(a);
printf('Subtraction= ');
disp(s);
disp(d);
printf('in hexadecimal with a negative sign \n \n');
g=bitcmp(a,8); // 1's compliment of result
q=g+1; // 2's compliment of result
e=dec2hex(q);
printf('2s compliment of result would be= ');
disp(e);
