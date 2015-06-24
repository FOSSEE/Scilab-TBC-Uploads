// Exa 8.2
clc;
clear;
close;
// Given data
V_GS_off = -20;// in V
I_DSS = 12;// in mA
V_GS = 0;// in V
// For
V_GS= -20;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -20 V, the drain current in mA is");
// For
V_GS= -15;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -15 V, the drain current in mA is");
// For
V_GS= -10;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -10 V, the drain current in mA is");
// For
V_GS= -5;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -5 V, the drain current in mA is");
// For
V_GS= 0;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = 0 V, the drain current in mA is");
V_GS= 0:-0.1:-20
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
plot(V_GS,I_D);
xlabel("Gate to source voltage in V")
ylabel("Drain current in mA")
title("The transconductance curve")
disp("The transconductance curve shown in figure")

