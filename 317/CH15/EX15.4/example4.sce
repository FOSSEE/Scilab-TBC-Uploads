// find input and supply voltage for the SCR
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 15-4, page 531

clear; clc; close;

// Given data
Vgt=0.75 ;// gate trigger voltage in volts
Igt=7*10^-3;// gate trigger current in amperes
Rg=10^3;// in ohms
Rl=100;// in ohms
Ih=6*10^-3;// holding current in amperes

// Calculations
Vin=Vgt + (Igt*Rg);// input voltage in volts
Vcc=0.7 + (Ih*Rl);// supply voltage in volts
disp("Volts",Vin,"Input voltage=")
disp("Volts",Vcc,"Supply voltage=")

// Result
// Minimum input voltage needed to trigger the SCR is 7.75 Volts
// Supply voltage that turns off the SCR is 1.3 Volts