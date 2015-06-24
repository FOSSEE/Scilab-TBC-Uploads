// Exa 8.3
clc;
clear;
close;
// Given data
// For maximum transconductance curve
disp("For Maximum Transconductance curve")
V_GS_off = -2;// in V
I_DSS = 8;// in mA
V_GS = 0;// in V
// For
V_GS= -2;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -2 V, the drain current in mA is");
// For
V_GS= -1.5;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -1.5 V, the drain current in mA is");
// For
V_GS= -1;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -1 V, the drain current in mA is");
// For
V_GS= -0.5;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -0.5 V, the drain current in mA is");
// For
V_GS= 0;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = 0 V, the drain current in mA is");

// For maximum transconductance curve
disp("For Maximum Transconductance curve")
V_GS_off = -6;// in V
I_DSS = 20;// in mA
V_GS = 0;// in V
// For
V_GS= -6;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -6 V, the drain current in mA is");
// For
V_GS= -4;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -4 V, the drain current in mA is");
// For
V_GS= -2;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = -2 V, the drain current in mA is");
// For
V_GS= 0;
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
disp(I_D,"When V_GS = 0 V, the drain current in mA is");
// For maximum transconductance curve
V_GS_off=-6;// in V
I_DSS= 20;// in mA
V_GS= 0:-0.1:-6;// in volt
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
// For minimum transconductance curve
plot(V_GS,I_D);
V_GS_off=-2;// in V
I_DSS= 8;// in mA
V_GS= 0:-0.1:-2;// in volt
I_D = I_DSS*((1-(V_GS/V_GS_off))^2);// in mA
plot(V_GS,I_D);
xlabel("Gate to source voltage in V")
ylabel("Drain current in mA")
title("The minimum and maximum transconductance curve")
disp("The minimum and maximum transconductance curve shown in figure")

// Note: For maximum transconductance curve the value of drain current at V_GS =-2 is wrong.




