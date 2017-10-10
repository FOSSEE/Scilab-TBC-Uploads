clc;
clear;
lambda_ave=5893*10^-10 //mean wavelength in m
X2_minus_X1=0.2945*10^-3 //displacement of mirror in m

//calculation
lambda1_minus_lambda2=lambda_ave^2/(2*X2_minus_X1)
mprintf("The difference in wavelengths is = %1.3e m",lambda1_minus_lambda2)
//The answer varies due to round off error.
