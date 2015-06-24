// Scilab code Ex4.1 : Pg:139 (2008)
clc;clear;
I_max = 36;    // Maxiumum intensity of interfering waves
I_min = 1;    // Minimum intensity of interfering waves
// As (a + b)/(a - b) = sqrt(I_max/I_min), solving for a/b
a1 = sqrt(I_max)+1;    // Amplitude of first wave, unit
a2 = sqrt(I_max)-1;    // Amplitude of second wave, unit
I1 = a1^2;    // Intensity of the first wave, unit
I2 = a2^2;    // Intensity of the second wave, unit
printf("\nThe ratio between the amplitudes of the two interfering waves, a1:a2 = %d:%d", a1, a2);
printf("\nThe ratio between the intensities of the two interfering waves, I1:I2 = %d:%d", I1, I2);

// Result 
// The ratio between the amplitudes of the two interfering waves, a1:a2 = 7:5
// The ratio between the intensities of the two interfering waves, I1:I2 = 49:25 