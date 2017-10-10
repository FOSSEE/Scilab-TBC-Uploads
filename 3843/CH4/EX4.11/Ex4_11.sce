// Example 4_11
clc;funcprot(0);
// Given data
V_1=6;// The initial volume in ft^3
V_2=1.2;// The final volume in ft^3
T_1=50+460;// The initial temperature in R
P_1=30;// psia
R=53.3;// Btu/lbm°R
c_v=0.171;// // Btu/lbm°R
k=1.4;// The specific heat ratio

// Calculation
m=((P_1*144)*V_1)/(R*T_1);// The mass in lbm
T_2=T_1*(V_1/V_2)^(k-1);// The final temperature in R
W=-m*c_v*(T_2-T_1);// Btu
printf("\nThe necessary work to compress air,W=%2.1f Btu",W);
