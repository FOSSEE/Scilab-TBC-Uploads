// Exa 3.11
clc;
clear;
close;
// Given data
R_L = 300;// in ohm
R = 200;// in ohm
V_i = 20;// in V
V = (R_L/(R_L+R))*V_i;// in V
disp(V,"The value of V_L in Volts is");
V_L = 10;// in V
V_Z= V_L;// in V
I_L = V_L/R_L;// A
disp(I_L*10^3,"The value of I_L in mA is");
I_R = (V_i-V_L)/R;// in A
disp(I_R*10^3,"The value of I_R in mA is"); 
I_Z = I_R-I_L;// in A
disp(I_Z*10^3,"The value of I_Z in mA is");
// Formula V_Z= R_L*V_i/(R_L+R)
R_L= R*V_Z/(V_i-V_Z);// in ohm
disp(R_L,"The value of R_L in ohm is : ")



