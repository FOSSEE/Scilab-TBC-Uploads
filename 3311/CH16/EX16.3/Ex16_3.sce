// chapter 16
// example 16.3
// Determine AH efficiency and WH efficiency
// page-997
clear;
clc;
// given
V_cell=2; // in V (voltage of lead acid cell)
I_discharge=35; // in A (discharge current)
T_discharge=5; // in Hrs
Eavg=1.95; // in V
I_charge=45; // in A (4charge current)
T_charge=4; // in Hrs
// calculate
AH_efficiency=((I_discharge*T_discharge)/(I_charge*T_charge))*100; // calculation of AH efficiency
WH_efficiency=AH_efficiency*Eavg/V_cell; // calculation of WH efficiency
printf("\nThe AH efficiency is \t %.2f %%",AH_efficiency);
printf("\nThe WH efficiency is \t %.2f %%",WH_efficiency);