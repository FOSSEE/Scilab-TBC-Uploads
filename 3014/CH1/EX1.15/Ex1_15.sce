
clc 
//Given that
e = 25 // Energy of neutron in eV
c = 3e8 // speed of light in m/s
m = 1.67e-27 // Mass of neutron in Kg
h = 6.62e-34 // Plank constant
printf("Example 1.15")
rest_e = m*c^2/(1e6*1.6e-19)// rest mass energy of neutron in MeV
if e/rest_e < 0.015 then
    E = e;
    else E = rest_e +e;
end
lambda = h/(sqrt(2*m*e*1.6e-19)) // calculation of de Broglie wavelength
printf("\n de Broglie wavelength of neutron is %f angstrom.\n\n\n", lambda*1e10)
// Answer in book is 8.04e-5 angstrom 
