//Perform Convolution of following signals
//x1(t)=1 for 0<t<2 & x2(t)=1 for 0<t<1 & x2(t)=-1 for 1<t<2

clc;
clf;
clear;

t=-0.01:0.01:8;
x1=1.*(0<=t&t<=2);
x2=1.*(t>=0&t<=1)+(-1).*(t>=1&t<=2);
y=convol(x1,x2);//performs convolution

subplot(131)
isoview(0,8,-5,5);
plot(t,x1);//first signal
xtitle('first signal X1(t)','time t','x1(t)');

subplot(132)
isoview(0,8,-5,5);
plot(t,x2);//second signal
xtitle('second signal X2(t)','time t','x2(t)');

t1=0:0.01:(length(y)-1)*0.01;//sets time vector for y,output

subplot(133)
plot(t1,0.01*y);//output signal
xtitle('convolution signal,x3(t)= X1(t)*x2(t)','time t','x3(t)');