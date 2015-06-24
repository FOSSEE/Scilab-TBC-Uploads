// Exa 8.1
clc;
clear;
close;
// Given data
I_DSS = 15;// in mA
V_GS_off = -5;// in V
V_GS = 0;// in V
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS=0, the drain current in mA is");
V_GS = -1;// in V
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS=-1V, the drain current in mA is");
V_GS = -4;// in V
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS=-4 V, the drain current in mA is");
