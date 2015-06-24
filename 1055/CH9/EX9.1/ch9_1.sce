// To determine the economic overall diameter of a 1- core cable metal sheathead.
clear
clc;
V=85;// working voltage (kV)
gmax=65;// dielectric strength of insulating material (kV/cm)
r=V/gmax;
d=2*r;
D=2.6*%e;
mprintf("Diameter of the sheath =%.2f cm\n",D);
