// Example 6_10
clc;funcprot(0);
// Given data
P_1=140;// The steam pressure at turbine inlet in psia
T_1=1000;// The temperature at turbine inlet in °F
P_2=2;// The steam pressure at turbine exit in psia
m=4;// lbm/sec

// Calculation
// From steam tables
h_1=1531;// Btu/lbm
s_2=1.8827;// Btu/lbm.°R
s_1=s_2;// Btu/lbm.°R
s_f2=0.1750;// Btu/lbm.°R
s_fg2=1.7448;// Btu/lbm.°R
x_2=(s_2-s_f2)/s_fg2;// Btu/lbm.°R
h_f2=94.02;// Btu/lbm
h_fg2=1022.1;// Btu/lbm
h_2=h_f2+(x_2*h_fg2);// Btu/lbm
W_T=m*(h_1-h_2);// Btu/sec
printf("\nThe power output,W_T=%4.0f Btu/sec or %4.0f hp",W_T,W_T*1.414);
