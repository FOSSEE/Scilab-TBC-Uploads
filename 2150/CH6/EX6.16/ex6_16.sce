// Exa 6.16
clc;
clear;
close;
// Given data
I_D = 1.5;// in mA
I_DSS = 5;// in mA
V_P = -2;// in V
V_GS = V_P*(1-sqrt(I_D/I_DSS));// in V
V_G = 0;// in V
V_S = V_G-V_GS;// in V
R_S = V_S/I_D;// in kohm
disp(R_S*10^3,"The source resistance in ohm is");
V_DD = 20;// in V
V_DS= 10;// in V
R_D = (V_DD-(V_DS+(I_D*R_S)))/(I_D);// in kohm
disp(R_D,"The diode resistance in K ohm is");
