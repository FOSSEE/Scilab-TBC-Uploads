//X=L(x(t))->find initial value,x(0) and final value,x(inf) using initial and final value theorem
clc;
clear;
s=poly(0,"s");
X=1/s/(s-1);
xinf=horner(s*X,0);
disp(xinf,'x(inf) by final Value theorem:');
x0=horner(s*X,%inf);
disp(x0,'x(0) by initial Value theorem:');