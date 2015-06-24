// find power band width 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 18-5, page 673

clear; clc; close;

// Given data
Sr=15*10^6;// slew rate in volts/second
Vp=10;// peak voltage in volts

// Calculations
fmax=Sr/(2*%pi*Vp);// power band width in hertz
disp("Hertz ",fmax,"power band width=")

// Result
// Power bandwidth is 239 kHertz