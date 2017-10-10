// Exa 10.2

clc;
clear;

// Given data
 
// 8 bit DAC
n = 8;
Vmin = 0; // Volts
Vmax = 10; // Volts

// Solution

printf(' For a 8-bit DAC :-\n\n');
LSB = 1/2^n;
LSB10 = LSB*Vmax;
printf('  LSB = %.3f V (i.e. 1/256).\n',LSB10);
MSB10 = (1/2)*Vmax;
printf('  MSB = %d V.\n',MSB10);
fso = (Vmax-LSB10);
printf('  Full scale output = %.3f V. \n',fso);
