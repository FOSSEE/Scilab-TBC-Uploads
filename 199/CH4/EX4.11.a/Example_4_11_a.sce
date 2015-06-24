// Chapter4
// Page.No-141, Figure.No-4.28
// Example_4_11_a
// Output offset voltage
// Given
clear;clc;
delta_Vio=15.85*10^-6; // Change in input offset voltage
delta_V=1; // Unit change in supply voltage
V=2; // Change in supply voltage
R1=1*10^3;Rf=100*10^3;
delta_Voo=(1+Rf/R1)*(delta_Vio/delta_V)*V; // Change in output offset voltage
printf("\n Change in output offset voltage is = %.4f V \n",delta_Voo) // Result