//Example 6.25

clc;clear;
X=[255 48.63+166.05*%i -51+102*%i -78.63+46.05*%i -85 -78.63-46.05*%i -51-102*%i 48.63-166.05*%i];
x=round(clean(ifft(X)));
disp(X,'X(k)=');
disp(x,'x(n)=');
