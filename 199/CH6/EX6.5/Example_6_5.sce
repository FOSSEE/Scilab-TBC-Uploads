// Chapter6
// Page.No-203, Figure.No-6.7
// Example_6_5
// Output voltage
// Given
clear;clc;
Va=2;Vb=-3;Vc=4; // Input voltages in volts
R1=1*10^3;Rf=2*10^3;
V1=(Va+Vb+Vc)/3; // Voltage at non-inverting terminal
printf("\n Voltage at non-inverting terminal is = %.f V \n",V1)
Vo=(1+Rf/R1)*V1; // Output voltage
printf("\n Output voltage is = %.f V \n",Vo)