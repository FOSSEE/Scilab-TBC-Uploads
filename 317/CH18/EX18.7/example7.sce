// find closed-loop voltage gain, bandwidth and output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 18-7, page 678

clear; clc; close;

// Given data
R1=1.5*10^3;// in ohms from the given figure
Rf=75*10^3;// in ohms from the given figure
Vin=10^-2;// input voltage in mVpp
f1=10^3;// frequency in hertz
f2=10^6;// frequency in hertz
funity=10^6;// unity gain frequency in hertz

// Calculations
Avcl=-Rf/R1;// closed loop voltage gain
f2cl=funity/-Avcl;// closed-loop bandwidth
Vout1=Avcl*Vin;// output voltage at 10^3 Hertz
Vout2=-Vin;// output voltage at 10^6 Hertz as it is unity gain frequency in hertz
disp(Avcl,"closed loop voltage gain=")
disp("Hertz",f2cl,"closed loop bandwidth=")
disp("Volts",Vout1,"output voltage 1=")
disp("Volts",Vout2,"output voltage 2=")

// Result
// Closed loop voltage gain is -50
// Closed loop bandwidth is 20 Khertz
// Output voltage is -500 mVpp at 1 KHertz
// Output voltage is -10 mVpp at 1000 KHertz