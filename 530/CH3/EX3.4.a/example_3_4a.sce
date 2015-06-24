clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.4(a)
// Page 123
printf("Example 3.4(a), Page 123 \n\n")


e = 0.08; //emissivity
T = 800; //temperature, [K]

Stefan_constt = 5.67*10^(-8);    //[W/m^2.K^4]
// From Stefan Boltzmann law, equation 3.2.10
q = e*Stefan_constt*T^4;         //[W/m^2]
printf("\n Energy emitted = %.1f W/m^2",q);

// (a)
// Therefore
in = (q/(%pi));
printf("\n Energy emitted normal to the surface = %.1f W/m^2 sr",in);
