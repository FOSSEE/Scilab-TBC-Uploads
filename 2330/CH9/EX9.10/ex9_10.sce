// Example 9.10
format('v',6)
clc;
clear;
close;
// given data
R_C= 3.6;// in kΩ
R_L= 1.5;// in kΩ
V_CEQ= 4.94;// in V
I_CQ= 1.1;// in mA
// The quiescent power dissipation of the transistor,
P_DQ= V_CEQ*I_CQ;// in mW
r_L= R_C*R_L/(R_C+R_L);// in kΩ
PP= 2*I_CQ*r_L;// in V
// The maximum ac load power,
P_Lmax= PP^2/(8*R_L);// in mW
disp(P_Lmax,"The maximum ac load power in mW is : ")
