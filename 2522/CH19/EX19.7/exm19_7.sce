// page no 628
// example no A.7
// SUBTRACTION OF UNSIGNED NUMBERS
clc;
printf('Part a \n \n')
printf('Subtrahend= 62H \n');
printf('Minuend= FAH \n \n');
// finding 2's complement of subtrahend (62H);
m=hex2dec(['FA']);
x=hex2dec(['62']);
y=bitcmp(x,8); // 1's compliment of 62H
z=y+1; // 2's compliment of 62H
s=m+z; 
f=s-256; // to compensate the effect of 2's compliment
e=dec2hex(f);
printf('Subtraction= ');
disp(e);
printf('This result is positive \n \n');


printf('Part b \n \n')
printf('Subtrahend= FAH \n');
printf('Minuend= 62H \n \n');
// finding 2's complement of subtrahend (FAH);
m=hex2dec(['62']);
x=hex2dec(['FA']);
y=bitcmp(x,8); // 1's compliment of FAH
z=y+1; // 2's compliment of FAH
s=m+z; 
r=dec2hex(s);
printf('Subtraction= ');
disp(r);
printf('The result is negative & it is expressed in 2s complement.')
