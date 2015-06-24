//Chapter2
//Page.No-45, Figure.No-2.9
//EXAMPLE_2_1_b
//Output voltage for open-loop differential amplifier
//Given:
clear;clc;
vin1=10*10^-3;vin2=20*10^-3;  // Both input voltages are in volts
A=200000; // Voltage gain
vo=A*(vin1-vin2); // Output voltage in volts
printf("\n Output voltage is vo = %.f V rms \n",vo) // Result