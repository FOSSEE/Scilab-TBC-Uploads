// Exa 4.1
clc;
clear;
close;
format('v',8)
// Given data
V_CC = 20;// in V
I_C= 2*10^-3;// in A
I_CQ= I_C;// in A
I_E=I_C;// in A
R_C = 3;// in k ohm
R_C = R_C * 10^3;// in ohm
R_L = 12;// in k ohm
R_L = R_L * 10^3;// in ohm
R_E = 2;// in k ohm 
R_E = R_E * 10^3;// in ohm
V_CE=0:0.1:20;// in V
I_C_sat= (V_CC-V_CE)/(R_C+R_E)*10^3;// in mA
subplot(121)
plot(V_CE,I_C_sat);
xlabel("V_CE in volts")
ylabel("I_C in mA")
title("DC load line")
Rac= R_C*R_L/(R_C+R_L);// in ohm
V_CEQ= V_CC-I_CQ*(R_C+R_E);// in V
I_Csat= I_CQ+V_CEQ/Rac;// in A
I_Csat=I_Csat*10^3;// in mA
V_CEoff= V_CEQ+I_CQ*Rac;// in V
subplot(122)
plot([V_CEoff 0],[0,I_Csat])
xlabel("V_CE in volts")
ylabel("I_C in mA")
title("AC load line")
// Maximum peak output signal
POSmax= I_CQ*Rac;// in V
// Peak-to-peak value of output signal
PP_out_sig= 2*POSmax;// in V
disp(PP_out_sig,"Peak-to-peak value of output signal in volts is : ")
disp("DC and AC load line shown in figure.")
