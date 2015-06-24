// Scilab code Ex4.4 : Pg:140 (2008)
clc;clear;
I1 = 1.44;    // Intensity of first wave
I2 = 4.00;    // Intensity of second wave
I = 0.90;    // Intensity of resultant wave
// As I_delta = I1 + I2 + 2*sqrt(I1*I2)*cos(delta), solving for delta
delta = acosd((I-I1-I2)/(2*sqrt(I1*I2)));
printf("\nThe lowest phase difference between the waves at interfering point = %3d degree", delta);    

// Result 
// The lowest phase difference between the waves at interfering point = 161 degree 