// page no 624
// example no A.3
// SUBTRACTION OF TWO NUMBERS
clc;
printf('Minuend: 23 \n');
printf('Subtrahend: 52 \n \n')
printf('BORROW METHOD \n \n');

m=2*10+3; // minuend
s=5*10+2; // subtrahend
// subtraction of the digits in the first place results in 
a=3-2;
// to subtract the digits in the second place a borrow is required from the third place. assuming 1 at third place.

x=12-5; // with a borrowed 1 from the third place

sub=10*x+a;
printf('Subtraction= ')
disp(sub);
printf('this is negative 29, expressed in 10s complement. \n negative sign is verified by the borrowed 1 from the third place.');

printf('\n \n 10s COMPLEMENT METHOD \n \n');

// 9's complement of 52 is

n=99-52;
// add 1 to the 9's complement to find the 10's complement
t=n+1;
// add the 10's complement of the subtrahend(23) to minuend(52) to subtract 23 from 52
a=m+t;

printf('Subtraction= ');
disp(a);
printf('this is negative 29, expressed in 10s complement');
