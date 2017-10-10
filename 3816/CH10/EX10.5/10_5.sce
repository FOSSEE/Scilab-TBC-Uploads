clc;
clear;
xad=1.5;
xaq=0.60;
x=0.1;
xf=0.13;
Vq=1;
theta_0=0;
xd1=((xad*xf)/(xad+xf))+x;
xsq=xaq+x;
Ifo=1;
t=[0:0.1:20];
Ia=4.5*(cos(t)-3-(1.5*(cos(2*t))));
If=4.2*(1-cos(t))+Ifo;
plot(t,Ia)
plot(t,If)
xlabel('Rotor position')
ylabel('Rotor field current')
