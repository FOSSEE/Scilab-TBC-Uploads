// Scilab Code Ex8.7 Calculation of wavelengths of tin and barium using Moseley's law Page-257 (2010)
Z_Fe = 26;    // Atomic number of iron
Z_Pt = 78;    // Atomic number of platinum
Z_Sn = 50;    // Atomic number of tin
Z_Ba = 56;    // Atomic number of barium
b = 1;    // Mosley's constant for K-series
lambda_Fe = 1.93e-010;    // Wavelength of K_alpha line of Fe
lambda_Pt = 0.19e-010;    // Wavelength of K_alpha line of Pt
// From Moseley's Law,
// f = a*(Z-1)^2. This implies lambda  = C*1/(Z-1)^2
// so that lambda_Fe  = C*1/(Z_Fe-1)^2 and lambda_Sn  = C*1/(Z_Sn-1)^2
// Dividing lambda_Sn by lambda_Fe and solving for lambda_Sn
lambda_Sn = (Z_Fe-1)^2/(Z_Sn-1)^2*lambda_Fe;    // Wavelength of K_alpha line for tin, m
lambda_Ba = (Z_Pt-1)^2/(Z_Ba-1)^2*lambda_Pt;    // Wavelength of K_alpha line for barium, m
printf("\nThe wavelengths of tin and barium = %3.1f angstrom and %4.2f angstrom respectively", lambda_Sn/1D-10, lambda_Ba/1D-10); 
// Result
// The wavelengths of tin and barium = 0.5 angstrom and 0.37 angstrom respectively