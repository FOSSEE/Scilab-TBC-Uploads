// Exa 10.4

clc;
clear;

// Given data

// A 16 bit dual slope ADC is specified
n = 16; // 16 bit counter
CR = 4*10^6; // clock rate in Hz
Vimax = 10; // Maximum input  voltage
Vomax= -8; // Maximum integrator output voltage
C = 0.1*10^-6; // Capacitor(Farads)

// Solution

//Referring Eqn 10.4, 10.5, 10.6, 10.7 given on page no 364 and 365;

T1 = 2^n/CR; // Time Period
// For the integrator
// dell Vo= (-1/RC)*Vmax*T1;
// Therefore
R = -(Vimax*T1)/(Vomax*C); // Resistor value 
printf('The value of resistor R of the integrator is %d kΩ. \n ',round(R/1000));
