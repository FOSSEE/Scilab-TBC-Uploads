// find output voltage,power dissipation
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 24-7, page 962

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
Ic=Vout/Rl;// transistor current is equal to load current 
Pd=(Vin-Vout)*Ic;// power dissipation in watts
disp("Volts",Vout,"output voltage=")
disp("Watts",Pd,"power dissipation=")

// Results
// Output voltage is 9.2 Volts
// power dissipation is 1.33 Watts