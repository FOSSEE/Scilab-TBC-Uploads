clc
clear

//INPUT
v=1.7*10^-4;//viscosity of the air molecule in cgs
d=0.00129;//density of the molecule in gm/ml
p=76*13.6*981;//pressure of the molecule in gm/cm/sec^2

//CALCULATIONS
r=(3*p/d)^(0.5);//rms velocity of the molecule in cm/sec
mf=(3*v/(d*r));//mean free path in cm
cf=r/mf;//collision frequency

//OUTPUT
mprintf('the mean free path is %3.7f cm \n the collision frequency is %3f',mf,cf)
