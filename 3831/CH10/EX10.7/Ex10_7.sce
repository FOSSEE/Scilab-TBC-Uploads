// Example 10_7
clc;funcprot(0);
// Given data
p_1=5000;// psia
T_1=1000;// °F
V_1=50.0;// ft/s
V_2=300.0;// ft/s
x_0=0.00;// The quality of steam
T_0=70.0;// °F
g_c=32.174;// lbm.ft/lbf.s^2
g=32.174;// ft/s^2

// Calculation
// Station 1
p_1=5000;// psia
T_1=1000;// °F
h_1=1363.4;// Btu/lbm
s_1=1.3990;// Btu/lbm.R
// Station 2
p_2=14.696;// psia
h_2=h_1+((V_1^2-V_2^2)/(2*g_c*778.16));// Btu/lbm
h_0=38.1;// Btu/lbm
s_0=0.0746;// Btu/lbm.R
Z_1=0;// ft
Z_2=Z_1;// ft
T_2=655;// °F
s_2=1.9981;// Btu/lbm.R
a_f1=(h_1-h_0)-((T_0+459.67)*(s_1-s_0))+((V_1^2)/(2*g_c*778.16))+((g*Z_1)/g_c);// Btu/lbm
a_f2=(h_2-h_0)-((T_0+459.67)*(s_2-s_0))+((V_2^2)/(2*g_c*778.16))+((g*Z_2)/g_c);// Btu/lbm
Ibym=a_f1-a_f2;// Btu/lbm
printf("\nThe specific flow availabilities at the inlet and outlet of the crack,a_f1=%3.0f Btu/lbm & a_f2=%3.0f Btu/lbm \nThe irreversibility per unit mass of steam exiting the crack,I/m=%3.0f Btu/lbm",a_f1,a_f2,Ibym);