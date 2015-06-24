//Determine Even and Odd part of a CT signal x(t)=exp(t)
clc;
clear;
clf;
t=-10:0.01:10;
x1=exp(t);
x2=exp(-1*t);
Xe=(x1+x2)/2;
Xo=(x1-x2)/2;

subplot(221)
plot(t,x1);
xtitle('the signal x(t)=exp(t)','time t','signal x(t)');

subplot(222)
plot(t,x2);
xtitle('the signal x(-t)=exp(-t)','time t','signal x(t)');

subplot(223)
plot(t,Xe);
xtitle('even part of the signal,Xe(t)=(x(t)+x(-t))/2','time t','signal x(t)');

subplot(224)
plot(t,Xo);
xtitle('odd part of the signal,Xo(t)=(x(t)-x(-t))/2','time t','signal x(t)');