//compute 4 point DFT of signal x(n)={0,1,2,3}
clc;
clear;
n=0:1:3;//for four point DFT
x=[0 1 2 3];
disp(x,'Given signal=>    x(n)=');
X=dft(x,-1);
disp(X,'four point DFT of x(n)=>');
disp(abs(X),'magnitude of four point DFT x(n)=>');
disp(atan(imag(X),real(X)),'phase of four point DFT x(n)=>');
subplot(1,2,1)
plot2d3(n,abs(X),2);
xtitle('Magnitude Spectrum','k','|X(k)|');
subplot(1,2,2)
plot2d3(n,atan(imag(X),real(X)),2);
xtitle('Phase Spectrum','k','angle(X(k))');