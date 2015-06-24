// find voltage gain  and output voltage across load resistor
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 10-2, page 323

clear;clc; close;

// Given data
R1=10*10^3;// in ohms
R2=2.2*10^3;// in ohms
Re=10*10^3;// in ohms
Vin=5*10^-3;// in volts
Vcc=9;// in volts
Rc=3.6*10^3;// in ohms
Rl=2.2*10^3;// in ohms

// Calculations
rc=(Rc*Rl)/(Rc+Rl);// ac collector resistance in ohms,Rc||Rl
Ie=(Vcc-0.7)/Re;// dc emitter current in amperes
re_=(25*10^-3)/Ie;// ac resistance of the emitter diode
Av=rc/re_;// voltage gain
vout=Av*Vin;// output voltage in volts
disp("Volts",vout,"Output voltage")

// Results
// Output voltage is 228 mVolts.
