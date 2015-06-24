//Example 1.45
// 
clear;
clc ;
close ;
t=0:0.01:10;
x=2*cos(5*t)+cos(300*t);
x1=2*cos(5*t);
b=[0.05 0.05];
a=[1 -0.9];
y=filter(b,a,x);
subplot(2,1,1);
plot(t,x);
xlabel('Time in Sec');
ylabel('Amplitude');
subplot(2,1,2);
plot(t,y);
subplot(2,1,2);
plot(t,x1,':');
title('x:SIGNAL WITHOUT NOISE  y:SIGNAL WITH NOISE');
xlabel('Time in Sec');
ylabel('Amplitude');