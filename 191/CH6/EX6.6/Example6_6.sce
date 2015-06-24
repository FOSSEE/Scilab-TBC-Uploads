//Simpson Rule 
clc;
clear;
close();
format('v',10);
funcprot(0);

deff('[y]=f(x)','y=exp(x)');

n = [1 2 4];

a = 0;
b = 2;
h = (ones(:,3)*(b-a))./(2*n);

s(1) = h(1)*(f(a)+f(b)+4*f(h(1)))/3;
disp(s(1),'n=1');

s(2) = h(2)*(f(a)+f(b)+2*f(2*h(2))+4*(f(h(2))+f(3*h(2))))/3;
disp(s(2),'n=2');

s(3) = h(3)*(f(a)+f(b)+2*(f(2*h(3))+f(4*h(3))+f(6*h(3)))+4*(f(h(3))+f(3*h(3))+f(5*h(3))+f(7*h(3))))/3;
disp(s(3),'n=4');

exact = integrate('exp(x)','x',0,2);
disp(exact,'The exact value of intergation is :');
exact = ones(3)*exact;
err = exact-s;
disp(err,'thus corresponding errors are : ');