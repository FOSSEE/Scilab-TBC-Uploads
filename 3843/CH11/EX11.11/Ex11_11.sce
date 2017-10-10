// Example 11_11
clc;funcprot(0);
// Given data
T_1=80;// °F
phi_1=90;// The relative humidity at state 1
T_2=75;// °F
phi_2=40;// The relative humidity at state 2

// Calculation
// (a)
// From psychrometric chart
w_2=0.0177;// lbm H2O/lbm dry air
w_3=0.0075;// lbm H2O/lbm dry air
dw=w_3-w_2;// The amount of moisture removed in lbm H2O/lbm dry air
// (b)
h_3=20;// Btu/lbm dry air
h_1=39.5;// Btu/lbm dry air
q=h_3-h_1;// The heat removed in Btu/lbm dry air
// (c)
h_3=20;// Btu/lbm dry air
h_4=26.5;// Btu/lbm dry air
q_c=h_4-h_3;// The necessary added heat in Btu/lbm dry air
printf("\n(a)The amount of moisture removed,dw=%0.3f lbm H2O/lbm dry air \n(b)The heat removed,q=%2.1f Btu/lbm dry air \n(c)The necessary added heat,q=%1.1f Btu/lbm dry air",dw,q,q_c);
