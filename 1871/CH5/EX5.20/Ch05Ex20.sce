// Scilab code Ex5.20: Pg:229 (2008)
clc;clear;
Lambda_1= 5896;    // Wavelength of D1 Sodium light, Angstorm
Lambda_2= 5890;    // Wavelength of D2 Sodium light, Angstorm
Lambda = (Lambda_1 + Lambda_2)/2;    // Mean wavelength of sodium light, Angstorm
d_Lambda = Lambda_1 - Lambda_2;    // Difference in wavelengths of sodium, Angstorm
RP = Lambda/d_Lambda;    // Resolving power of prism
D = 982;    // Rate of change of refractive index with wavelength, per cm
// As RP = t*D, solving for t
t =1/D*RP;    // Length of base of a flint glass prism, cm
printf("\nThe length of base of a flint glass prism = %3.1f cm", t);

// Result 
// The length of base of a flint glass prism = 1.0 cm