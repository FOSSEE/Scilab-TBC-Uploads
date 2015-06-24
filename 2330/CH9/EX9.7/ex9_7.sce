// Example 9.7
format('v',6)
clc;
clear;
close;
// given data
I_CQ= 5*10^-3;// in A
R_C= 1*10^3;// in Ω
R_L= 1*10^3;// in Ω
// The load resistance
r_L= R_C*R_L/(R_C+R_L);// in Ω
// The ac compliance,
PP= 2*I_CQ*r_L;// in V
I_CQ= 5.15*10^-3;// in A
PP= 2*I_CQ*r_L;// in V
disp(PP,"The ac compliance in volts is : ")
