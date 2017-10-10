// Example 8_2
clc;funcprot(0);
// Given data
Q_solar=100*10^3;// Btu/h
T_river=40+459.67;// R
T_collector=200+459.67;// R

// Calculation
W_e_rev=(Q_solar*(1-(T_river/T_collector)))/3412;// kW
printf("\nThe maximum steady state electrical power (in kW) that can be produced by this power plant,(W_electrical)_rev=%1.2f kW",W_e_rev);
