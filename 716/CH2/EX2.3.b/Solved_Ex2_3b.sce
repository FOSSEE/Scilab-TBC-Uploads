//Determine Even and Odd part of a CT signal x(t)=3+2t+5t*t
clc;
clear;
clf;
t=poly(0,"t");
x1=3+2*t+5*t.*t;
x2=3+2*(-1)*t+5*t.*t;
Xe=(x1+x2)/2;
Xo=(x1-x2)/2;
disp(Xe,'even part of Given function=>');
disp(Xo,'odd part of Given function=>');

t=-20:0.01:20;
x1=3+2*t+5*t.*t;
x2=3+2*(-1)*t+5*t.*t;
Xe=(x1+x2)/2;
Xo=(x1-x2)/2;
subplot(221)
plot(t,x1);
xtitle('the signal x(t)=3+2t+5t*t','time t','signal x(t)');

subplot(222)
plot(t,x2);
xtitle('the signal x(-t)=3-2t+5t*t','time t','signal x(t)');

subplot(223)
plot(t,Xe);
xtitle('even part of the signal,Xe(t)=(x(t)+x(-t))/2','time t','signal x(t)');

subplot(224)
plot(t,Xo);
xtitle('odd part of the signal,Xo(t)=(x(t)-x(-t))/2','time t','signal x(t)');