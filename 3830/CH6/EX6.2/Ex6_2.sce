// Exa 6.2

clc;
clear;

// Given

//Fig. 6.9 shows wheatstone bridge
R1 = 1000; // Ohms
R2 = 100; // Ohms
R3 = 400; // Ohms
Rx = 41; // Ohms(Unknown resistance)
V = 1.5; // Voltage supplied
Rg = 50; // Galvanometer resistance (ohms)
Si = 2; // current sensitivity in mm/microAmp


// Solution

Rth = (R1*R3/(R1+R3)) + R2*Rx/(R2+Rx);
Eth = V*(R3/(R1+R3) - Rx/(R2+Rx));
Ig = Eth/(Rth+Rg);
d = Ig*Si;
printf('The thevenins equivalent resistance = %.1f Ohms \n',round(Rth));
printf(' The thevenins equivalent voltage = %.1f mV \n',abs(Eth*10^3));
printf(' The current through the galvanometer = %.2f micro Amp \n',abs(Ig*10^6));
printf(' The deflection produced by the galvanometer caused by the imbalance in the circuit = %.2f mm \n',abs(d*10^6));
