//Example 6.18

clc;clear;
x=[0 1 2 3];
X=clean(fft(x));
disp(x,'x(n)=');
disp(X,'X(k)=');