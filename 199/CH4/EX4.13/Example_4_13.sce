// Chapter4
// Page.No-136, Figure.No-4.24
// Example_4_13
// Change in output offset voltage
// Given
clear;clc;
delta_Vio=5*10^-6; // Change in input offset voltage
delta_t=1; // Unit change in time
delta_Iio=2*10^-9; // Change in input offset current
t=4; // Time elapsed(weeks)
R1=1*10^3;Rf=100*10^3;Rl=10*10^3;
delta_Voot=(1+Rf/R1)*(delta_Vio/delta_t)*t+Rf*(delta_Iio/delta_t)*t; // Change in output offset voltage
printf("\n Change in output offset voltage is = %.4f V \n",delta_Voot) // Result