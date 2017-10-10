//Example 5_8
//find the fourier transform x(t)=exp(-%pi*(t^2))
clear;
clc;
B=%pi;
Dt=0.005;
t=-4.5:Dt:4.5;
xt=exp(-%pi*(t^2));
Wmax=2*%pi*1;
K=4;
k=0:(K/1000):K;
W=k*Wmax/K;
XW=xt*exp(-sqrt(-1)*t'*W)*Dt;
XW=real(XW);
W=[-mtlb_fliplr(W),W(2:1001)];
XW=[mtlb_fliplr(XW),XW(2:1001)];
subplot(2,1,1);
plot(t,xt);
xlabel('t i n s e c');
ylabel('x(t)')
title('Continuous Time Signal')
subplot(2,1,2);
plot(W,XW);
xlabel('Fr equency in Radians/Seconds W');
ylabel('X(jW)')
title('Continuous-time Fourier Transform')
