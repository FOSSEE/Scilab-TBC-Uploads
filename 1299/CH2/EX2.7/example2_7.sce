//Example 2.7
//Inverse laplace transform of "2/(s^2*(s+1))" using scilab
clear;clc;
xdel(winsid());
s=%s;
num=2;
den=(s^2)*(s+1);
F1=syslin('c',num,den)
F=pfss(F1)
//from the partial fraction decomposition, taking out 2 as common term.
//The result would be in the form of"F(s)=2*(1/s^2-1/s+(1/s+1))"
disp("F(s)=2*((1/s^2)-(1/s)+(1/(s+1)))")
//From the standard formula of inverse laplace transform;
//(1/s^2)=t;(1/s)=1;(1/(s+1))=%e^-t
disp("f(t)=2*(t-1+e^-t)")
