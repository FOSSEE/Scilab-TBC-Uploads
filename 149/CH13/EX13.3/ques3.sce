//ques4
clc
disp('solution of the given linear differential equation is given by : ');
syms c1 c2 c3 x
m=poly(0,'m');
f=m^3+m^2+4*m+4;
r=roots(f);
disp(r);
y=c1*exp(r(1)*x)+c2*exp(r(2)*x)+c3*exp(r(3)*x);
disp('y=');
disp(real(y));
