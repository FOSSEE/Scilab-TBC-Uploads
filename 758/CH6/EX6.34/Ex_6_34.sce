//Example 6.34

clc;clear;close;
h=[2 2 1];
x=[3 0 -2 0 2 1 0 -2 -1 0];
M=length(h);                //length of impulse response
L=2^M;                      //length of FFT/IFFT operation
N=L-M+1;
xl=length(x);
K=ceil(xl/N);                //number of iterations
h=[h zeros(1,L-M)];
x=[x x(1:K*N-xl)];
H=fft(h);
y=zeros(1,M-1);
for k=0:K-1
    xk=[x(k*N+1:(k+1)*N) zeros(1,M-1)];
    Xk=fft(xk);
    Yk=H.*Xk;
    yk=ifft(Yk);
    yk=clean(yk);
    y=[y(1:k*N) y(k*N+1:k*N+M-1)+yk(1:M-1) yk(M:L)];
    disp(k+1,'Segment =');
    disp(xk,'xk(n)=');
    disp(yk,'yk(n)=');
end
y=y(1:xl+M-1);
disp(y,'Output Sequence is y(n): ');
