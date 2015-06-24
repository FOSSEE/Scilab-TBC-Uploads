//Example 6.20

clc;clear;
n=0:7;
x=2^n;
X=clean(fft(x));
disp(x,'x(n)=');
disp(X,'X(k)=');