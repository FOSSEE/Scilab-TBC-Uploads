// Scilab Code Ex8.8 Percentage transmitted energy of X-rays: Page 259 (2010)
mu = 139;    // Attenuation co-efficient of aluminium, per metre
x = 0.005;    // Thickness of aluminium sheet, m
// If X% is the intensity of the X-ray transmitted through the aluminium sheet then
// X% = I/I_0
// or X/100 = exp(-absorb_coeff*x)
// Solving for X
X = 100*exp(-mu*x);    // Transmitted percentage of X-rays
printf("\nThe intensity of the X-ray transmitted through the aluminium sheet = %g percent", round(X));
// Result
// The intensity of the X-ray transmitted through the aluminium sheet = 50 percent