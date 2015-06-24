// Scilab code Ex4.2 : Pg:139 (2008)
clc;clear;
I1 = 100;    // Maxiumum intensity of interfering waves
I2 = 1;    // Minimum intensity of interfering waves
a1_ratio_a2 = sqrt(I1/I2);    // Ratio of two amplitudes
a2 = 1;    // Assume the amplitude of second wave to be unity
a1 = a2*a1_ratio_a2;    // The amplitude of second wave
I_max = (a1+a2)^2;    // Maximum intensity of interfering waves
I_min = (a1-a2)^2;    // Minimum intensity of interfering waves
printf("\nThe ratio of maximum intensity to minimum intensity of the two interfering waves, I_max:I_min = %d:%d", I_max, I_min);

// Result 
// The ratio of maximum intensity to minimum intensity of the two interfering waves, I_max:I_min = 121:81 