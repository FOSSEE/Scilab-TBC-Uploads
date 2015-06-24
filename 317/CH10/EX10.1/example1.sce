// find voltage gain  and voltage across load resistor
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 10-1, page 322

clear;clc; close;

// Given data
R1=10*10^3;// in ohms
R2=2.2*10^3;// in ohms
Re=1*10^3;// in ohms
Rl=10*10^3;// in ohms
Rc=3.6*10^3;// in ohms
Vin=2.2*10^-3;// in volts
Vcc=10;// in volts

// Calculations
rc=(Rc*Rl)/(Rc+Rl);// ac collector resistance in ohms,Rc||Rl
re_=22.7;// ac resistance in ohms
Av=rc/re_;// voltage gain
vout=Av*Vin;// output voltage in volts
disp("Volts",vout,"Output voltage")

// Results
// output voltage is 256 mVolts

