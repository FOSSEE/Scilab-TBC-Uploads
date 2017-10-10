// Example 7_10
clc;funcprot(0);
// Given data
m_1=1.00;// lbm
p_1=14.7;// psia
T_1=70.0;// °F
p_2=50.0;// psia
T_2=T_1;// °F
W_act=-42.0*10^3;// ft.lbf
R=53.34;// ft.lbf

// Solution
P_1=p_1*144;// lbf/ft^2
V_1=(m_1*R*(T_1+459.67))/P_1;// ft^3
W_rev=P_1*V_1*log(p_1/p_2);// ft.lbf
W_in=W_rev-W_act;// ft.lbf
S_pW=W_in/(T_1+459.67);// ft.lbf/R
S_pW=S_pW/778.16;// Btu/R
printf('\nThe work mode entropy production,(S_p)_w=%0.4f Btu/R',S_pW);
