// Example 1_6
clc;funcprot(0);
// Given data
P_gage=35;// psi
P_atm=100;// The atmospheric pressure in kPa

// Calculation
P_gage=35*144*0.04788;// The gage pressure in kPa
P=P_atm+P_gage;// The absolute pressure in kPa
printf("\nThe absolute pressure,P=%3.0f kPa",P)
