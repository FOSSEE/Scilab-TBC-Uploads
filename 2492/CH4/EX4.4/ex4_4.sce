// Exa 4.4
format('v',6)
clc;
clear;
close;
// Given data
V_CC = 20;// in V
V_BB = 10;// in V
V_BE= 0.7;// in V
V_CEsat = 0.3;// in V
R_B = 47;// in k ohm
R_B = R_B * 10^3;// in ohm
R_C = 1;// in k ohm
R_C = R_C * 10^3;// in ohm
I_C =V_CC/R_C;// in A
I_C = I_C * 10^3;// in mA
plot([V_CC,0],[0,I_C]);
xlabel("V_CE in volts");
ylabel("I_C in mA");
title("DC load line")
I_BQ = (V_BB-V_BE)/R_B;// in A
Beta = 80;
I_CQ = Beta*I_BQ*10^3;// in mA
V_CEQ = V_CC - (I_CQ*10^-3*R_C);// in V
disp("DC load line shown in figure")
disp("Q points : "+string(V_CEQ)+" volts, "+string(I_CQ)+" mA")
I_Csat = (V_CC-V_CEsat)/R_C;// in A
I_B = I_Csat/Beta;// in A
V_BE = 0.7;// in V
R_B = (V_BB-V_BE)/I_B;// in ohm
disp(R_B*10^-3,"The value of R_B in k ohm is");
R_C = 500;// in ohm
V_CE = V_CC - (I_Csat*R_C);// in V
disp(V_CE,"The value of V_CE in volts is : ")
disp("The transistor will come out of saturation and enter the active region of the transistors.");
