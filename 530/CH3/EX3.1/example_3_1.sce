clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.1
// Page 114
printf("Example 3.1, Page 114 \n\n");

T = 5779 ; // [Temperature,in Kelvin]
// From Wein's law, eqn 3.2.8
lambda_m = 0.00290/T ; // [m]
// Substituting this value in plank's law, we get
e = 2*(%pi)*0.596*(10^-16)/(((0.5018*10^-6)^5)*(exp(0.014387/0.00290)-1)) ; //[W/m^2 m]

e_bl_max= e / 10^6 ;

printf("Value of emissivity on sun surface is %f W/m^2 um \n",e_bl_max); //[W/m^2 um]

e_earth = e_bl_max*((0.695*10^6)/(1.496*10^8))^2 ;

printf("The value of emmissivity on earths surface is %f W/m^2 um", e_earth)