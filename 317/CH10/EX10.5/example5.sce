// calculate ac collector voltage,ac output voltage across load resistor
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 10-5, page 327

clear;clc; close;

// Given data
B=100;
R1=10*10^3;// in ohms
R2=2.2*10^3;// in ohms
Re=1*10^3;// in ohms
Rl=10*10^3;// in ohms
Rc=3.6*10^3;// in ohms
Rg=600;// internal resistance of ac generator in ohms
Vg=1*10^-3;// in volts
Vcc=10;// in volts

// Calculations
re_=22.7;// ac resistance in ohms
zinbase=B*re_;// input impedance of first base in ohms
zinstage_=(1/R1)+(1/R2)+(1/zinbase);// input impedance of base in ohms
zinstage=zinstage_^-1
vin=(zinstage/(Rg+zinstage))*Vg;// input voltage in volts
rc1=Rc*zinstage/(Rc+zinstage);// rc=Rc||zinstage in ohms in first stage
Av1=rc1/zinbase;// voltage gain
vc1=Av1*vin;// collector voltage in volts in first stage
rc2=Rc*Rl/(Rc+Rl);// rc2=Rc||Rl in ohms in second stage
Av2=rc2/zinbase;// voltage gain
vc2=Av2*vc1;// output voltage across load resistot in volts
disp("Volts",vc1,"ac collector voltage in first stage=")
disp("Volts",vc2,"ac output voltage across the load resistor")

// Results
// ac collector voltage in first stage is 216 *10^-6 Volts
// ac output voltage across the load resistor is 252 *10^-6 Volts
