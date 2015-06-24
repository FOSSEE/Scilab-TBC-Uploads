//ques4
clc
disp('solution of the given linear differential equation is given by : ');
m=poly(0,'m');
syms c1 c2 c3 c4 x
f=m^4+4;
r=roots(f);
disp(r);
y=c1*exp(r(1)*x)+c2*exp(r(2)*x)+c3*exp(r(3)*x)+c4*exp(r(4)*x);
disp('y=');
disp(real(y));
