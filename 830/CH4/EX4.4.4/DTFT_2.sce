//Graphical//
//Example 4.4.4 
//Frequency Response of First Order Difference Equation
//a = 0.9 and b = 1-a 
//Impulse Response h(n) = b.(a^n).u(n)
clear;
clc;
close;
a = input('Enter the constant value of Ist order Difference Equation');
b= 1-a;
//Calculation of Impulse Response
n =0:50;
h =b*(a.^n) ;
//Discrete-time Fourier transform
K = 500; 
k = 0:1:K;
w = %pi*k/K;
H = h * exp(-sqrt(-1)*n'*w);
//phasemag used to calculate phase and magnitude in dB
[Phase_H,m] = phasemag(H);
H = real(H);
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
