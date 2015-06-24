// Exa 1.37
clc;
clear;
close;
format('v',6)
// Given data
Vin = 20;// in V
Vgamma = 0.7;// in V
R = 20;// in k ohm
R = R * 10^3;// in ohm
// Vin-(I_D*Vin) - Vgamma = 0 or
// The value of I_D,
I_D = (Vin-Vgamma)/R;// in A
I_D = I_D * 10^3;// in mA
disp(I_D,"Part (a) : The value of I_D for first circuit in mA is");

// Part (b)
Vin= 10;// in V
Vgamma = 0.7;// in V
R = 100;// in k ohm
// Drain current,
I_D= Vin/R;// in mV
disp(I_D,"Part (b) : The value of I_D for second circuit in mA is ")
