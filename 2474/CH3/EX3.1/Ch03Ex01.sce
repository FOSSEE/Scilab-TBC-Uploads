// Scilab code Ex3.1: Pg.121 (2008)
clc; clear;
r_sun = 6.96e+08;    // Radius of sun, m
T_sun = 5800;    // Temperature of sun, K
T_star = 3000;    // Temperature of star, K
r_star = 10*(r_sun)*((T_sun/T_star)^2);   // Radius of the star from Stefan's law, m
printf("\nThe radius of star = %3.1e m",r_star);

// Result
// The radius of star = 2.6e+010 m