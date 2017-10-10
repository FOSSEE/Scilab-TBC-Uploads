// Example 3_1
clc;clear;funcprot(0);
// Given values
P_atm=14.5; // The atmospheric pressure in psi
P_vac=5.8; // The vacuum pressure in psi

//Calculation
P_abs=P_atm-P_vac;
printf('The absolute pressure in the chamber,P_abs=%0.1f psi\n',P_abs);
