clc();
clear;
// To calculate the conductivity of material
n=5*10^17;   //concentration in m^3
vd=350;   //drift velocity in m/s
E=1000;   //electric field in V/m
e=1.6*10^-19;
mew=vd/E;
sigma=n*e*mew;
printf("the conductivity of material is %f ohm m",sigma);
