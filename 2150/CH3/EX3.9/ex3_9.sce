// Exa 3.9
clc;
clear;
close;
// Given data
V_Z = 20;// in V
R_L = 1.2;// in K ohm
R_L = R_L * 10^3;// in ohm
R = 220;// in ohm
I_ZM = 60;// in mA
I_ZM= I_ZM*10^-3;// in A
Vi_min = (R_L + R)/R_L*V_Z;// in V
disp(Vi_min,"The minimum value of Vi in V is");
V_L= V_Z;// in V
I_L= V_L/R_L;// in A
Vi_max= (I_ZM+I_L)*R+V_Z;// in V
disp(Vi_max,"The maximum value of Vi in V is");
