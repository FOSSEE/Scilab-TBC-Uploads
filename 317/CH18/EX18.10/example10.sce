// find closed-loop voltage gain, bandwidth and output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 18-10, page 683

clear; clc; close;

// Given data
R1=10^2;// in ohms from the given figure
Rf=3.9*10^3;// in ohms from the given figure
Vin=50*10^-3;// input voltage in mVpp
f=250*10^3;// frequency in hertz
funity=10^6;// unity gain frequency in hertz

// Calculations
Avcl=(Rf/R1)+1;// cloased loop voltage gain
f2cl=funity/Avcl;// closed-loop bandwidth
// Avcl at 250 Khertz is equilaent to a voltage gain of 4
Vout=4*Vin;// output voltage at 250*10^3 Hertz
disp(Avcl,"closed loop voltage gain=")
disp("Hertz",f2cl,"closed loop bandwidth=")
disp("Volts",Vout,"output voltage=")

// Result
// Closed loop voltage gain is 40
// Closed loop bandwidth is 25 Khertz
// Output voltage is 200 mVpp at 250 KHertz