//X=L(x(t))->find initial value,x(0) and final value,x(inf) using initial and final value theorem
clc;
clear;
s=poly(0,"s");
X=(7*s+6)/s/(3*s+5);
xinf=horner(s*X,0);
disp(xinf,'x(inf) by final Value theorem:');
x0=(7+6/%inf^2)/(3+5/%inf);//directly putting and dividing Numerator and Denominator by infinity powers
disp(x0,'x(0) by initial Value theorem:');