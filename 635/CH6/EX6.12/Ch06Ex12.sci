// Scilab Code Ex6.12 Carbon concentration of carburized steel at certain depth: Page 210 (2010)
C0 = 0.0020;    // Initial carbon concentration of steel
Cs = 0.012;    // Carbon concentration of steel at the surface
t = 10*60*60;    // Carburizing time of steel, sec
x = 0.06*25.4*1e-03;    // Diffusion depth below the surface of the gear, mm
D_927 = 1.28e-011;    // Diffusion coefficient for carbon in iron, metre square per sec
Z = x/(2*sqrt(D_927*t)), // A constant argument of error function as erf(Z)
Z1 = 1.1, Z2 = 1.2;    // Preceding and succeeding values about Z from error function table
erf_Z1 = 0.8802, erf_Z2 = 0.9103;    // Preceding and succeeding values about erf_Z from error function table   
efZ = poly(0,'efZ');
efZ = roots((efZ-erf_Z1)/(erf_Z2-erf_Z1)-(Z-Z1)/(Z2-Z1)); // Error function of Z as a solution to Fick's second law
Cx = poly(0,'Cx');    
Cx = roots(efZ-(Cs-Cx)/(Cs-C0));  // Carbon concentration of carburized steel at 0.06 inch depth
printf("\nThe carbon concentration of carburized steel at 0.06 inch depth = %4.2f percent", Cx*100);
// Result
// The carbon concentration of carburized steel at 0.06 inch depth = 0.31 percent