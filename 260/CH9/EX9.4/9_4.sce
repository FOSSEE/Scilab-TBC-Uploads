
//Eg-9.4
//pg-394

clear
clc
clc;
clear;

deff('[z]=f(x)','z=(x^4-2*x^2)*sin(x)');
x1=-1:.2:1;
//values of fx obtained manually

fx1=[.841471;0.624387;.333365;.114645;.015576;0;-.015576;-.114645;-.333365;-.624387;-.841471];

plot(x1,feval(x1,f));
set(gca(),"auto_clear","off")
plot(x1,fx1,'*');
