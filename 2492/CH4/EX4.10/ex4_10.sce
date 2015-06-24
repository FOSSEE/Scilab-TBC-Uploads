// Exa 4.10
format('v',6)
clc;
clear;
close;
// Given data
V_CC = 18;// in V
V_BB = 6;// in V
Beta = 75;
I_CO = 100;// in nA
I_CO = I_CO * 10^-9;// in A
R_C = 1;// in k ohm
R_C = R_C * 10^3;// in ohm
V_CE = 9;// in V
I_C = 9;// in mA
I_C = I_C * 10^-3;// in A
// I_C = Beta*I_B + (1+Beta)*I_CO;
I_B = (I_C-((1+Beta)*I_CO))/Beta;// in A
I_B = I_B * 10^3;// in mA
disp(I_B,"The value of I_B in mA is");
V_BE = 0.7;// in V assumed
R_B = (V_BB-V_BE)/(I_B*10^-3);// in ohm
R_B = R_B * 10^-3;// in k ohm
disp(R_B,"The value of R_B for Si transistor in k ohm is");
V_BE = 0.3;// in V
R_B = (V_BB-V_BE)/(I_B*10^-3);// in ohm
R_B= R_B*10^-3;// in k ohm
disp(R_B,"The value of R_B for Ge transistor in k ohm is");
V_CEQ= V_CC-I_C*R_C;// in V
I_CQ= round(Beta*I_B);// in mA
I_C= V_CC/R_C;// in A
I_C= I_C*10^3;// in mA
plot([V_CC,0],[0,I_C]);
xlabel("V_CC in volts ");
ylabel("I_C in mA")
title("DC load line ")
disp("DC load line shown in figure")
disp("Q point : "+string(V_CEQ)+" volts, "+string(I_CQ)+" mA")
