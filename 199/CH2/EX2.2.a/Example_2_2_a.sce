//Chapter2
//Page.No-46, Figure.No-2.10
//Example_2_2_a
//Output voltage for inverting amplifier
//Given:
clear;clc;
vin=20*10^-3;  // Input voltage in volts
A=200000; // Voltage gain
vo=-(A*vin); // Output voltage in volts
printf("\n Output voltage is vo = %.f V \n",vo) // Result