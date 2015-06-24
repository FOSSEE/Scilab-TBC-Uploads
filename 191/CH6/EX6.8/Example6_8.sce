//Romberg's Method
clc;
clear;
close();
exec('C:\Users\Pragya\Desktop\scilab\trap.sci', -1);
format('v',10);
funcprot(0);
deff('[y]=f(x)','y=exp(x)');
a = 0;
b = 2;

t(1,1)=trap(f,a,b,0,0);
disp(t(1,1),'T(0,0) : ');

t(2,1)=(t(1,1)+2*1*f(1))/2;
disp(t(2,1),'T(1,0) : ');

t(3,1)=(t(2,1)+f(1/2)+f(3/2))/2;
disp(t(3,1),'T(2,0) : ');

t(4,1)=(t(3,1)+.5*(f(1/4)+f(3/4)+f(5/4)+f(7/4)))/2;
disp(t(4,1),'T(3,0) : ');
