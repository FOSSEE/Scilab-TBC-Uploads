// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_12
clc; clear;
// If R L increases to 250 Ohms, calculate the following: Is, Il, Iz, and Pz.

// Given data

Vin = 25;       // Input voltage=25 Volts
Vz = 7.5;        // Zener voltage=7.5 Volts
Rl = 250;    // Load Resistance=250 Ohms
Is = 75*10^-3;  // Source current=75 mAmps

disp (Is,'The Source Current in Amps')
disp ('i.e 75 mAmps')

Il = Vz/Rl;
disp (Il,'The Load Current in Amps')
disp ('i.e 30 mAmps')

Iz = Is-Il;
disp (Iz,'The Zener Current in Amps')
disp ('i.e 45 mAmps')

Pz = Vz*Iz;
disp (Pz,'The Power Dissipation of Zener in Watts')
disp ('i.e 337.5 mWatts')
