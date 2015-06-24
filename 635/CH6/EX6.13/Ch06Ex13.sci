// Scilab Code Ex6.13 Depth of decarburization below the surface of steel: Page 211 (2010)
C2 = 0.012;    // Initial carbon concentration of steel
Cx = 0.008;    // Carbon concentration of carburized steel at x metre depth
Cs = 0;    // Carbon concentration of steel at the surface
t = 5*60*60;    // Carburizing time of steel, sec
D_927 = 1.28e-011;    // Diffusion coefficient for carbon in iron, metre square per sec
erf_Z = abs((Cs-Cx)/(C2-Cs));    // Error function of Z as a solution to Fick's second law
Z1 = 0.65, Z2 = 0.70;    // Preceding and succeeding values about Z from error function table
erf_Z1 = 0.6420, erf_Z2 = 0.6778;    // Preceding and succeeding values about erf_Z from error function table 
Z = poly(0,'Z');
Z = roots((Z-Z1)/(Z2-Z1)-(erf_Z-erf_Z1)/(erf_Z2-erf_Z1));
// As Z = x/(2*sqrt(D_927*t)), where Z is a constant argument of error function as erf(Z)
// Solving for x, we have
x = Z*2*sqrt(D_927*t); // Depth of decarburization below the surface of steel, m 
printf("\nThe minimum depth upto which post machining is to be done = %4.2f mm", x*1000);
// Result
// The minimum depth upto which post machining is to be done = 0.66 mm