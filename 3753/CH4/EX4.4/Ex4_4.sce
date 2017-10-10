//Example 4.4, Page number 4.33

clc;clear;close

// variable declaration
h=6.626*10**-34              // Planck constant 
C=3*10**8                    // Velocity of light
E_g=1.44                     // bandgap 

// calculations
lamda=(h*C)*10**10/(E_g*1.6*10**-19)       // Wavelenght

// Result
printf("Wavelength = %.f Angstrom",(lamda))
