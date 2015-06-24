// calculate the collector-emmitter voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 8-1, page 263

clear;clc; close;

// Given data

Vcc=10;// collector supply voltage in volts
R1=10*10^3;// in ohms
R2=2.2*10^3;// in ohms
Rc=3.6*10^3;// collector resistance 
Re=1*10^3;// emitter resistance

// Calculations

Vbb=R2*Vcc/(R1+R2);// base voltage in ohms
Ve=Vbb-0.7;// emitter voltage
Ie=Ve/Re;// emitter current in amperes
Ic=Ie;// collector current is approximately equal to emitter current
Vc=Vcc-(Ic*Rc);// collector-to-ground voltage in volts
Vce=Vc-Ve;// collector-emitter voltage in volts
disp("Volts",Vce,"Collector-Emitter Voltage")

// Result
// collector-emitter voltage is 4.92 volts.
