//sketch x(-t) and x(2-t)
//for x(t)=t for 0<=t<=3 and x(t)=0 for t>3
clc;
clear;
clf;
t=-5:0.01:5;
x=t.*(t>=0&t<=3)+0.*(t>3);
subplot(131)
plot(t,x);//displays original function x(t)
xtitle('the original signal x(t)=t for 0<=t<=3','time t','signal x(t)');

t=-1*t;
subplot(132)
plot(t,x);//displays x(-t)
xtitle('the signal x(-t)','time t','signal x(-t)');

t=2+t;
subplot(133)
plot(t,x);//displays x(2-t)
xtitle('the signal x(2-t)','time t','signal x(2-t)');