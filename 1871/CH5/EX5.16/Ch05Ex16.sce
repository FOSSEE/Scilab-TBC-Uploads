// Scilab code Ex5.16: Pg:225 (2008)
clc;clear;
Lambda_1 = 5140.34;    // First wavelength of light on the grating in the first order, angstrom
Lambda_2 = 5140.85;    // Second wavelength of light on the grating in the first order, angstrom
Lambda_3 = 8037.20;    // First wavelength of light on the grating in the second order, angstrom
Lambda_4 = 8037.50;    // Second wavelength of light on the grating in the second order, angstrom
Lambda = (Lambda_1 + Lambda_2)/2;    //Mean wavelength for the first order diffraction, angstrom
d_Lambda = Lambda_2 - Lambda_1;    // Smallest wavelength difference at the mean wavelength Lambda for the first order diffraction, angstrom
n = 1;    // First order diffraction
// As RP_1 = Lambda/d_Lambda = n*N, solving for N
N = 1/n*Lambda/d_Lambda;    // Number of lines on the diffraction grating for the first order diffraction
n = 2;    // Second order diffraction
RP2 = n*N;    // Expected resolving power of grating in the second order
Lambda = (Lambda_3 + Lambda_4)/2;    // Mean wavelength for the second order diffraction, angstrom
d_Lambda = Lambda_4 - Lambda_3;    // Smallest wavelength difference at the mean wavelength Lambda for the second order diffraction, angstrom
RP = Lambda/d_Lambda;    // Calculated resolving power of grating in the second order
if (RP > RP2) then
    printf("The grating will not be able to resolve the lines %7.2f angstrom and %7.2f angstrom", Lambda_3, Lambda_4);
else 
    printf("The grating will be able to resolve the lines %7.2f angstrom and %7.2f angstrom", Lambda_3, Lambda_4);
end

// Result 
// The grating will not be able to resolve the lines 8037.20 angstrom and 8037.50 angstrom