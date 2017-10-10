clc;
clear all;
disp("temperature and time")
R=40/2000;//m
ti=20;// degree C
tau=4*60;//s
ta=100;// degree C
k=10;// W/m.C
rho=1200;// kg/m^3
c=2000;// J/kg.C
h=100;//W/m^2.C
Lc=R/3;// for sphere
Bi=h*Lc/k

t=ta+(ti-ta)*exp(-h*3*tau/(R*rho*c))
disp("degree C")
ti=5;// degree C
X=(t-ta)/(ti-ta);
Y=-h*3/(R*rho*c)
tau=(log (X))/Y;// sec
disp("min",tau/60,"time taken  tau =")
