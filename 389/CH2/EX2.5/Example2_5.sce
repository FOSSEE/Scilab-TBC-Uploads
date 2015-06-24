clear;
clc;

// Illustration 2.5
// Page: 37

printf('Illustration 2.5 - Page: 37\n\n');

// solution

//***Data****//
// a = mannitol b = H2O
T = 293; // [K]
//*****//

Mb = 18.02;// [kg/kmol]
// From Table 2.3 (Pg 33)
Va = (0.0148*6)+(0.0037*14)+(0.0074*6); // [cubic m/kmol]
viscosity = 0.001005; // [kg/m.s]
association_factor = 2.26; // [water as a solvent]
Dab = (117.3*10^(-18))*((association_factor*Mb)^0.5)*T/(viscosity*Va^0.6); // [square m/s]
printf('Diffusivity of mannitol is %e square m/s\n',Dab);
printf('Observed value is 0.56*10^(-9) square m/s');