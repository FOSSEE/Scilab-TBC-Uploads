//Example 4.9
clc;
syms w a n;
x=a^n;
pi=22/7;
X=symsum(x*exp(-%i*w*n),n,0,%inf);
n1=0:10;
a=0.5;
x1=a^n1;
plot2d3(n1,x1);
xtitle('Discrete Time Signal','n','x[n]');
a.thickness=2;