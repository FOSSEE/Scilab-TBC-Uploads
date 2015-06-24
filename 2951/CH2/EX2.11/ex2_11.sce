
clc;
clear;

// a) z-transform of unit impulse function
syms n z;
x=1;
X=symsum(x*(z^-n),n,0,0);
disp(X,'X(z)=');

//b) z-transform of unit step function

y=ones(1);
Y=symsum(y*(z^-n),n,0,%inf);
disp(Y,'Y(z)=');
