//find fourier transform of x(n),x(n)=1 for 0<=n<=4 and 0 otherwise
clc;
clear;
n=-20:1:20
x=1.*(n>=0&n<=4);
X=dft(x,-1);
disp(X,'fourier Transform of x(n)=>');
subplot(1,2,1)
Xmag=abs(X);
plot2d3(n,Xmag);
xtitle('Magnitude Spectrum','k values','|ck| magnitudes');
subplot(1,2,2)
plot2d3(n,atan(imag(X),real(X)));
xtitle('Phase Spectrum','k values','angle(ck)');