//to find Cq and its possible errors

clc;
d=12.5;
A=(%pi/4)*d^2*10^-6;
W=392;
t=600;
p=1000;
g=9.81;
h=3.66;
Cq=W/(t*p*A*sqrt(2*g*h));
disp(Cq,'Cq');
dW=.23/W;
dt=2/t;
dp=.1/100;
dA=2*.002;
dg=.1/100;
dh=.003/h;
dd=.002;
dCq=Cq*(dW+dt+dp+dA+dg/2+dh/2);
disp(dCq*100/Cq,'%age absolute error');

sdCq=Cq*sqrt(dW^2+dt^2+dp^2+4*dd^2+.25*(dg^2+dh^2));
disp(sdCq*100/Cq,'%age standard deviation error');
