// Example 6_5
clc;funcprot(0);
// Given data
P_1=100;// The initial pressure in psia
T_1=600;// The initial temperature in °F
P_2=10;// The final pressure in psia

// Calculation
// From steam tables
v_2=6.216;// ft^3/lbm
v_1=v_2;// ft^3/lbm
v_f2=0.0166;// ft^3/lbm
v_g2=38.42;// ft^3/lbm
x=(v_2-v_f2)/(v_g2-v_f2);// The quality of steam
// From steam tables
s_f2=0.2836;// Btu/lbm-°R
s_fg2=1.5041;// Btu/lbm-°R
s_1=1.7582;// Btu/lbm-°R
s_2=s_f2+(x*s_fg2);// Btu/lbm-°R
dels=s_2-s_1;//  Btu/lbm-°R
u_f2=161.2;// Btu/lbm
u_fg2=911.01;// Btu/lbm
u_1=1214.2;// Btu/lbm
q=[u_f2+(x*u_fg2)]-u_1;// Btu/lbm
printf("\nThe entropy change,dels=%1.3f Btu/lbm-°R \nThe heat transfer,q=%3.0f Btu/lbm",dels,q);

