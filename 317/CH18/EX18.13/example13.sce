// find output voltage and bandwidth
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 18-13, page 688

clear; clc; close;

// Given data
Vin=10*10^-3;// ac input source in Vpp
R=100*10^3;// internal resistance in ohms
Rl=1;// load resistance in ohms
funity=10^6;// unity gain frequency in hertz

// Calculations
Avcl=1;// closed loop voltage gain of a voltage follower
Vout=Avcl*Vin;// output voltage in volts
f2cl=funity/Avcl;// closed-loop bandwidth
disp("Hertz",f2cl,"closed loop bandwidth=")
disp(Vout,"output voltage=")

// Result
// Output voltage is 10 mVpp
// bandwidth is 1 MHertz