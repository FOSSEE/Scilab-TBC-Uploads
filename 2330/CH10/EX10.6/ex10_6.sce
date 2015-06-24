// Example 10.6
format('v',6)
clc;
clear;
close;
// given data
V_CC= 30;// in V
PP= V_CC;// in V
R_L= 100;// in Ω
// The value of P_Lmax 
P_Lmax= PP^2/(8*R_L);// in W
disp(PP,"The value of PP in volts is : ")
disp(P_Lmax,"The value of P_Lmax in W is : ")
