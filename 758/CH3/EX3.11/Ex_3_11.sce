//Example 3.11

clc;clear;close;
s=poly(0,'s');
F=4*(s+1)*(s+3)/(s+2)/(s+4);
disp(F,'Given Transfer Function:');
zero=roots(numer(F));
pole=roots(denom(F));
disp(zero,'Zeros of transfer function: ');
disp(pole,'Poles of transfer function: ');
plzr(F);