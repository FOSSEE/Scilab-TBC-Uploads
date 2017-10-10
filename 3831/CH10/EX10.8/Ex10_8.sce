// Example 10_8
clc;funcprot(0);
// Given data
m=2.80;// lbm/s
// Station 1
p_1=100;// psia
T_1=500;// °F
h_1=1279.1;// Btu/lbm
s_1=1.7087;// Btu/lbm.R
// Station 2
p_2=10.0;// psia
p_2s=p_2;// psia
s_2f=0.2836;// Btu/lbm.R
s_2fg=1.5043;// Btu/lbm.R
s_2=s_1;// Btu/lbm.R
h_2f=161.4;// Btu/lbm
h_2fg=982.1;// Btu/lbm
h_2s=1091.6;// Btu/lbm
// Ground state
x_0=0;// The quality of steam
T_0=70.0;// °F
s_0=0.0746;// Btu/lbm.R
h_0=38.1;// Btu/lbm
g_c=32.174;// lbm.ft/lbf.s^2
g=32.174;// ft/s^2

// Calculation
// (a)
V_1=0;// ft/s
Z_2=0;// ft
Z_1=Z_2;// ft
V_2s=[2*g_c*(h_1-h_2s)*778.16]^(1/2);// ft/s
V_2=(95/100)*V_2s;// ft/s
h_2=h_1-((V_2^2)/(2*g_c*778.16));// Btu/lbm
x_2=(h_2-h_2f)/h_2fg;// The quality of steam
s_2=s_2f+(x_2*s_2fg);// Btu/lbm.R
a_f1=(h_1-h_0)-((T_0+459.67)*(s_1-s_0))+(V_1^2/(2*g_c*778.16))+((g*Z_1)/g_c);// Btu/lbm
// (b)
a_f2=(h_2-h_0)-((T_0+459.67)*(s_2-s_0))+(V_2^2/(2*g_c*778.16))+((g*Z_2)/g_c);// Btu/lbm
// (c)
I=m*(a_f1-a_f2);// Btu/s
printf("\n(a)The inlet specific flow availability,a_f1=%3.0f Btu/lbm \n(b)The exit specific flow availability,a_f2=%3.0f Btu/lbm  \n(c)The irreversibility rate inside the nozzle,I=%2.1f Btu/s",a_f1,a_f2,I);
// The answer vary due to round off error
