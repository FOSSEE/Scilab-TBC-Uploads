//Trapezoidal Rule
clc;
clear;
close();
format('v',10);
funcprot(0);
disp('Integral 0 to 2 e^x dx');
disp('based on trapezoidal rule ');

deff('[y]=f(x)','y=exp(x)');

n = [1 2 4 8];

a = 0;
b = 2;
h = (ones(:,4)*(b-a))./n;

t(1) = h(1)*(f(a)+f(b))/2;
disp(t(1),'n=1');

t(2) = h(2)*(f(a)+f(b)+2*f(h(2)))/2;
disp(t(2),'n=2');

t(3) = h(3)*(f(a)+f(b)+2*(f(h(3))+f(2*h(3))+f(3*h(3))))/2;
disp(t(3),'n=4');

t(4) = h(4)*(f(a)+f(b)+2*(f(h(4))+f(2*h(4))+f(3*h(4))+f(4*h(4))+f(5*h(4))+f(6*h(4))+f(7*h(4))))/2;
disp(t(4),'n=8');

exact = integrate('exp(x)','x',0,2);
disp(exact,'The exact value of intergation is :');
exact = ones(4)*exact;
err = exact-t;
disp(err,'thus corresponding errors are : ');