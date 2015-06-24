//Example 6.16

clc;clear;
x=[0 1 2 3 4 5 6 7];
X=clean(fft(x));
disp(x,'x(n)=');
disp(X,'X(k)=');