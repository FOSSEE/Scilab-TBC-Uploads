// Chapter4
// Page.No-153, Figure.No-4.32
// Example_4_14_a
// Output voltage
// Given
clear;clc;
R1=1*10^3;R2=1*10^3;Rf=10*10^3;R3=10*10^3;
vd=5*10^-3; // Differential voltage
vcm=2*10^-3; // Common-mode voltage
Ad=Rf/R1; // Closed-loop differential gain
vo=Ad*vd; // Output voltage
printf("\n Output voltage is = %.3f V \n",vo) // Result