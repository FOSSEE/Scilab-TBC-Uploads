// Example 13_11
clc;funcprot(0);
// Given data
T_1=800;// R
T_4=530;// R
T_3=T_4;// R
p_4=14.7;// psia
p_3=p_4;// psia
p_2s=p_3;// psia
m=1.00*10^-3;// lbm of air
R=53.34;// ft.lbf/lbm.R
k=1.4;// The specific heat ratio

// Calculation
// (a)
V_4=(m*R*T_4)/(p_4*144);// ft^3
V_1=V_4;// ft^3
p_1=(m*R*T_1)/(V_1*144);// psia
// (b)
T_2s=T_1*(p_2s/p_1)^((k-1)/k);// R
CR=T_2s/T_3;// The isentropic compression ratio
// (c)
n_T_L=(1-((k*T_3*(CR-1))/(T_1-T_4)))*100;// The Lenoir cold ASC thermal efficiency in %
printf("\n(a)The combustion pressure,p_1=%2.1f psia \n(b)The isentropic compression ratio,CR=%1.2f \n(c)The Lenoir cold ASC thermal efficiency,n_T=%1.2f percentage",p_1,CR,n_T_L);
// The answer vary due to round off error
