// Example 11_7
clc;funcprot(0);
// Given data
T_1=100;// °F
T_2=80;// °F
P=14.7;// psia
P_g1=0.9503;// psia
P_g2=0.5073;// psia
c_p=0.24;// Btu/lbm-°R
h_fg2=1048;// Btu/lbm
h_g1=1105;// Btu/lbm
h_f2=48.09;// Btu/lbm

// Calculation
// (a)
w_2=0.622*(P_g2/(P-P_g2));// lbm H2O/lbm dry air
w_1=((w_2*h_fg2)+(c_p*(T_2-T_1)))/(h_g1-h_f2);// lbm H2O/lbm dry air
// (b)
P_v1=(w_1*P)/(0.622*(1+(w_1)));// psia
phi=P_v1/P_g1;// The relative humidity in %
// (c)
h=(c_p*T_1)+(w_1*h_g1);// Btu/lbm dry air
printf("\n(a)The humidity ratio,w_1=%0.5f lbm H2O/lbm dry air \n(b)The relative humidity,phi=%0.3f or %2.1f percentage. \n(c)The specific enthalpy of the air,h=%2.1f Btu/lbm dry air",w_1,phi,phi*100,h);
