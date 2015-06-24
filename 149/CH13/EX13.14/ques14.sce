//ques14
clc

disp('solution of the given linear differential equation is given by : ');
disp('CF + PI');
syms c1 c2 c3 c4 x
m=poly(0,'m');
f=(m^4+2*m^2+1);
r=roots(f);
disp(r);
disp('CF is given by ');
cf=real((c1+c2*x)*exp(r(1)*x)+(c3+c4*x)*exp(r(3)*x));
disp(cf);
disp('----------------------------------');
disp('PI =*{1/(D^4+2*D+1)[x^2*cos(x)]');
disp('using identities it reduces to : ');
pi=-1/48*((x^4-9*x^2)*cos(x)-4*x^3*sin(x));
disp(pi);
y=cf+pi;
disp('The solution is : y=');
disp(y);

