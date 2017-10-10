// To Compute the resistor, when operating voltage is altered.

clc;
clear;

V=120;
P=100;

Rd=(V^2)/P;

Vr=80; // Reduced voltage

Ir= Vr/Rd;// Reduced current

Rt=V/Ir; // The Total Resistance required to circulate the reduced current.

Re= Rt-Rd; // External resistance required.

disp('ohms',Re,'The external resistance required to be connected in series to operate at 80V')
