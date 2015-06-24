// Exa 6.14
clc;
clear;
close;
// Given data
I_DSS = 12;// in mA
V_GS = 0;// in V
I_D = 0;// in mA
V_P = -6;// in V
V_GS= 0:-0.1:V_P;// in V
I_D = I_DSS*(1-(V_GS/V_P))^2;// mA
subplot(1,2,1)
plot(V_GS,I_D);
xlabel("V_GS in volts")
ylabel("I_D in mA")
title("n-channel device")
V_P = 6;// in V
V_GS= 0:0.1:V_P;// in V
I_D = I_DSS*(1-(V_GS/V_P))^2;// mA
subplot(1,2,2)
plot(V_GS,I_D);
xlabel("V_GS in volts")
ylabel("I_D in mA")
title("p-channel device")
