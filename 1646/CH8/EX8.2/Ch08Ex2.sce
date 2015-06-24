// Scilab Code Ex8.2: Page-430 (2011) 
clc;clear;
d = 2e-003;....// Thickness of the piece of quarts crystal, m
rho = 2650;....// Density of the crystal, kg/meter-cube
Y = 7.9e+010;....// Value of Youngs Modulus, N/metre-square
n = 1/(2*d)*sqrt(Y/rho);    //The frequency of the fundamental mode of vibration, Hz
printf("\nThe frequency of the fundamental mode of vibration in quatrz crystal = %5.3f Hz", n/1e+006);

// Result
// The frequency of the fundamental mode of vibration in quatrz crystal = 1.365 Hz 