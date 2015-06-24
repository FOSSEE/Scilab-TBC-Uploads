// calculate output across load resistor
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 10-6, page 331

clear;clc; close;

// Given data
B=200;
re=180;// in ohms
R1=10*10^3;// in ohms
R2=2.2*10^3;// in ohms
Rc=3.6*10^3;// in ohms
Vg=50*10^-3;// in volts
Vcc=10;// in volts
Rg=600;// internal resistance in ohms

// Calculations
rc=2.65*10^3;// in ohms
zinbase=B*re;// input impedance of base in ohms
zinstage_=(1/R1)+(1/R2)+(1/zinbase);// input impedance of base in ohms
zinstage=zinstage_^-1
vin=(zinstage/(Rg+zinstage))*Vg;// input voltage in volts
Av=rc/re;// voltage gain
vout=Av*vin;// output voltage across load resistor in volts
disp("Volts",vout,"Output voltage")

// Results
// output voltage across load resistor is 544 mVolts
