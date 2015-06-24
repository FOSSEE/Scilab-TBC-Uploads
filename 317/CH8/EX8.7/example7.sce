// calculate the 3 transistor voltages for pnp circuit 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 8-7, page 278

clear;clc; close;

// Given data
Vee=10;// in volts
Vcc=10;// in volts
Rc=3.6*10^3;// in ohms
Re=1*10^3;// in ohms
R1=10*10^3;// in ohms
R2=2.2*10^3;// in ohms

// Calculations
V2=(R2/(R2+R1))*Vee;//voltage across R2
Ve=V2-0.7;// voltage across emitter resistor in volts
Ie=Ve/Re;// emitter current in amperes
Ic=Ie;// collector current is equal to emitter current
Vc=Ic*Rc;// collector-ground voltage in volts
Vb=Vcc-V2;// base -ground voltage in volts
Vee=Vcc-Ve;// emitter-ground voltage in volts
disp("Volts",Vc,"Collector Voltage")
disp("Volts",Vb,"Base Voltage")
disp("Volts",Vee,"Emitter Voltage")

// Result
// collector-ground voltage is 3.96 volts
// base-ground voltage is 8.2 volts
// emitter-ground voltage is 8.9 volts
