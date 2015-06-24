// Example 10.1
format('v',6)
clc;
clear;
close;
// given data
V_CEQ= 7.5;// in V
R_L= 50;// in Ω
I_Csat= V_CEQ/R_L;// in A
I_CQ= 0.01*I_Csat;// in A
P_DQ= V_CEQ*I_CQ;// in W
PP= 2*V_CEQ;// in V
P_Dmax= PP^2/(40*R_L);// in W
P_Lmax= PP^2/(8*R_L);// in W
// The value of P_DQ 
P_DQ= P_DQ*10^3;// in mW
// The value of P_Dmax 
P_Dmax= P_Dmax*10^3;// in mW
// The value of P_Lmax 
P_Lmax= P_Lmax*10^3;// in mW
disp(P_DQ,"The value of P_DQ in mW is : ")
disp(P_Dmax,"The value of P_Dmax in mW is : ")
disp(P_Lmax,"The value of P_Lmax in mW is : ")
