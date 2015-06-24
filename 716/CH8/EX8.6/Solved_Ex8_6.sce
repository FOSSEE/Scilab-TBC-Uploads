//find fourier transform of x(n),x(n)=(1/3).*(n>=0&n<=2)
clc;
clear;
n=0:1:20;
x=(1/3).*(n>=0&n<=2);
X=dft(x,-1);
disp(X,'fourier Transform of x(n)=>');
subplot(1,2,1)
Xmag=abs(X);
plot2d3(n,Xmag,2);
xtitle('Magnitude Spectrum','k values','|ck| magnitudes');
subplot(1,2,2)
plot2d3(n,atan(imag(X),real(X)),2);
xtitle('Phase Spectrum','k values','angle(ck)');