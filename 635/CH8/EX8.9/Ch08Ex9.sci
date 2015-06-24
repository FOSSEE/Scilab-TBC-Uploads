// Scilab code Ex8.9 : Determination of thickness of lead piece by using two equal intensity X-ray wavelengths : Page 259 (2010)
lambda_1 = 0.064e-010;    // First wavelength of X-ray, metre
lambda_2 = 0.098e-010;    // Second wavelength of X-ray, metre
I1_ratio_I2 = 3;    // Ratio of attenuated beam intensity
mu_m1 = 0.164;    // Mass absorption coefficient for first wavelength, metre square per kg
mu_m2 = 0.35;    // Mass absorption coefficient for second wavelength, metre square per kg
d = 0.164;    // Density of the lead, kg per metre cube
mu1 = mu_m1*d;    // absorption co-efficient of the lead for first wavelength, per metre
mu2 = mu_m2*d;    // absorption co-efficient of the lead for second wavelength, per metre
x = poly(0,"x");    // Declare 'x' as the thickness variable
// Now I = exp(-ac*x) thus
// I1_ratio_I2 = exp(-ac_1*x)/exp(-ac_2*x)
// or 3 = exp(2109.24)*x this implies
// 2104.24*x = log(3) and assume
p = 2104.24*x-log(3);
printf("\nThe thickness of lead piece = %4.2e m", roots(p));
// Result
// The thickness of lead piece = 5.22e-004 m 