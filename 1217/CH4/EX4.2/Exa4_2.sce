//Exa 4.2
clc;
clear;
close;
// given data
disp("As the input impedence of an op-amp circuit is very high & no current will enter the op-amp, hence node voltages at (a) & (b) will be at same potential, let Va=Vb=V");
disp("writing KCL at node (b) we have (6-V)/30+(8-V)/40+(0-V)/30=0");
V=48/11;//in volts
disp(V,"Voltage V in Volt is ; ");
disp("writing KCL at node (a) we have (3-V)/10+(4-V)/20=(V-Vo)/40");
Vo=-(20-7*V);//in Volts
disp(Vo,"Output Voltage of the circuit Vo in Volt is ; ");