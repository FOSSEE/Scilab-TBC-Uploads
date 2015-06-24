//find fourier transform of x(n),x(n)=a^(|n|)
clc;
clear;
n=-20:1:20;
a=0.5;
x=a^(abs(n));
X=dft(x,-1);
disp(X,'fourier Transform of x(n)=>');
subplot(1,2,1)
Xmag=abs(X);
plot2d3(n,Xmag,2);
xtitle('Magnitude Spectrum','k values','|ck| magnitudes');
subplot(1,2,2)
plot2d3(n,atan(imag(X),real(X)),2);
xtitle('Phase Spectrum','k values','angle(ck)');