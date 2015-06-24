clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.4(b)
// Page 123
printf("Example 3.4(b), Page 123 \n\n")


e = 0.08; //emissivity
T = 800; //temperature, [K]

Stefan_constt = 5.67*10^(-8);    //[W/m^2.K^4]
// From Stefan Boltzmann law, equation 3.2.10
q = e*Stefan_constt*T^4;         //[W/m^2]
in = (q/(%pi));

// (b)
// Radiant flux emitted in the cone 0 <= pzi <= 50 degree, 0 <= theta <= 2*pi
q_cone=2*(%pi)*in*(-cos(100*(%pi/180))+cos(0))/4;

printf("\n Radiant flux emitted in the cone =%.1f W/m^2",q_cone);

Ratio = q_cone/q;
printf("\n Ratio = %.3f",Ratio);

