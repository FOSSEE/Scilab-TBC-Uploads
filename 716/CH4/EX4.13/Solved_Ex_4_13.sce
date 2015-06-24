//Determine the Fourier Transform of x(t)=1-t^2 for |t|<1 x(t)=0 for |t|>1
clc;
clear;
T=8;
t=-T:0.01:T
w0=2*%pi/T;
Dt=0.005;

function x=f(t),x=(1-t^2).*(t>-1&t<1) ,endfunction
x=f(t),x=(1-t^2).*(t>-1&t<1)
plot(t,f);
xlabel("time");
ylabel("x(t)");

K=4;
k =0:(K/1000):K;
W = k*w0/K;

X=x*exp(-sqrt(-1)*t'*W)*Dt;
xset('window',1);
subplot(2,1,1)
plot(W,abs(X));
xtan=atan(imag(X)/real(X));
subplot(2,1,2)
plot(W,xtan);