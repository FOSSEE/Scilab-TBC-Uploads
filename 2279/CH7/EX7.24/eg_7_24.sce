//Discrete Time Fourier Transform of 
// Periodic Impulse Train
clear;
clc;
close;
N = 5;
N1 = -3*N:3*N;
xn = [zeros(1,N-1),1];
x = [1 xn xn xn xn xn xn];
ak = 1/N;
XW = 2*%pi*ak*ones(1,2*N);
Wo = 2*%pi/N;
n  = -N:N-1;
W = Wo*n;
figure
subplot(2,1,1)
plot2d3('gnn',N1,x,2);
xtitle('Periodic Impulse Train','n','x[n]')
subplot(2,1,2)
plot2d3('gnn',W,XW,2);
xtitle('DTFT of Periodic Impulse Train','w','|X(exp(jw))|')
disp(Wo)
