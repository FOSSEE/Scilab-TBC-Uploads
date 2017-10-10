// Example 11_7
clc;funcprot(0);
// Given data
// ln p_sat=14.05-(6289.78/T_sat)-(913998.2/T_sat^2);
// T_sat=°F + 461.2
T=212;// °F
R=0.1102;// Btu/(lbm.R)

// Solution
T_sat=T+461.2;// R
// From Table C.13a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics
h_fg=[(6289.78)+((1827997.8)/(T_sat))]*R;// Btu/lbm
// Table C.1a gives
h_fg_212F=970.4;// Btu/lbm
p_error=((h_fg-h_fg_212F)/h_fg_212F)*100;// %
printf("\nThus, the value obtained from Rankine’s equation is in error by only %1.2f percentage.",p_error);
