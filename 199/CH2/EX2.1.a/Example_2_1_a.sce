//Chapter2
//Page.No-45, Figure.No-2.9
//Example_2_1_a
//Output voltage for open-loop differential amplifier
//Given:
clear;clc;
vin1=5*10^-6;vin2=-7*10^-6;  // Both input voltages are in volts
A=200000; // Voltage gain
vo=A*(vin1-vin2); //Output voltage in volts
printf("\n Output voltage is vo = %.1f V dc \n",vo) // Result