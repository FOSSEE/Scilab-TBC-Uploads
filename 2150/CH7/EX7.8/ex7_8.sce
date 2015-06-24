// Exa 7.8
clc;
clear;
close;
// Given data
I_DSS = 4;// in mA
V_GSoff = -2;// in V
V_GS = -0.5;// in V
I_D = I_DSS*(1-(V_GS/V_GSoff))^2;// in mA
disp(I_D,"At V_GS=-0.5 V, the drain current in mA is");
V_GS = -1;//in V
I_D = I_DSS*(1-(V_GS/V_GSoff))^2;// in mA
disp(I_D,"At V_GS=-1.0 V, the drain current in mA is");
V_GS = -1.5;// in V
I_D = I_DSS*(1-(V_GS/V_GSoff))^2;// in mA
disp(I_D,"At V_GS=-1.5 V, the drain current in mA is");
