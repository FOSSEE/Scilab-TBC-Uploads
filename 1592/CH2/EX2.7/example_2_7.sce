//Scilab Code for Example 2.7 of Signals and systems by
//P.Ramakrishna Rao
//Unilateral Laplace Transform using partial fraction
clear;
clc;
syms t s;
s= %s;
a1=pfss((s+3)/(s^2+3*s+2))
f1=ilaplace(a1(1))
f2=ilaplace(a1(2))
fy=f1+f2
disp(fy*'u(t)',"i) f(t)=")
a2=pfss((2*s-1)/(s^2+2*s+1))
a2(1)=2/(s+1)
a2(2)=-3/(s+1)^2
f1=ilaplace(a2(1))
f2=ilaplace(a2(2))
fz=f1+f2
disp(fz*'u(t)',"ii) f(t)=")
