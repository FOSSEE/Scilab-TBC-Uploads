//EMF induced between two coils in a circular iron core
clc;
clear;

area= 5*(10^-4);
l=0.5;

na=200;
nb=500;

dI=15;
dt=(1/10);

mr=250;
mo= 4*%pi*(10^-7);

mfa=na*dI;

H=mfa/l;

B=mo*mr*H;

// Flux Linked

flux=B*area;

eb=nb*flux/dt;

disp('volts',eb,'The Induced EMF by coil B =')
