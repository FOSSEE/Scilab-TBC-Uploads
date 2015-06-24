// calculate transistor power dissipation and maximum output power  
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 12-8, page 397

clear;clc; close;
// Given data
R1=100;// in ohms
R2=100;// in ohms
Vcc=20;// in volts
Rl=8;// in ohms

// Calculations
MPP=Vcc;// in volts
Pdmax=(MPP^2)/(40*Rl);// maximum transistor power dissipation in watts
Poutmax=(MPP^2)/(8*Rl);// maximum output power in watts
disp("Watts",Pdmax,"maximum power dissipation=")
disp("Watts",Poutmax,"maximum output power=")


// Result
// maximum power dissipation is 1.25 watts
// maximum output power is 6.25 watts


