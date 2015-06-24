// Exa 3.3
format('v',6)
clc;
clear;
close;
// Given data
V = 120;// in V
Vz = 50;// in V
R = 5;// in k ohm 
R = R * 10^3;// in ohm
I = (V-Vz)/R;// in A
R1 = 10;// in k ohm
R1 = R1 * 10^3;// in ohm
I_L = Vz/R1;// in A
// The maximum value of zener diode current 
I_Zmax = I-I_L;// in A
I_Zmax= I_Zmax*10^3;// in mA
disp(I_Zmax,"The maximum value of zener diode current in mA is");
V2 = 80;// in V
I = (V2-Vz)/R;// in A
// The minimum value of zener diode current 
I_Zmin = I-I_L;// in A
I_Zmin=I_Zmin*10^3;// in mA
disp(I_Zmin,"The minimum value of zener diode current in mA is");
