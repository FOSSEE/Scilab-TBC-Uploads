// Scilab Code Ex18.1: Output power of the sound source : Page-361 (2010)
r = 200;    // Distance of the point of reduction from the source, m
I_0 = 1e-012;    // Final intensity of sound, watt per metre square
I_f = 60;       // Intensity gain of sound at the point of reduction, dB
// As A_I = 10*log10(I/I_0), solving for I
I = I_0*10^(I_f/10);    // Initial Intensity of sound, watt per metre square
P = 4*%pi*r^2*I;    // Output power of the sound source, watt
printf("\nThe output power of the sound source = %3.1f W", P);

// Result
// The output power of the sound source = 0.5 W 