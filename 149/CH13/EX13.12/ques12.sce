//ques12
clc

disp('solution of the given linear differential equation is given by : ');
disp('CF + PI');
syms c1 c2 x
m=poly(0,'m');
f=(m^2-4);
r=roots(f);
disp(r);
disp('CF is given by ');
cf=c1*exp(r(1)*x)+c2*exp(r(2)*x);
disp(cf);
disp('----------------------------------');
disp('PI =8*{1/(D^2-4)[x*sinh(x)]');
disp('using identities it reduces to : ');
pi=-x/6*(exp(x)-exp(-x))-2/18*(exp(x)+exp(-x));
disp(pi);
y=cf+pi;
disp('The solution is : y=');
disp(y);

