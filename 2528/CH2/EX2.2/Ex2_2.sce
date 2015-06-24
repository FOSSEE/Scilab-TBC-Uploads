//chapter 2
//figure 2.13
//frequency counter

clc;clear;
t=(0:0.1:100)';
 
k = input('Enter the reference voltage between 0 to 0.8=');
 

f=0.1;
x3=1*sin(2*f*t);

x4=squarewave(2*f*t-k,50-10*k*%pi)
figure;

plot2d1(t,x3);
plot2d1(t,x4);
xlabel('time n--->');
ylabel('amplitude--->');
title('squre wave at cutt reference voltage');
