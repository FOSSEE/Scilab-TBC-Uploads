//Example 6.27

clc;clear;
t=0:0.0025:0.0175;
f=50;
x=sin(2*%pi*f*t);
X=clean(fft(x));
disp(x,'x(n)=');
disp(X,'X(k)=');