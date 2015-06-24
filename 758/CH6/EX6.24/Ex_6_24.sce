//Example 6.24

clc;clear;
X=[20 -5.828-2.414*%i 0 -0.172-0.414*%i 0 -0.172+0.414*%i 0 -5.828+2.414*%i];
x=round(clean(ifft(X)));
disp(X,'X(k)=');
disp(x,'x(n)=');
