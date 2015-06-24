// Exa 7.9
clc;
clear;
close;
// Given data
I_DSS = 12;// in mA
I_DSS= I_DSS*10^-3;// in A
I_D = I_DSS;// in A
V_DD = 12;// in V
R_D = 470;// in ohm
V_DS = V_DD - (I_D*R_D);// in V
disp(I_D*10^3,"The circuit drain current in mA is : ")
disp(V_DS,"The drain source voltage in V is");
