clc;
clear all;
C=2e-6;//capacitance of plate condensor
V=1000;//applied voltage
er=100;//the dielectric permittivity
E=C*V^2/2;//energy stored in capacitor
C0=C/er;
Ewd=C0*V^2/2;//energy stored without the dielectric
Ed=E-Ewd;//energy stored in the dielectric
disp('J',Ed,'energy stored in the dielectric:')
