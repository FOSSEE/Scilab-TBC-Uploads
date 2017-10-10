//Newton Cotes formula
clc;
clear;
close();
format('v',9);
funcprot(0);
disp('Integral 0 to PI/4 x*cos dx');
disp('based on open Newton-Cotes formulas ');

deff('[y]=f(x)','y=x*cos(x)');

k = [0 1 2 3]

a = 0;
b = %pi/4;
h = (ones(1,4)*(b-a))./(k+2);
x0 = a+h;
xk = b-h;

k(1) = 2*h(1)*f(h(1));
disp(k(1),'k=0');

k(2) = 3*h(2)*(f(h(2))+f(2*h(2)))/2;
disp(k(2),'k=1');

k(3) = 4*h(3)*(2*f(h(3))-f(2*h(3))+2*f(3*h(3)))/3;
disp(k(3),'k=2');

k(4) = 5*h(4)*(11*f(h(4))+f(2*h(4))+f(3*h(4))+11*f(4*h(4)))/24;
disp(k(4),'k=3');

exact = integrate('x*cos(x)','x',0,%pi/4);
disp(exact,'The exact value of intergation is :');
exact = ones(1,4)*exact;
err = exact-k;
disp(err','thus corresponding errors are : ');