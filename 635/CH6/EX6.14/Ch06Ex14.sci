// Scilab Code Ex6.14 Diffusion depth of P-type semiconductor (B into Si): Page 212 (2010)
C0 = 0;    // Initial boron concentration of silicon
Cx = 1e+17;    // Boron concentration at depth x below the silicon surface
Cs = 1e+18;    // Boron concentration of silicon at the surface
T = 1100+273;    // Absolute temperature of the system, kelvin
t = 2*60*60;    // Time taken to diffuse boron into silicon, sec
D_1100 = 4e-013;    // Diffusion coefficient for boron in silicon, cm square per sec
erf_Z = abs((Cs-Cx)/(Cs-C0));    // Error function of Z as a solution to Fick's second law
Z1 = 1.1, Z2 = 1.2;    // Preceding and succeeding values about Z from error function table
erf_Z1 = 0.8802, erf_Z2 = 0.9103;    // Preceding and succeeding values about erf_Z from error function table 
Z = poly(0,'Z');
Z = roots((Z-Z1)/(Z2-Z1)-(erf_Z-erf_Z1)/(erf_Z2-erf_Z1));
// As Z = x/(2*sqrt(D_927*t)), where Z is a constant argument of error function as erf(Z)
// Solving for x, we have
x = Z*2*sqrt(D_1100*t); // Diffusion depth of boron into silicon
printf("\nThe diffusion depth of boron into silicon = %4.2e cm", x);
// Result
// The diffusion depth of boron into silicon = 1.25e-004 cm 