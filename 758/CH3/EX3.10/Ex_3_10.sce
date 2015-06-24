//Example 3.10

clc;clear;close;
s=poly(0,'s');
I=3*s/(s+2)/(s+4);
disp(I,'Given Transfer Function:');
zero=roots(numer(I));
pole=roots(denom(I));
disp(zero,'Zeros of transfer function: ');
disp(pole,'Poles of transfer function: ');
plzr(I);