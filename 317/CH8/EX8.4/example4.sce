// find resistances to fit in the given VDB design
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 8-4, page 269

clear;clc; close;

// Given data
// 2N3904
Bdc=100;// current gain
Vcc=10 ;// supply voltage in volts
Ic=10*10^-3;// collector current in amperes

// Calculations
Ve=0.1*Vcc;// emitter voltage in volts
Ie=Ic;// collector current is equal to emitter current
Re=Ve/Ie;// emitter resistance in ohms
Rc=4*Re;// collector resistance in ohms
R2max=0.01*Bdc*Re;// in ohms
V2=Ve+0.7;// in volts
V1=Vcc-V2;// in volts
R1=(V1*R2max)/V2;// in ohms
disp("Ohms",R1,"R1=")
disp("Ohms",R2max,"R2=")
disp("Ohms",Rc," Collector Resistance=")
disp("Ohms",Re,"Emitter Resistance=")

// Result
// R1=488 ohms, R2=100 ohms, Rc=400 ohms, Re=100 ohms
