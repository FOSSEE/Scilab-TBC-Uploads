// Scilab Code Ex9.3 Thickness of concrete collimator: Pg:202 (2008)
rho = 2200e-03;    // Density of concrete, g per cm
mu_m = 0.064;    // Mass attenuation coefficient of concrete, cm square per g
mu = rho*mu_m;    // Linear attenuation coefficient o concrete, per cm
// As attenuation exponential is exp(-mu*x) = 1e+06, solving for x
x = -log(1e-06)/mu;
printf("\nThe required thickness of concrete to attenuate a collimated beam = %2d cm", x);
// Result 
// The required thickness of concrete to attenuate a collimated beam = 98 cm 