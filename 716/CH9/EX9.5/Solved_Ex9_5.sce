//compute 8 point DFT of x(n)={2 2 2 2 1 1 1 1}
clc;
clear;
n=0:1:7;//for 8 point DFT
x=[2 2 2 2 1 1 1 1];
disp(x,'Given signal=>    x(n)=');
X=fft(x);
disp(X,'8 point FFT of x(n)=>');
disp(abs(X),'magnitude of 8 point FFT x(n)=>');
disp(atan(imag(X),real(X)),'phase of 8 point FFT x(n)=>');
subplot(1,2,1)
plot2d3(n,abs(X),2);
xtitle('Magnitude Spectrum','k','|X(k)|');
subplot(1,2,2)
plot2d3(n,atan(imag(X),real(X)),2);
xtitle('Phase Spectrum','k','angle(X(k))');
