//Example 5.20

clc;clear;close;
z=poly(0,'z');
x=[-1 1 0 -1];n=0:length(x)-1;
X=x*(z^-n)';
H=0.2-0.5*z^-2+0.4*z^-3
Y=H*X;
l=coeff(numer(Y));
y=l(:,$:-1:1);
disp(X,'Input sequence x(n)={-1,1,0,-1} X(z)=');
disp(H,'System Transfer Function H(z)=');
disp(Y,'Z transform of output response Y(z)=');
disp(y,'Digital output sequence y=')
