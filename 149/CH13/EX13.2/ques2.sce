//ques2
clc
disp('solution of the given linear differential equation is given by : ');
syms c1 c2 x;
m=poly(0,'m');
f=m^2+6*m+9;
r=roots(f);
disp(r);
disp('roots are equal so solution is given by :');
disp('y=');
y=(c1+x*c2)*exp(r(1)*x);
disp(y);
