//Example No. 12_08
//Two Point Gauss -Legedre formula
//Pg No. 397
clear ;close ;clc ;

deff('F = f(x)','F = exp(x)');
x1 = -1/sqrt(3)
x2 = 1/sqrt(3)
I = f(x1) + f(x2)
disp(I,'I = ',x2,'x2 = ',x1,'x1 = ')