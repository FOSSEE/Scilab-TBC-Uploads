// Exa 3.9
format('v',7);clc;clear;close;
// Given data
Im = 20;//current in mA
Vm = 200;//voltage in mV
// Vm = Im*Rm;
Rm = Vm/Im;//resistance in ohm
I = 200;// in A
Im = Im * 10^-3;// in A
Rsh = (Im*Rm)/(I-Im);//required shunt resistance in ohm
disp(Rsh,"The required shunt resistance in Ω is");
V = 500;// in V
Rs = (V/Im)-Rm;//required multiplier resistance in ohm
Rs = Rs * 10^-3;// in k ohm
disp(Rs,"The required multiplier resistance in kΩ is");
