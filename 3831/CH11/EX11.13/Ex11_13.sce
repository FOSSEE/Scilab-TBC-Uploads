// Example 11_13
clc;funcprot(0);
// Given data
m=8.20;// lbm
V=1.00;// ft^3
T=-78.0;// °F

// Solution
// From Table C.12a, we find that
T_c=240;// R
p_c=507;// psia
v_c=1.49/28.011;// ft^3/lbm
// Also, from Table C.13a, we find that
R=0.0709;// Btu/lbm.R
T_R=(T+460)/T_c;
v=V/m;// ft^3/lbm
// Assume 'a' instead of '
v_ca=(R*(T_c*778.16))/(p_c*144);// ft^3/lbm
v_Ra=v/v_ca;
// Using T_R = T/Tc = 1.60 and v′R = v/v′c = 0:67, we find from Figure 11.6 that
p_R=2.10;
Z=0.850;
p=p_c*p_R;// psia
printf("\nThe pressure exerted by 8.20 lbm of the carbon monoxide,p=%4.0f psia",p);
// The answer is different due to round off error.
