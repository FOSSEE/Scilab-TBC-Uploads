//Voltage V, Resistance R, Inductance L
close();
clear;
clc;
V = 100;//V
R = 200;//ohm
L = 0.1;//H
peak_overshoot = 5;//%
phi = acot(log(100/peak_overshoot)/%pi);
alpha = R/(2*L);
omegao = alpha/cos(phi);
C = 1/(L*omegao^2)*10^6;
mprintf('C = %0.2f micro F',C);