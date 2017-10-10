// Ex9_5  Page:187 (2014)
clc;clear;
lambda_ex = 4358.3;    // Wavelength of the exciting radiation, angstrom
lambda_R = 4768.5;    // Wavelength of the Raman line, angstrom
nu_prime = 1/lambda_ex*1e+08;    // Wave number of the exciting radiation, per cm
nu_prime_R = 1/lambda_R*1e+08;    // Wave number of the Raman line, per cm
nu = nu_prime - nu_prime_R;    // Vibrational frequency of the sample, per cm
printf("\nThe vibrational frequency of the sample = %4d per cm", ceil(nu));

// Result
// The vibrational frequency of the sample = 1974 per cm  