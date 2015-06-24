// Scilab Code Ex08.1 Determination of shortest wavelength and frequency of X-rays from accelerating potential Page-250 (2010)
V = 50e+03;    // Accelerating potential, volt
c = 3e+08;    // Speed of light in free space
Lambda_min = 1.24e-06/V;    // Minimum wavelength, metre
F_max = c/Lambda_min;    // Maximum frequency, Hz
printf("\nThe shortest wavelength present in X-rays = %4.2f angstrom", Lambda_min/1D-10);
printf("\nThe maximum frequency present in X-rays = %3.1e Hz", F_max);
// Result
// The shortest wavelength present in X-rays = 0.25 angstrom
// The maximum frequency present in X-rays = 1.2e+19 Hz 
