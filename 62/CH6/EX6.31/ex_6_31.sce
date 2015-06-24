clear;
clc;
close;
disp("y[n]-3/4y[n-1]+1/8y[n-2]=x[n]");
disp("taking fourier transform on both sides");
disp("H(w)=Y(w)/X(w)=1/(1-(3/4)*e^(-j*w)+(1/8)*e^(-j*2*w))");
w=-10:0.1:10;
Hw=ones(1,length(w))./(1-(3/4)*%e^(-%i*w)+(1/8)*%e^(-%i*2*w));
figure
subplot(2,1,1)
plot(w,Hw);
xtitle('H(w)','w')
n=-10:10;
h=(1/(2*%pi))*Hw*exp(%i*w'*n);
subplot(2,1,2)
plot2d3(n,h)
plot(n,h,'r.')
xtitle('h[n]','n')