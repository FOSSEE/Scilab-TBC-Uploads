// Scilab Code Ex18.2: Change in sound level for doubling intensity: Page-361 (2010)
I1 = 1;    // For simplicity assume first intensity level to be unity, W per metre square
I2 = 2*I1;    // Intensity level after doubling, watt per metre square
dA_I = 10*log10(I2/I1);    // Difference in gain level, dB
printf("\nThe sound intensity level is increased by = %1d dB", dA_I);

// Result
// The sound intensity level is increased by = 3 dB 