//Example 3.12

clc;clear;close;
s=poly(0,'s');
F=10*s/(s^2+2*s+2);
disp(F,'Given Transfer Function:');
zero=roots(numer(F));
pole=roots(denom(F));
disp(zero,'Zeros of transfer function: ');
disp(pole,'Poles of transfer function: ');
plzr(F);