// page no 626
// example no A.6
// SUBTRACTION OF TWO NUMBERS
clc;
printf('Subtrahend= 45H \n');
printf('Minuend= 32H \n \n');
// finding 2's complement of subtrahend (32H);
m=hex2dec(['32']);
x=hex2dec(['45']);
y=bitcmp(x,8); // 1's compliment of 32H
z=y+1; // 2's compliment of 32H
s=m+z; 
r=dec2hex(s);
printf('Subtraction= ');
disp(r);
printf('The result is negative & it is expressed in 2s complement.')
