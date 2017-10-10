// Exa 4.9

clc;
clear all;

// Given data
// As per values given in Fig.4.19(page no.94)

ein=10; // Input RMS voltage(V)
Ifsd=1; // Full scale deflection current(mA)
Rm=200;// Internal resistance of voltmeter(Ohms)

// Solution

Range=0.45*ein; // Range of Voltmeter
Sdc=1/(Ifsd*10^-3); // DC Sensitivity of meter movement(k Ohm/V)
Rs=Sdc* Range-Rm;// Multiplier resistance(Ohm)
printf(' The value of the multiplier resistor = %.1f k Ohms\n',Rs/1000);
