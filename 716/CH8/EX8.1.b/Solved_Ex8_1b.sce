//Determine the fourier series representation of the given discrete time signal, x(n)=4cos(pi*n/2)
clc;
clear;
n=-20:1:20;
x=4*cos(%pi/2*n);
N=4;
for k=0:1:20
    c=0;
    for n=0:1:N-1
        c=c+4*cos(%pi/2*n)*exp(-2*%i*%pi*k*n/N);
    end
    d(k+1)=c/N;
end
disp(d,'fourier series terms of given signal');
k=0:1:20;
subplot(1,2,1)
dmag=abs(d);
plot2d3(k,dmag);
xtitle('Magnitude Spectrum','k values','|ck| magnitudes');
subplot(1,2,2)
plot2d3(k,atan(imag(d),real(d)));
xtitle('Phase Spectrum','k values','angle(ck)');