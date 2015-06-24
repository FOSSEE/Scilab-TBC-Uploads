//Determine the fourier series representation of the given discrete time signal, x(n)={....,1,2,-1,1,2,-1,....} and sketch frequency spectrum
clc;
clear;
x={1,2,-1};
N=3;
m=0:1:20;
for k=0:1:20
    c=0;
    for n=0:1:N-1
        c=c+x(n+1)*exp(-2*%i*%pi*k*n/N);
    end
    cmag(k+1)=abs(c/N);
    cphase(k+1)=atan(imag(c/N)/real(c/N));
end
subplot(1,2,1)
plot2d3(m,cmag,3);
disp(cmag,'Magnitude |Ck|');
subplot(1,2,2)
plot2d3(m,cphase,3);