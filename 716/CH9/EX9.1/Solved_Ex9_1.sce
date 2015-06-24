//compute 4 point DFT & 8 point DFT and from magnitude and phase spectrums show that DFT coefficients are the samples of Fourier Transform
clc;
clear;
disp('Given signal=>    x(n)=1/3.*(n1>=0 & n1<=2)');
n1=0:1:3;//for four point DFT
x1=1/3.*(n1>=0 & n1<=2)
X1=dft(x1,-1);
disp(X1,'four point DFT of x(n)=>');
disp(abs(X1),'magnitude of four point DFT x(n)=>');
disp(atan(imag(X1),real(X1)),'phase of four point DFT x(n)=>');
subplot(1,2,1)
plot2d3(n1,abs(X1),2);
xtitle('Magnitude Spectrum for 4 point DFT','k','|X(k)|');
subplot(1,2,2)
plot2d3(n1,atan(imag(X1),real(X1)),2);
xtitle('Phase Spectrum for 4 point DFT','k','angle(X(k))');

n2=0:1:7;//for Eight point DFT
x2=1/3.*(n2>=0 & n2<=2)
X2=dft(x2,-1);
disp(X2,'eight point DFT of x(n)=>');
disp(abs(X2),'magnitude of eight point DFT x(n)=>');
disp(atan(imag(X2),real(X2)),'phase of four point DFT x(n)=>');
xset('window',1);
subplot(1,2,1)
plot2d3(n2,abs(X2),2);
xtitle('Magnitude Spectrum for 8 point DFT','k','|X(k)|');
subplot(1,2,2)
plot2d3(n2,atan(imag(X2),real(X2)),2);
xtitle('Phase Spectrum for 8 point DFT','k','angle(X(k))');

n3=0:1:15;//for four point DFT
x3=1/3.*(n3>=0 & n3<=2)
X3=dft(x3,-1);
xset('window',2);
subplot(1,2,1)
plot2d3(n3,abs(X3),2);
xtitle('Magnitude Spectrum for 8 point DFT','k','|X(k)|');
subplot(1,2,2)
plot2d3(n3,atan(imag(X3),real(X3)),2);
xtitle('Phase Spectrum for 16 point DFT','k','angle(X(k))');