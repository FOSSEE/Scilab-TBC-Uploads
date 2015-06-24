//Perform DFT of x(n)=(1 1 1 2 2) and sketch magnitude and phase spectrum
clc;
clear;
N=5;
xn=[1 1 1 2 2];
for k=0:1:N-1
    Xk(k+1)=0;
    for n=0:1:N-1
        Xk(k+1)=Xk(k+1)+xn(n+1)*exp(-%i*2*%pi*k*n/N);
    end
end
wk=0:1:N-1;
disp(Xk,'4 point DFT of x(n)=>');
disp(abs(Xk),'magnitude of 4 point DFT x(n)=>');
disp(atan(imag(Xk),real(Xk)),'phase of 4 point DFT x(n)=>');
subplot(1,2,1)
plot2d3(wk,abs(Xk),2);
xtitle('Magnitude Spectrum','k','|X(k)|');
subplot(1,2,2)
plot2d3(wk,atan(imag(Xk),real(Xk)),2);
xtitle('Phase Spectrum','k','angle(X(k))');