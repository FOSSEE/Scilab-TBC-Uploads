// calculate ac output voltage and input impedance of the diff amp 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 17-4, page 631

clear; clc; close;

// Given data
Vee=15;// in volts from the figure
Vcc=15;// in volts from the figure
Re=7.5*10^3;// emitter resistance in ohms
Rc=5*10^3;// collector resistance in ohms
Vin=10^-3;// in volts
B=300;// given

// Calculations
It=Vee/Re;// tail current in amperes
Ie=It/2;// emitter current in amperes
re=25*10^-3/Ie;// ac emitter resistance in ohms
Av=Rc/re;// voltage gain
Vout=Av*Vin;// ac output voltage in volts
zin=2*B*re;// input impedance of either base in ohms
disp("Volts",Vout,"output voltage=")
disp("ohms",zin,"input impedance=")

// Result
// ac output voltage is 200 mVolts
// Input impedance of the differential amplifier is 15 Kohms  