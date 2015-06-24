clear;
clc;
close;
n=-20:19;
h=sinc(%pi*n/4)/4;
disp("it can be seen that h[n] is a filter that allows frequencies between       -%pi/4 and +%pi/4")
disp("therefore only the dc part of x[n] is passed i.e c0")
subplot(2,1,1)
plot2d3(n,h);
plot(n,h,'r.');
xtitle('h[n]','n')
w=-4:0.01:4;
Hw=h*exp(-%i*n'*w);
subplot(2,1,2)
plot2d(w,Hw);
title("H[w] fourier transform")
T0=5;
w0=%pi*2/5;
z=[ones(1,3) zeros(1,2)];
x=[];
for i=1:length(n)/T0
    x=[x z];
end
figure
subplot(2,1,1)
plot2d3(n,x);
plot(n,x,'r.')
xtitle('x[n]','n')
c0= (1/5)*sum(z);
y=ones(1,length(n))*c0;
subplot(2,1,2)
plot2d3(n,y);
plot(n,y,'r.--')
xtitle('y[n]','n')