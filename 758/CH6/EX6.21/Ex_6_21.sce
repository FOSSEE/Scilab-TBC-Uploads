//Example 6.21

clc;clear;
n=0:7;
x=n+1;
X=clean(fft(x));
disp(x,'x(n)=');
disp(X,'X(k)=');