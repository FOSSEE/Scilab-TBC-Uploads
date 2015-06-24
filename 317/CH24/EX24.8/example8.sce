// find efficiency
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-8, page 963

clear; clc; close;

// Given data
Vin=15;// input voltage
Vz=6.2;// in volts
Vbe=0.7;// in volts
Rl=40;// in ohms
R1=3*10^3;// in ohms
R2=1*10^3 ;// in ohms

// Calculations
Vout=((R1+R2)/R1)*(Vz+Vbe);// output voltage in volts
Il=Vout/Rl;// load current in amperes
Ic=Il;// transistor current is equal to load current 
Pout=Vout*Il;// load power in watts
Pin=Vin*Ic;// input power in watts
E=(Pout/Pin)*100;// efficiency in %
disp("%",E,"efficiency=")

// Results
// Efficiency is 61.3 %