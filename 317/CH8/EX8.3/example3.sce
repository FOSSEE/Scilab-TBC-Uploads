// find emitter current 
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 8-3, page 266

clear;clc; close;

// Given data
R1=10*10^3;// in ohms
R2=2.2*10^3;// in ohms
Rc=3.6*10^3;// in ohms
Re=1*10^3;// in ohms
Bdc=200;// current gain
Vbb=1.8;// base supply voltage in volts 
Vbe=0.7;// voltage across emitter in volts

// Calculations
Rth=(R1*R2)/(R1+R2);// thevenin voltage in volts(R1||R2)
Rin=Bdc*Re;// input resistance of base
// as Rth<0.01*Rin, voltage divider is stiff
Ie=(Vbb-Vbe)/(Re+(Rth/Bdc));// emitter current in amperes
disp("Amperes",Ie,"Emitter Current")

// Result
// voltage divider is stiff, emitter current is 1.09 milliamperes
