// Exa 5.5
clc;
clear;
close;
// Given data
V_CE = 0.2;// in V
V_BE= 0.7;// in V
R = 1;// in kohm
R = R * 10^3;// in ohm
V = 10;// in V
I_C = (V-V_CE)/R;// in A
beta_min = 50;
I_B = I_C/beta_min;// in A
I_B1 = V*I_B;// in A
V1 = 5;// in V
R_B = (V1-V_BE)/I_B1;// in ohm
disp(R_B*10^-3,"The base resistance in kΩ is");
