// Scilab Code Ex15.2 Finding suitable energy for Photoelectric Effect from Na metal: Page-486 (2010)
e = 1.602e-019;    // Charge on an electron, C
h = 6.626e-034;    // Planck's constant, Js
c = 3.0e+08;    // Speed of light in vacuum, m/s
W = 2.3*e;        // Work function of Na metal, J
lambda = 2800e-010;    // Wavelength of incident light, m
f = c/lambda;    // Frequency of the incident light, Hz
E = h*f;    // Energy carried by one photon from Planck's law, J
printf("\nThe energy carried by each photon of radiation = %4.2f eV", E/e);
if E > W then
    printf("\nThe photoelectric effect is possible..");
else
    printf("\nThe photoelectric effect is impossible..");
end
// Result 
// The energy carried by each photon of radiation = 4.43 eV
// The photoelectric effect is possible.. 

