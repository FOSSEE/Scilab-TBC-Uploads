//Example 6.11

clc;clear;close;
N=8;A=1/4;
n=0:N-1;
x=A^n;
//Calculation of DFT
X=fft(x,-1);
X=clean(X);
disp(x,'Given Sequence is x(n): ');
disp(N,'N=')
disp(X,'N-point DFT of the Sequence is X(k): ');