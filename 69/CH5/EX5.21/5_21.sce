clear; clc; close;

ri = 5*(10^(3));
Rb = 3.3*(10^(6));
Beta = 8000;
Re = 390;

Zb = ri + (Beta*Re);
Zi = (Rb*Zb)/(Rb+Zb);
disp(Zi,"input impedance(Zi) :");
