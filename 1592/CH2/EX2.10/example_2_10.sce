//Scilab Code for Example 2.10 of Signals and systems by
//P.Ramakrishna Rao
//The value of X(s) is found by solving the differential equation
clear;
clc;
syms t s;
s= %s;
X=pfss((s^2+8*s+6)/((s+2)*(s+3)*s));
X(1)=1/s;
f1=ilaplace(X(1))
f2=ilaplace(X(2))
f3=ilaplace(X(3))
fz=f1+f2+f3;
disp(fz*'u(t)',"c) x(t)=");
