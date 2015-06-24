// Example 2.13: Barrier capacitance
clc, clear
A=1e-3*1e-3; // Area of p-n junction in metres square
W=2e-6; // Space charge thickness in metres
E=16; // Dielectric constant of Ge
Eo=1/(36*%pi*1e9); // Absolute permittivity of air
C=E*Eo*A/W; // Barrier capacitance in farads
C=C*1e12; // Barrier capacitance in pico-farads
disp(C,"Barrier capacitance (pF) =");