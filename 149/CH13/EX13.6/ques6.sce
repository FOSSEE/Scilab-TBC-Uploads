//ques6
clc
disp('solution of the given linear differential equation is given by : ');
m=poly(0,'m');
f=(m+2)*(m-1)^2;
r=roots(f);
disp(r);
disp('y=1/f(D)*[exp(-2x)+exp(x)-exp(-x)');
disp('using 1/f(D)exp(ax)=x/f1(D)*exp(ax) if f(m)=0');
y1=x*exp(-2*x)/9;
y2=exp(-x)/4;
y3=x^2*exp(x)/6;
y=y1+y2+y3;
disp('y=');
disp(y);
