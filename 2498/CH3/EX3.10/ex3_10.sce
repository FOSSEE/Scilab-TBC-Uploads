// Exa 3.10
clc;
clear;
close;
format('v',6)
// Given data
R = 200;// in  ohm
Vi = 20;// in V
V_Z = 10;// in V
R_L = 300;// in ohm
P_Zmax = 400;// in mW
// The value of V_L 
V_L = (R_L/(R_L+R))*Vi;// in V
disp(V_L,"The value of V_L in V is");
V_L = V_Z;// in V
// The value of I_L 
I_L = V_L/R_L;// in A
I_L = I_L * 10^3;// in mA
disp(I_L,"The value of I_L in mA is");
// The value of I_R 
I_R = (Vi-V_Z)/R;// in A
I_R = I_R * 10^3;// in mA
disp(I_R,"The value of I_R in mA is");
// The value of I_Z 
I_Z = I_R-I_L;// in mA
disp(I_Z,"The value of I_Z in mA is");
// V_L >= V_Z and V_L= R_L*Vi/(R_L+R)
// So, the minimum value of R_L 
R_L= R*V_Z/(Vi-V_Z);// in ohm
disp(R_L,"The minimum value of R_L in ohm is : ")

