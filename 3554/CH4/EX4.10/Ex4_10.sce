// Exa 4.10

clc;
clear all;

// Given data

Vin=10; // Input RMS voltage(V)
Ifsd=1; // Full scale deflection current(mA)
Rm=250;// Internal resistance of voltmeter(ohms)

// Solution

Sdc=1/(Ifsd*10^-3); // DC sensitivity(K ohm/V)
Sac=0.9*Sdc; //AC sensitivity(k Ohm/V)
Rs=Sac*Vin-Rm;// Multiplier resistor(Ohm)
printf(' The value of multiplier resistor = %.2f k Ohms \n',Rs/1000);
