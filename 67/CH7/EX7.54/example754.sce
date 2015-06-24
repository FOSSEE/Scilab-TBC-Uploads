//Example 7.54
clc;
clear;
z=poly(0,'z');
X=[2;3*z^-1;4*z^-2];
n=0:2;
ZI=z^n';
x=numer(X.*ZI);
disp(x,'x[n]=');