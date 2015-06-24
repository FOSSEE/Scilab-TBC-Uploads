//ques9
clc
disp('solution of the given linear differential equation is given by : ');
m=poly(0,'m');

disp('y=1/(D(D+1))[x^2+2x+4] can be written as (1-D+D^2)/D[x^2+2x+4] which is combination of differentiation and integration ');
g=x^2+2*x+4;
f=g-diff(g,x)+diff(g,x,2);
y=integ(f,x);
disp('y=');
disp(y);