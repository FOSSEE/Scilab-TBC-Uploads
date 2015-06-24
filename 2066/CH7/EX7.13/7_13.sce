clc
clear
//Initialization of variables
V61=10.8 //ft/s
V81=6.05 //ft/s
r0=3 //in
e=0.00015
d1=6 //in
rho=1.94 //slugs/ft^3
mu=2.34e-5 //ft-lb/s^2
//calculations
roe=r0/(12*e)
Nr1=V61*(d1/12)*rho/mu
f6=0.0165
V6=11.6 //ft/s
V8=6.52 //ft/s
Q=V6*%pi/4 *(d1/12)^2
//results
printf("Discharge = %.2f ft^3/s",Q)
