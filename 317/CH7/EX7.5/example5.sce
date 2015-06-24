// calculate collector-emitter resistance voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 7-5, page 232

clear;clc; close;

// Given data
Bdc=100
Vbb=15;// in volts
Vcc=15;// collector supply voltage in volts
Vbe=0.7;// in volts
Rb=1*10^6;// base resistance in ohms
Rc=3*10^3;// collector resistance in ohms

// Calculations
Ib=(Vbb-Vbe)/Rb;// base current in amperes
Ic=Bdc*Ib;// collector current in amperes
Vce=Vcc-(Ic*Rc);// collector-emitter voltage in volts
disp("Volts",Vce,"collector-emitter voltage")

// Result
// collector-emitter voltage is 10.7 volts
