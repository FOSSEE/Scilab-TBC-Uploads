clear;
close;
clc;
a=0.7;
n=-10:10;
disp("X(w)=1/(1-a*e^(%i*w))^2=[1/(1-a*e^(%i*w))]*[1/(1-a*e^(%i*w))]");
disp("we know a^n*u[n] <--> 1/(1-a*e^(%i*w))  ")
//therefore by convolution property
xpartial=[zeros(1,find(n==0)-1) a^n(find(n==0):$)];
x=convol(xpartial,xpartial);
n1=-20:20;
plot2d3(n1,x);
plot(n1,x,'r.');
xtitle('x[n]','n')