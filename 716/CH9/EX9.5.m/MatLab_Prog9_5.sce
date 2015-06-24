//Perform 4 point DFT of x(n)=(1 1 2 3) using FFT and sketch magnitude and phase spectrum
clc;
clear;
N=4;
xn=[1 1 2 3]
Xk=fft(xn);
wk=0:1:N-1;
disp(Xk,'16 point DFT of x(n)=>');
disp(abs(Xk),'magnitude of 16 point DFT x(n)=>');
disp(atan(imag(Xk),real(Xk)),'phase of 16 point DFT x(n)=>');
plot2d3(wk,xn,2);
isoview(0,5,0,3);
xset('window',1);
subplot(1,2,1)
plot2d3(wk,abs(Xk),2);
isoview(0,5,0,5);
xtitle('Magnitude Spectrum','k','|X(k)|');
subplot(1,2,2)
plot2d3(wk,atan(imag(Xk),real(Xk)),2);
isoview(0,5,-5,5);
xtitle('Phase Spectrum','k','angle(X(k))');