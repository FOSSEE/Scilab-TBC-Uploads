// Exa 3.5
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 12;// in V
R_B = 100;// in k ohm
R_C = 500*10^-3;// in k ohm
Beta_dc = 100;
V_BE= 0.7;// in V
// V_CC - I_BQ*R_B - V_BE = 0;
I_BQ = (V_CC - V_BE)/R_B;// in mA
I_CQ = Beta_dc*I_BQ;// in mA
// V_CC - I_CQ*R_C - V_CEQ = 0;
V_CEQ = V_CC - (I_CQ*R_C);// in V
disp("The Q point at 30° is : "+string(V_CEQ)+" V, "+string(I_CQ)+" mA")
Beta_dc = 120;
I_CQ1 = Beta_dc*I_BQ;// in mA
V_CEQ1 = V_CC - (I_CQ1*R_C);// in V
disp("The Q point at 80° is : "+string(V_CEQ1)+" V, "+string(I_CQ1)+" mA")
PerI_CQ = ((I_CQ1-I_CQ)/I_CQ)*100;// in %
disp("The percentage change in I_CQ is : "+string(PerI_CQ )+" % (increase)");
PerV_CEQ = ((V_CEQ1-V_CEQ)/V_CEQ)*100;// in %
disp("The percentage change in V_CEQ is : "+string(abs(PerV_CEQ))+" % (decrease)");
