//ques11
clc
disp('solution of the given linear differential equation is given by : ');
disp('CF + PI');
syms c1 c2 x
m=poly(0,'m');
f=(m-2)^2;
r=roots(f);
disp(r);
disp('CF is given by ');
cf=(c1+c2*x)*exp(r(1)*x);
disp(cf);
disp('----------------------------------');
disp('PI =8*{1/(D-2)^2[exp(2x)]+{1/(D-2)^2[sin(2x)]+{1/(D-2)^2[x^2]}');
disp('using identities it reduces to : ');
pi=4*x^2*exp(2*x)+cos(2*x)+4*x+3;
disp(pi);
y=cf+pi;
disp('The solution is : y=');
disp(y);

