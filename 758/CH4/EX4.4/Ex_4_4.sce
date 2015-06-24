//Example 4.4

clc;clear;close;
z=poly(0,'z');
x=[1 3 0 0 6 -1];n=-1:4;
X=x*(z^-n)';
disp(X,'x(n)={1,3,0,0,6,-1} X(z)=');