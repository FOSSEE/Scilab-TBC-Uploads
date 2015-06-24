//to generate standard signals like unit impulse,unit step,unit ramp,parabolic,sinusoidal,triangular pulse,signum,sinc and Gaussian signals
clc;
clear;
t=-15:0.1:15;
x=1.*(t==0);
subplot(3,3,1)
plot(t,x);
xtitle('unit impulse signal','time t','signal x(t)');
x=1.*(t>=0);
subplot(3,3,2)
plot(t,x);
xtitle('unit step signal','time t','signal x(t)');
x=t.*(t>=0);
subplot(3,3,3)
plot(t,x);
xtitle('unit ramp signal','time t','signal x(t)');
x=0.4*(t^2);
subplot(3,3,4)
plot(t,x);
xtitle('parabolic signal','time t','signal x(t)');
x=sin(%pi/5*t);
subplot(3,3,5)
plot(t,x);
xtitle('sinusoidal signal','time t','signal x(t)');
x=1-abs(t)/2;
subplot(3,3,6)
plot(t,x);
xtitle('triangular signal','time t','signal x(t)');
x=-1.*(t<0)+1.*(t>=0);
subplot(3,3,7)
plot(t,x);
xtitle('signum signal','time t','signal x(t)');

t1=0.01:0.01:15;
x1=(sin(t1)./t1).*(t1>0.01)
t2=-15:0.01:-0.01
x2=(sin(t2)./t2).*(t2<-0.01)
subplot(3,3,8)
plot(t1,x1,t2,x2);
xtitle('sinc signal','time t','signal x(t)');

t=-15:0.01:15;
x=exp(-1*1.*(t.^2));
subplot(3,3,9)
plot(t,x);
xtitle('guassian signal','time t','signal x(t)');