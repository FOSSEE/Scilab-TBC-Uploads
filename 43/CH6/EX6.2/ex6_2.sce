//Ex 6.2
clc;
syms s;
i=4;
R=13/4;
L=1;
C=1/13;
I=laplace(i)+1;
Y=1/R+s/13+1/s;
V=I/Y;
v=ilaplace(V);
disp(v,'v(t)=');