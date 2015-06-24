//X=L(x(t))->find initial value,x(0) and final value,x(inf) using initial and final value theorem
clc;
clear;
s=poly(0,"s");
X=(s+1)/(s.^2+2*s+2);
X=s*(X);
xinf=horner(X,0);
disp(xinf,'x(inf) by final Value theorem:');
x0=(1+1/%inf^2)/(1+2/%inf+2/%inf^2);//directly putting and dividing Numerator and Denominator by infinity powers
disp(x0,'x(0) by initial Value theorem:');