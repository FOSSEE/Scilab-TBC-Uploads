// Example 9.3
format('v',6)
clc;
clear;
close;
// given data
V_BE= 0.7;// in V
V_CC= 20;// in V
V_B= 10;// in V
R_E= 50;// in Ω
// The collector current,
I_CQ= (V_B-V_BE)/R_E;// in A
// The collector emitter voltage,
V_CEQ= V_CC-I_CQ*R_E;// in V
R1= 50;// in Ω
R2= 50;// in Ω
// The load resistance,
r_L= R1*R2/(R1+R2);// in Ω
I_Csat= I_CQ+V_CEQ/r_L;// in A
Vce_cutoff= V_CEQ+I_CQ*r_L;// in V
disp(Vce_cutoff,"The cut off value of V_CE in volts is : ")

