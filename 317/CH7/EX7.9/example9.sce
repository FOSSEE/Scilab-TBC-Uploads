// find voltage between collector and ground and between collector and emitter
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 7-9, page 239

clear;clc; close;

// Given data
Vcc=15;// collector supply voltage in volts
Vbb=5;// base voltage in volts
Rc=2*10^3;// collector resistance in ohms
Re=1*10^3;// emitter resistance in ohms

// Calculations
Ve=Vbb-0.7;// emitter voltage in volts
Ie=Ve/Re;// emitter current in amperes
Ic=Ie;// collector current is equal to emitter current
Vc=Vcc-(Ic*Rc);// collector voltage in volts
Vce=Vc-Ve;// collector-emitter voltage in volts
disp("Volts",Vce,"collector-emitter voltage")
disp("Volts",Vc,"collector-ground voltage")

// Result
// collector-to-ground voltage is 6.4 volts
// collector-emitter voltage is 2.1 volts
