clc;
// page no 140
// prob no 4_14_1
//Noise fig. of an amplifier is 13 dB with BW=1MHz
f=13;//Noise figure of an amplifier
Bn=1*10^6;
kT=4*10^-21;//k is Boltzman constant in J/K & T is room temp
F=10^(f/10);
//Determination of equivalent amplifier input noise
Pna=(F-1)*kT*Bn;
disp('pW',Pna*10^12,'The value of input noise is');