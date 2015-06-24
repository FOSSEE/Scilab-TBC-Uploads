//Determine Even and Odd part of a CT signal x(t)=sin(2t)+cos(t)+sin(t)*cos(2t)
clc;
clear;
clf;
t=-20:0.01:20;
x1=sin(2*t)+cos(t)+sin(t).*cos(2*t);
x2=sin(-2*t)+cos(-1*t)+sin(-1*t).*cos(-2*t);
Xe=(x1+x2)/2;
Xo=(x1-x2)/2;
disp(Xe,'even part of Given function=>');
disp(Xo,'odd part of Given function=>');

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