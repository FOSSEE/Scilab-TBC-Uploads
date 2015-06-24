clc;
clear all;
A=5e-4;//area of capacitor plate
d=1.5e-3;//distance between the plates
er=6;//relative permittivity of the dielectric
V=100;//applied voltage
e0=8.85e-12;//permittivity of vacume
// capacitance C=e0*er*A/d and Q=C*V SO..
Q=e0*er*A*V/d;//charge on capacitor 
disp('C',Q,'charge on capacitor is:')
