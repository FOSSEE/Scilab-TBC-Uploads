// Scilab code Exa13.7 : : Page-601 (2011)
clc; clear; 
G = 6.67e-11;        // Gravitational constant, newton square m per square kg
r = 7e+08;        // Radius of the sun, metre
M_0 = 2e+30;        // Mass of the sun, kg
E_rel = 3/5*G*M_0^2/r;      // Energy released by the sun, joule
E_dia_shrink_10 = E_rel/9;  // Energy released when sun diameter shrink by 10 percent, joule
R = 8.314;       // Universal gas constant, joule per kelvin per kelvin per mole
T = E_rel/(M_0*R);  // Temperature of the sun, kelvin
printf("\nThe energy released by the sun = %4.2e joule \nThe energy released when sun diameter is shrinked by 10 percent = %4.2e joule \nThe temperature of the sun = %4.2e kelvin ",E_rel, E_dia_shrink_10, T);

// Result
// The energy released by the sun = 2.29e+041 joule 
// The energy released when sun diameter is shrinked by 10 percent = 2.54e+040 joule 
// The temperature of the sun = 1.38e+010 kelvin 
  