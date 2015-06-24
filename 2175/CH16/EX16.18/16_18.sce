clc;
m=3;
rho=500;
v=m/rho;

l=4;//m
r=0.01;
A=%pi*r^2;
n=v*l/A;
disp("number of tumes is:");
disp(n)

alpha0=260;
A0=12.7;
alphai=580;
Ai=10;
U=1/[1/alpha0+A0/(alphai*Ai)];
N=U*%pi*(A0/1000)*l*n/(3*1.5*1000);
R=3*1.5/(40*1.04);

eta=[1-%e^(-N*(1-R))]/[1-R*%e^(-N*(1-R))]
disp(eta,"eta is:");

t2=400;
t1=100;
tL=eta*(t2-t1)+t1
disp("exit temperature is :");
disp(tL);
