// page no 626
// example no A.5
// SUBTRACTION OF TWO NUMBERS
clc;
printf('Subtrahend= 32H \n');
printf('Minuend= 45H \n \n');
// finding 2's complement of subtrahend (32H);
m=hex2dec(['45']);
x=hex2dec(['32']);
y=bitcmp(x,8); // 1's compliment of 32H
z=y+1; // 2's compliment of 32H
s=m+z; 
f=s-256; // to compensate the effect of 2's compliment
e=dec2hex(f);
printf('Subtraction= ');
disp(e);
