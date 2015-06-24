clear;
clc;
//Example 12.2
A=10^5;
Af=50;
b=0.019999;
dA=10^4;
dAf=Af*dA/(A*(1+b*A));
printf('\ndAf=%e\n',dAf)
//x=dAf/Af
x=dAf/Af;
x=x*100;
printf('\npercent change dAf/Af=%f\n',x)
