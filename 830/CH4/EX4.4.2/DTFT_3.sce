//Graphical//
//Example 4.4.2 
//Frequency Response of Three point Moving Average System
//y(n)= (1/3)[x(n+1)+x(n)+x(n-1)]
//h(n) = [1/3,1/3,1/3]
clear;
clc;
close;
//Calculation of Impulse Response
n =-1:1;
h = [1/3,1/3,1/3];
//Discrete-time Fourier transform
K = 500;
k = 0:1:K;
w = %pi*k/K;
H = h * exp(-sqrt(-1)*n'*w);
//phasemag used to calculate phase and magnitude in dB
[Phase_H,m] = phasemag(H);
H = abs(H);
subplot(2,1,1)
plot2d(w/%pi,H)
xlabel('Frequency in Radians')
ylabel('abs(H)')
title('Magnitude Response')
subplot(2,1,2)
plot2d(w/%pi,Phase_H)
xlabel('Frequency in Radians')
ylabel('<(H)')
title('Phase Response')
