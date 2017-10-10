//Example 6.12

clc;clear;close;
N=4;
n=0:N-1;
x=cos(%pi/4*n);
//Calculation of DFT
X=fft(x,-1);
X=clean(X);
disp(x,'Given Sequence is x(n): ');
disp(X,'DFT of the Sequence is X(k): ');