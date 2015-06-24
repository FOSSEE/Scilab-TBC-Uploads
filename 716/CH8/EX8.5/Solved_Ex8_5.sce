//find fourier transform of x(n),x(n)=0.5*((0.5)^n+(0.25)^n).*(n>=0)
clc;
clear;
n=-20:1:20;
x=0.5*((0.5)^n+(0.25)^n).*(n>=0);
X=dft(x,-1);
disp(X,'fourier Transform of x(n)=>');
subplot(1,2,1)
Xmag=abs(X);
plot2d3(n,Xmag,2);
xtitle('Magnitude Spectrum','k values','|ck| magnitudes');
subplot(1,2,2)
plot2d3(n,atan(imag(X),real(X)),2);
xtitle('Phase Spectrum','k values','angle(ck)');