// page no 623
// example no A.2
// SUBTRACTION OF TWO NUMBERS
clc;
printf('Minuend: 52 \n');
printf('Subtrahend: 23 \n \n')
printf('BORROW METHOD \n \n');

m=5*10+2; // minuend
s=2*10+3; // subtrahend
// to subtract 3 from 2, 10 must be borrowed from the second place of the minuend.

m=4*10+12;

sub=m-s;
printf('Subtraction= ')
disp(sub);

printf('\n \n 10s COMPLEMENT METHOD \n \n');

// 9's complement of 23 is

n=99-23;
// add 1 to the 9's complement to find the 10's complement
t=n+1;
// add the 10's complement of the subtrahend(23) to minuend(52) to subtract 23 from 52
a=m+t;
// subtract 100 from a to compensate for the 100 that was added to find the 10's complement of 23
sub=a-100;
printf('Subtraction= ');
disp(sub);
