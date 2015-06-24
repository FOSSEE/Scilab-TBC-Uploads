clear;
clc;
close;
disp("given system is y[n]-a*y[n-1]=x[n]");
disp("taking fourier transform H(w)=Y(w)/X(w)=1/(1-a*e^-j*w)");
//impulse response 
n=-10:10;
w=-3:0.01:3;
a=.5;
Hw=ones(1,length(w))./(1-a*%e^(-%i*w));
h=(1/2*%pi)*Hw*exp(%i*w'*n); 
disp("impulse response is a^n*u[n]")
plot2d3(n,h);
plot(n,h,'r.')
xtitle('h[n]','n')
figure
plot(w,abs(Hw),'r')
a=0.9;
Hw=ones(1,length(w))./(1-a*%e^(-%i*w));
plot(w,abs(Hw),'b')
xtitle('|H(w)|','w')
legend(['a=0.5';'a=0.9']);