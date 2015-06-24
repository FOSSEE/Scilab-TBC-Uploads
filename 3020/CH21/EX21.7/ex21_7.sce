clc;
clear all;
er=80;//relative permittivity
C=2e-6;//the capacitance
V=1000;//applied voltage
E1=C*V^2/2;//energy stored in the capacitor
C0=C/er;//capacitance of the capacitor when the dielectric is removed
E2=C0*V^2/2;//energy stored in capacitor with vacume as dielectric
c=E1-E2;//'energy stored in polarissing the capacitor
disp('J',E1,'energy stored in the capacitor')
disp('J',c,'energy stored in polarissing the capacitor:')
