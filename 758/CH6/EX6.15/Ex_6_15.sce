//Example 6.15

clc;clear;
x=[1 2 3 4 4  3 2 1];
X=clean(fft(x));
disp(x,'x(n)=');
disp(X,'X(k)=');