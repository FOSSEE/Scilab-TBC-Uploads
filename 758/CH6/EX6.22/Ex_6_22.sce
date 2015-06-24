//Example 6.21

clc;clear;
n=0:3;
x=cos(n*%pi/2);
X=clean(fft(x));
disp(x,'x(n)=');
disp(X,'X(k)=');