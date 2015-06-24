// Exa 3.11
clc;
clear;
close;
// Given data
I_F= 70;// in mA
V_F= 26;// in mV
delta_I_F= 60;// in mA
delta_I_F=delta_I_F*10^-3;// in A
delta_V_F= 0.025;// in V
r_d= delta_V_F/delta_I_F;// in ohm
disp(r_d,"Dynamic resistance in ohm is : ")
// and the stimated value of the dynamic resistance is
r_d= V_F/I_F;// in ohm
disp(r_d,"The stimated value of the Dynamic resistance in ohm is : ")
