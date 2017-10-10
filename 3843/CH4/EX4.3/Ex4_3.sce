// Example 4_3
clc;funcprot(0);
// Given data
V=6;// ft^3
p=400;// psia
T=900;// °F
Q=800;// Btu

// Calculation
u_1=1324;// Btu/lbm
v_1=1.978;// ft^3/lbm
m=V/v_1;// lbm
u_2=(Q/m)+u_1;// Btu/lbm
// At 500 psia
v_a=1.978;// ft^3/lbm
u_a=1459;// Btu/lbm
T_a=1221;// °F
// At 600 psia 
v_b=1.978;// ft^3/lbm
u_b=1603;// Btu/lbm
T_b=1546;// °F
T_2=T_b-(((u_b-u_2)/(u_b-u_a))*(T_b-T_a));// °F
printf("\nThe final temperature,T_2=%4.0f°F",T_2);
