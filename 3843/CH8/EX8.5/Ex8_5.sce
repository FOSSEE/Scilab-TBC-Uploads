// Example 8_5
clc;funcprot(0);
// Given data
P_3=600;// psia
T_3=1000;// °F
P_4=40;// psia
T_4=600;// °F
P_5=2;// psia

// Calculation
// From Table C-2E
h_2=94;// Btu/lbm
h_1=h_2;// Btu/lbm
// From Table C-3E
h_3=1518;// Btu/lbm
s_3=1.716;// Btu/lbm-°R
s_4=s_3;// Btu/lbm-°R
h_4=(((1.716-1.712)/(1.737-1.712))*(1217-1197))+1197;// Btu/lbm
// At 40 psuia and 600°F
h_5=1333;// Btu/lbm
s_5=1.862;// Btu/lbm-°R
s_6=s_5;// Btu/lbm-°R
s_f6=0.175;// Btu/lbm-°R
s_fg6=1.745;// Btu/lbm-°R
x_6=(s_6-s_f6)/s_fg6;// The quality of steam at state 6
h_f6=94;// Btu/lbm
h_fg6=1022;// Btu/lbm
h_6=h_f6+(x_6*h_fg6);// Btu/lbm
q_B=(h_5-h_4)+(h_3-h_2);// The energy input in Btu/lbm
w_T=(h_5-h_6)+(h_3-h_4);// The energy output in Btu/lbm
n=w_T/q_B;// The thermal efficiency
printf("\nThe thermal efficiency,n=%0.3f or %2.1f percentage.",n,n*100);
