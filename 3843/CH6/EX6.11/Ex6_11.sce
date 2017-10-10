// Example 6_11
clc;funcprot(0);
// Given data
// From example 6.10
P_1=140;// The steam pressure at turbine inlet in psia
T_1=1000;// The temperature at turbine inlet in °F
P_2=2;// The steam pressure at turbine exit in psia
m=4;// lbm/sec
W_s=1748;// Btu/sec
n_t=0.80;// The isentropic efficiency of the turbine
h_1=1521;// Btu/lbm

// Calculation
W_a=n_t*W_s;// Btu/sec
h_2a=h_1-(W_a/m);// Btu/lbm
P_2a=2;// psia
T_2a=(((1186-1182)/(1186-1168))*(280-240))+280;// °F
s_2a=2.0526;// Btu/lbm.°R
printf("\nThe temperature of the final state,T_2a=%3.0f°F \nThe entropy of thefinal state,s_2a=%1.4f Btu/lbm.°R",T_2a,s_2a);
