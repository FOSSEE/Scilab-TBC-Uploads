// Example 9_2
clc;funcprot(0);
// Given data
m=0.2000;// lbm/s
// Station 1
p_1=14.7;// psia
T_1=50.00;// °F
// Station 2
p_2=95.00;// psia
D_1=1.000;// The inlet diameter of the nozzle in m
D_2=0.2500;// The outlet diameter of the nozzle in m
c=1.0;// Btu/lbm.R
g_c=32.174;// lbm.ft/(lbf.s^2)

// Calculation
v_f=0.01602;// ft^3/lbm
v=v_f;// ft^3/lbm
V_1=(4*m*v*144)/(%pi*D_1^2);// ft/s
V_2=V_1*(D_1/D_2)^2;// ft/s
T_2=(T_1+459.67)+(v*(((p_2-p_1)*144)/(c*778.17)))-((V_2^2-V_1^2)/(2*c*g_c*778.17));// R
S_p=m*c*log(T_2/(T_1+459.7));// Btu/(s.R)
S_p=S_p*778.17;// ft.lbf/(s.R)
printf("\nThe rate of entropy production,S_p=%0.4f ft.lbf/(s.R)",S_p);
