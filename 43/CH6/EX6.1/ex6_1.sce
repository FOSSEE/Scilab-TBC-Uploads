//Ex 6.1
clc;
syms s;
v=10;
R=4;
L=2;
C=0.125;
V=laplace(v);
I=V/(R+L*s+(1/(C*s))); 
i=ilaplace(I);
disp(i,'i(t)=');