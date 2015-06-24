// find output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 10-3, page 325

clear;clc; close;

// Given data
B=300;
R1=10*10^3;// in ohms
R2=2.2*10^3;// in ohms
Re=1*10^3;// in ohms
Rl=10*10^3;// in ohms
Rc=3.6*10^3;// in ohms
Rg=600;// internal resistance of ac generator in ohms
vg=2*10^-3;// in volts
Vcc=10;// in volts

// Calculations
rc=(Rc*Rl)/(Rc+Rl);// ac collector resistance in ohms,Rc||Rl
re_=22.7;// ac resistance in ohms
Av=rc/re_;// voltage gain
zinbase=B*re_;// input impedance of base in ohms
zinstage_=(1/R1)+(1/R2)+(1/zinbase);// input impedance of base in ohms
zinstage=zinstage_^-1
vin=(zinstage/(Rg+zinstage))*vg;// input voltage in volts
vout=Av*vin;// output voltage in volts
disp("Volts",vout,"Output voltage")

// Results
// Output voltage is 165 mVolts.
