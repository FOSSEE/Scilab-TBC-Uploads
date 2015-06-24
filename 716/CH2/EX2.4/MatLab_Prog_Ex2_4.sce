//Perform Amplitude Scaling,Time Scaling and Time Shift on x(t)=1+t  for t=0 to 2
clc;
clear;
clf;
t=-5:0.01:5;
x=(1+t).*(t>=0&t<=2)

//Amplitude Scaling
xset('window',0);
subplot(131)
plot(t,x);
xtitle('the original signal x(t)=1+t for 0<=t<=2','time t','signal x(t)');

subplot(132)
plot(t,5*x);
xtitle('amplitude scaling of x(t)=t','time t','signal 5*x(t)');

subplot(133)
plot(t,0.5*x);
xtitle('amplitude scaling of x(t)=t','time t','signal 0.5*x(t)');

//Time Scaling
xset('window',1);
subplot(131)
plot(t,x);
xtitle('the original signal x(t)=1+t for 0<=t<=2','time t','signal x(t)');

subplot(132)
plot(t*2,x);
xtitle('Time Scaling of x(t)','time 2*t','signal x(2t)');

subplot(133)
plot(t/2,x);
xtitle('Time Scaling of x(t)','time t/2','signal x(t/2)');

//Time Shifting
xset('window',2)
subplot(131)
plot(t,x);
xtitle('the original signal x(t)=1+t for 0<=t<=2','time t','signal x(t)');

subplot(132)
t=t+3;
plot(t,x);
xtitle('Time Shifting of x(t)','time t','signal x(t-3)');

subplot(133)
t=t-6;
plot(t,x);
xtitle('Time Shifting of x(t)','time t+3','signal x(t+3)');