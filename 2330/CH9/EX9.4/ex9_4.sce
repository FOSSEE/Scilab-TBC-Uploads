// Example 9.4
format('v',5)
clc;
clear;
close;
// given data
V_E= 1;// in V
R_E=1*10^3;// in Ω
V_CC= 10;// in V
R_C= 4*10^3;// in Ω
R_L= 10*10^3;// in Ω
// The collector current,
I_CQ= V_E/R_E;// in A
I_C= I_CQ;// in A
// The collector emitter voltage,
V_CEQ= V_CC-I_C*(R_C+R_E);// in V
// The load resistance,
r_L= R_L*R_C/(R_L+R_C);// in Ω
//The ac compliance,
PP= 2*I_CQ*r_L;// in V
disp(PP,"The ac compliance in volts is : ")
