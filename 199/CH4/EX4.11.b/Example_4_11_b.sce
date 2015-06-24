// Chapter4
// Page.No-141, Figure.No-4.28
// Example_4_11_b
// Output offset voltage
// Given
clear;clc;
delta_Vio=15.85*10^-6; // Change in input offset voltage
delta_V=1; // Unit change in supply voltage
V=2; // Change in supply voltage
Vin=10*10^-3;
R1=1*10^3;Rf=100*10^3;
delta_Voo=(1+Rf/R1)*(delta_Vio/delta_V)*V; // Output offset voltage
Vo=(-Rf/R1)*Vin+delta_Voo; // Total output offset voltage
printf("\n Total output offset voltage is = %.4f V \n",Vo) // Result
// (OR)
Vo=(-Rf/R1)*Vin-delta_Voo; // Total output offset voltage
printf("\n Total output offset voltage is = %.4f V \n",Vo) // Result