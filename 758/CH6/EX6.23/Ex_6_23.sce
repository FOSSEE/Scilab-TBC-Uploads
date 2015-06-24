//Example 6.23

clc;clear;
X=[6 -2+2*%i -2 -2-2*%i];
x=clean(ifft(X));
disp(X,'X(k)=');
disp(x,'x(n)=');
