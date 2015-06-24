// Scilab Code Ex12.5: Output power in fibre optic communication : Page-272 (2010)
alpha = 2;    // Power loss through optical fibre, dB/km
P_in = 500;    // Poer input of optical fibre, micro-watt
z = 10;    // Length of the optical fibre, km
// As alpha = 10/z*log10(P_in/P_out), solving for P_out
P_out = P_in/10^(alpha*z/10);    // Output power in fibre optic communication, W
printf("\nThe output power in fibre optic communication = %1d micro-watt", P_out);

// Result
// The output power in fibre optic communication = 5 micro-watt 