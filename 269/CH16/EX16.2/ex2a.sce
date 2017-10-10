clear;
clc;
close;
A=4;//V0=4 amplitude
Dt=0.005;
T1=4;
t=0:Dt:T1/2;
for i=1:length(t)
    xt(i)=A*exp(-0.01*i)
end
//continous time Fourier Transform
Wmax=2*%pi*1;//Analog freq=1HZ
K=4;
k=0:(K/1000):K;
W=k*Wmax/K;
xt=xt';
XW=xt*exp(-sqrt(-1)*t'*W)*Dt;
XW_Mag=real(XW);
W=[-mtlb_fliplr(W),W(2:1001)];
XW_Mag=[mtlb_fliplr(XW_Mag),XW_Mag(2:1001)];
subplot(2,1,1);
a=gca();
a.data_bounds=[-4,0;4,2];
a.y_location="origin";
plot(t,xt);
xlabel('t in msec.');
title('Continous time signal x(t)');
subplot(2,1,2);
a=gca();
a.y_location="origin";
plot(W,XW_Mag);
xlabel('Freq in rad/sec');
title('continous time fourier transform');