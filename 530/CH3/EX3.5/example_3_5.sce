clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.5
// Page 124
printf("Example 3.5, Page 124 \n\n")

l1 = 0.5 ; // wavelength, [um]
l2 = 1.5 ; // wavelength, [um]
l3 = 2.5 ; // wavelength, [um]
l4 = 3.5 ; // wavelength, [um]
H1 = 2500 ; // [W/m^2 um]
H2 = 4000 ; // [W/m^2 um]
H3 = 2500 ; // [W/m^2 um]

// Since the irridiation is diffuse, the spectral intensity is given by eqn 3.4.14 and 3.4.8
// Integrating i_lambda over the directions of the specified solid angle and using fig 3.12


flux = 3/4*[H1*(l2-l1)+H2*(l3-l2)+H3*(l4-l3)];
printf("Rate at which radiation is incident on the surface = %f W/m^2",flux);
