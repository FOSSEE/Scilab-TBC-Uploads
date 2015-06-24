// Chapter3
// Page.No-99, Figure.No-3.16
// Example_3_6_b
// Output voltage of the Op-amp
// Given
clear;clc;
R1=680;RF=6800 // Both are in ohms
vx=-1.5;vy=-2; // Both input voltages are in volts
AD=1+RF/R1; // Voltage gain
vxy=vx-vy;
vo=AD*vxy; // Output voltage
printf("\n Output voltage is vo = %.1f V \n",vo) // Result