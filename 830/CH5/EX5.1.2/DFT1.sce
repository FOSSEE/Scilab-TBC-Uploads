//Graphical//
//Example 5.1.2
//Determination of N-point DFT
//Plotting Magnitude and Phase spectrum
clear;
clc;
close;
L = 10;  // Length of the sequence
N = 10;  // N -point DFT
for n =0:L-1
  x(n+1) = 1;
end
//Computing DFT and IDFT
X = dft(x,-1)
x_inv =abs(dft(X,1))
//Computing Magnitude and Phase Spectrum
//Using DTFT
n = 0:L-1;
K = 500;
k = 0:1:K;
w = 2*%pi*k/K;
X_W = x * exp(-sqrt(-1)*n'*w);
Mag_X = abs(X_W);
//phasemag used to calculate phase and magnitude in dB
Phase_X = atan(imag(X_W),real(X_W))
subplot(2,1,1)
plot2d(w,Mag_X)
xlabel('Frequency in Radians')
ylabel('abs(X)')
title('Magnitude Response')
subplot(2,1,2)
plot2d(w,Phase_X)
xlabel('Frequency in Radians')
ylabel('<(X)')
title('Phase Response')
