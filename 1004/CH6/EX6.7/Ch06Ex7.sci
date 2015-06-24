// Scilab code: Ex6.7: Critical voltage for stimualted emission : Pg: 158 (2008)
h = 6.625e-034;    // Planck's constant, Js
c = 3e+08;    // Velocity of light, m/s
e = 1.6e-019;    // Charge of an electron, coulombs
L_k = 0.178e-010;    // Wavelength of k absorption egde of X-rays, m
// Since e*V_critical = h*c/L;    // Energy required by an electron to move through a potential barrier of one volt, joules
// solving for V_critical
V_critical = h*c/(L_k*e);    // Crtical voltage for stimulated enission, volt
printf("\nThe critical voltage for stimulated emission = %4.1f kV", V_critical/1e+03);
// Result
// The critical voltage for stimulated emission = 69.8 kV 