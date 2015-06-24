// Example 9.11
format('v',6)
clc;
clear;
close;
// given data
V_E= 1.71;// in V
R_E= 240;// in Ω
V_CC= 12;// in V
R_C= 1*10^3;// in Ω
R_L= 1*10^3;// in Ω
I= 0.355*10^-3;// in A
I_CQ= V_E/R_E;// in A
I_C= I_CQ;// in A
// The collector emitter voltage,
V_CEQ= V_CC-I_C*(R_C+R_E);// in V
r_L= R_C*R_L/(R_C+R_L);// in Ω
PP= 2*V_CEQ;// in V
// The maximum ac load power,
P_Lmax= PP^2/(8*R_L);// in W
I_CC= I_C+I;// in A
P_CC= V_CC*I_CC;// in W
// The efficiency 
Eta= P_Lmax/P_CC*100;// in %
disp(Eta,"The efficiency in % is : ")
