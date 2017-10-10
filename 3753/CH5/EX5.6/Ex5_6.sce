//Example 5.6, Page number 5.29

clc;clear;close

// variable declaration
a=100//unitless
N_a=0.3               // Numerical aperture
lamda=850             // wavelength

// Calculations
V_n=(2*(%pi)**2*a**2*10**-12*N_a**2)/lamda**2*10**-18 // number of modes
// Result
printf("Number of modes = %d modes",round(V_n/10**-36))
printf("\nNo.of modes is doubled to account for the two possible polarisations")
printf("\nTotal No.of modes = %d",round(V_n/10**-36)*2)
