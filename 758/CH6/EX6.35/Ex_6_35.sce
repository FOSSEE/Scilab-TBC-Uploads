//Example 6.35

clc;clear;close;
h=[2 2 1];
x=[3 0 -2 0 2 1 0 -2 -1 0];
M=length(h);                //length of impulse response
L=2^M;              //length of FFT/IFFT operation
N=L-M+1;
xl=length(x);
K=ceil(xl/N);       //number of iterations
h=[h zeros(1,L-M)];
x=[zeros(1,M-1) x x(1:K*N-xl)];
H=fft(h);
for k=0:K-1
    xk=x(k*N+1:(k+1)*N+M-1);
    Xk=fft(xk);
    Yk=H.*Xk;
    yk=ifft(Yk);
    yk=clean(yk);
    y=[yk(1:k*N) yk(M:L)];
    disp(k+1,'Segment =');
    disp(xk,'xk(n)=');
    disp(yk,'yk(n)=');
end
disp(y,'Output Sequence is y(n): ');