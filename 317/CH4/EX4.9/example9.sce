// calculating of dc load voltage and ripple
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 4-9, page 111

clear;clc; close;

// Given data
V1=120;// rms input voltage in volts
Rl=500;// dc load resistance in ohms
f=60;// frequency in hertz
C=4700*10^-6// capacitance in farads 
// 15:1 step down transformer

// Calculations
V2=V1/15;// rms secondary voltage in volts
Vp=V2/0.707;// peak secondary voltage
Vl=Vp-1.4;// using second approximation
Il=Vl/Rl;// dc load current in amperes
Vr=Il/(2*f*C);// ripple in vpp,bridge rectifier
disp("Volts",Vl,"dc load voltage =")
disp("Volts",Vr,"riple =")

// Result
// dc load voltage is 9.9 volts
// ripple is 35 mVpp
