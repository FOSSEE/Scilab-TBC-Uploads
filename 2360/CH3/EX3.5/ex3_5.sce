// Exa 3.5
format('v',7);clc;clear;close;
// Given data
Rsh = 0.01;//shunt resistance in ohm
Rm = 750;//resistance in ohm
Vm= 400*10^-3;//voltage in V
Ish = 50;//current in A
// Ish*Rsh = voltagedrop;
Ish = Vm/Rsh;//current through shunt  in A
disp(Ish,"The current through shunt in A is");
Ish=50;// in A
Vsh = Ish*Rsh;// in V
Im = Vm/Rm;// in A
// Im*R_m = Vsh;
R_m = Vsh/Im;//resistance of meter in ohm
disp(R_m,"The resistance of meter in Ω is");
