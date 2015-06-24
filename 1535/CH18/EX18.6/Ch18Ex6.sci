// Scilab Code Ex18.6: Gain of resultant sound intensity: Page-362 (2010)
I0 = 1;    // For simplicity assume initial sound intensity to be unity, watt per metre square
A_I1 = 80;    // First intensity gain of sound, dB
A_I2 = 70;    // Second intensity gain of sound, dB
// As A_I = 10*log10(I/I_0), solving for I1 and I2
I1 = 10^(A_I1/10)*I0;    // First intensity of sound, watt per metre square
I2 = 10^(A_I2/10)*I0;    // Second intensity of sound, watt per metre square
I = I1 + I2;    // Resultant intensity level of sound, watt per metre square
A_I = 10*log10(I/I0);    // Intensity gain of resultant sound, dB
printf("\nThe intensity gain of resultant sound = %6.3f dB", A_I);

// Result
// The intensity gain of resultant sound = 80.414 dB 