//to find no of expected readings

clc;
x=20;
h=0.04;
sd=1/(sqrt(2)*h);
t=x/sd;

P=.3708;
disp(ceil(2*P*x),'no of expected readings');