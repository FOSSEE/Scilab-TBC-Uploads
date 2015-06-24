// Scilab Code Ex6.11 Time required for carburizing of steel: Page 209 (2010)
C0 = 0.0018;    // Intial carbon concentration of steel
Cx = 0.0030;    // Carbon concentration of steel at 0.60 mm below the surface of the gear
Cs = 0.01;    // Carbon concentration of steel at the surface
x = 0.6e-03;    // Diffusion depth below the surface of the gear, m
D_927 = 1.28e-011;    // Diffusion coefficient for carbon in iron, metre square per sec
erf_Z = (Cs-Cx)/(Cs-C0);    // Error function of Z as a solution to Fick's second law
Z1 = 1.0, Z2 = 1.1;    // Preceding and succeeding values about Z from error function table
erf_Z1 = 0.8427, erf_Z2 = 0.8802;    // Preceding and succeeding values about erf_Z from error function table
Z = poly(0,'Z');
Z = roots((Z-Z1)/(Z2-Z1)-(erf_Z-erf_Z1)/(erf_Z2-erf_Z1));
// As Z = x/(2*sqrt(D_927*t)), where Z is a constant argument of error function as erf(Z)
// Solving for t, we have
t = (x/(2*Z))^2/D_927;    // Time necessary to increase the carbon content of steel, sec
printf("\nThe time necessary to increase the carbon content of steel = %3d minutes", t/60);
// Result
// The time necessary to increase the carbon content of steel = 110 minutes