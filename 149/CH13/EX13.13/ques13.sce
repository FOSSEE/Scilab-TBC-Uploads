//ques12
clc

disp('solution of the given linear differential equation is given by : ');
disp('CF + PI');
syms c1 c2 x
m=poly(0,'m');
f=(m^2-1);
r=roots(f);
disp(r);
disp('CF is given by ');
cf=c1*exp(r(1)*x)+c2*exp(r(2)*x);
disp(cf);
disp('----------------------------------');
disp('PI =*{1/(D^2-1)[x*sin(3x)+cos(x)]');
disp('using identities it reduces to : ');
pi=-1/10*(x*sin(3*x)+3/5*cos(3*x))-cos(x)/2;
disp(pi);
y=cf+pi;
disp('The solution is : y=');
disp(y);

