//Determine fourier transform of Given Signal and sketch magnitude and phase spectrum
clc;
clear;
t=0:0.1:15;
a=1;
x=exp(-a*t).*(t>=0);
X=dft(x,-1);
Xmag=abs(X);
subplot(1,2,1)
plot(t,Xmag);
xphase=atan(imag(X),real(X));
subplot(1,2,2)
plot(t,xphase)