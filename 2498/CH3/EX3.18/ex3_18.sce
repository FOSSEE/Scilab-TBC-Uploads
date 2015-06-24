// Exa 3.18
clc;
clear;
close;
format('v',4)
// Given data
R = 222;// in ohm
Vin = 20;// in V
V_Z = 10;// in V
P = 400;// in mW
P= P*10^-3;// in W
I_Zmax = P/V_Z;// in A
//I = I_Z+I_L;
I = (Vin-V_Z)/R;// in A
I_Lmin = I - I_Zmax;// in mA
// The value of R_L 
R_L =V_Z/I_Lmin;// in ohm
R_L= R_L*10^-3;// in k ohm
disp(R_L,"The value of R_L in k ohm is");
