// Chapter6
// Page.No-220, Figure.No-6.17
// Example_6_10
// Range of input voltage
// Given
clear;clc;
R1min=1*10^3;R1max=6.8*10^3;
io=1*10^-3; // Meter current for full-wave rectification
vin_min=1.1*R1min*io; // Minimum input voltage
printf("\n Minimum input voltage is = %.1f V \n",vin_min)
vin_max=1.1*R1max*io; // Maximum input voltage
printf("\n Maximum input voltage is = %.2f V \n",vin_max)