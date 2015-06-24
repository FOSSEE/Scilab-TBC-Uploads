//Example 4.28
clc;
syms t;
h=%e^(-2*t)+%e^(-3*t);
vo=t*%e^(-2*t);
Vo=laplace(vo);
H=laplace(h);
Vi=Vo/H;
vi=ilaplace(Vi);
disp(vi);