// Example 9.2
format('v',5)
clc;
clear;
close;
// given data
V_BE= 0.7;// in V
V_CC= 30;// in V
R_E= 8.2;// in Ω
R1= 22;// in Ω
R2= 47;// in Ω
R_C= 10;// in Ω
R_L= 30;//in Ω
// The base to ground voltage,
V_B= R1*V_CC/(R1+R2);// in V
// The emitter current,
I_E= (V_B-V_BE)/R_E;// in A
// The collector current,
I_CQ= I_E;// in A
// The collector emitter voltage,
V_CEQ= V_CC-I_E*(R_E+R_C);// in V
// The load resistance,
r_L= R_C*R_L/(R_C+R_L);// in Ω
I_Csat= I_E+V_CEQ/r_L;// in A
Vce_cutoff= V_CEQ+I_CQ*r_L;// in V
disp(Vce_cutoff,"The cut off value of V_CE in volts is : ")

