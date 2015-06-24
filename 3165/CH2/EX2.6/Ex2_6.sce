clc;
clear all;
n=0:0.01:%pi/4;
x1=2*sin((1*%pi*n+(%pi/4))-1.5*sin(2*%pi*n))
figure(1);
subplot(2,1,1);
plot2d3(n,x1);
xlabel('n1');
ylabel('x1');
n=0:0.00002:%pi/4000;
x2=2*sin(1000*%pi*n*(%pi/4)-1.5*sin(2000*%pi*n));
figure(1);
subplot(2,1,2);
plot2d3(n,x2);
xlabel('n');
ylabel('x2');
