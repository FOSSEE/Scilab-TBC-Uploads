// Example 10.4
format('v',6)
clc;
clear;
close;
// given data
V_CC= 40;// in V
V_BE= 0.7;// in V
R= 1*10^3;// in Ω
R_L= 10;// in Ω
V_CEQ= 20;// in V
I_CQ= (V_CC-2*V_BE)/(2*R);// in A
// The value of P_DQ
P_DQ= V_CEQ*I_CQ;// in W
disp(P_DQ,"The value of P_DQ in W is : ")
PP= 2*V_CEQ;// in V
// The value of P_Lmax
P_Lmax= PP^2/(8*R_L);// in W
// The value of P_Dmax
P_Dmax= PP^2/(40*R_L);// in W
disp(P_Lmax,"The value of P_Lmax in W is : ")
disp(P_Dmax,"The value of P_Dmax in W is : ")
