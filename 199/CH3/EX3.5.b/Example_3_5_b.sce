// Chapter3
// Page.No-96, Figure.No-3.14
// Example_3_5_b
// Output voltage of an Op-amp
// Given
clear;clc;
vx=2.7;vy=3; //Both input voltages are in volts
Rf=10*10^3;R1=1000; // Both are in ohms
AD=-Rf/R1; // Voltage gain
vxy=vx-vy;
vo=AD*vxy; // Output voltage
printf("\n Output voltage is vo = %.f V \n",vo) // Result