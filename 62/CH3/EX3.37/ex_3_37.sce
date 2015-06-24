clear;
clc;
syms n s a b y0 K t;
X=laplace(K*%e^(-b*t));
Y=y0/(s+a)+X/(s+a);
y=ilaplace(Y)
disp(y,"y(t)=")