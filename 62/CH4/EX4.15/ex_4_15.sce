clear;
clc;
syms z;
X=[z^2 .5*z -5/2 z^-1];
n=-2:1;
a=size(X);
for i = 1:a(2)
    x(i)=X(i)*(z^n(i));
end
disp(x,'x[n]=')