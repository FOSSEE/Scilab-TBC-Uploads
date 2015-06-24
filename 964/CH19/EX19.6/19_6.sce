clc;
clear;
x=[0.05 0.12 0.15 0.3 0.45 0.7 0.84 1.05];
y=[0.957 0.851 0.832 0.72 0.583 0.378 0.295 0.156];
sx=sum(x);
sxx=sum(x.*x);
sx3=sum(x.*x.*x);
sx4=sum(x.*x.*x.*x);
sx5=sum(x.*x.*x.*x.*x);
sx6=sum(x.*x.*x.*x.*x.*x);
n=8;
sy=sum(y);
sxy=sum(x.*y);
sx2y=sum(x.*x.*y);
sx3y=sum(x.*x.*x.*y);
m=[n sx sxx sx3;sx sxx sx3 sx4;sxx sx3 sx4 sx5;sx3 sx4 sx5 sx6];
p=[sy;sxy;sx2y;sx3y];
a=m\p;
disp("The cubic polynomial is y=a0 + a1*x + a2*x^2 + a3*x^3, where a0, a1, a2 and a3 are")
disp(a)