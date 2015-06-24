// Scilab Code Ex6.9 Activation energy and diffusion constant of a diffusion system obeying Arrhenius rate law: Page 207 (2010)
R = 1.987;    // Molar gas constant, cal/mol/K
D_1100 = 8e-013;    // Diffusivity of Ga in Si at 1100 degree celsius, cm square per sec
D_1300 = 1e-010;    // Diffusivity of Ga in Si at 1300 degree celsius, cm square per sec
T1 = 1100+273;    // First temperature at which diffusion of Ga into Si takes place, kelvin
T2 = 1300+273;    // Second temperature at which diffusion of Ga into Si takes place, kelvin
// Arrehenius equation in log10 form is  given by
// log10(D) = log10(D0)-Q/(2.303*R*T)    --- (a)
// Thus log10(D_1100) = log10(D0)-Q/(2.303*R*T1)     --- (i)
// log10(D_1300) = log10(D0)-Q/(2.303*R*T2)    --- (ii), 
// On subtracting (ii) from (i), we get
// log10(D_1100/D_1300) = -Q/(2.303*R)*(1/T2-1/T1), solving for Q
Q = (2.303*log10(D_1100/D_1300)*R)/(1/T2-1/T1);    // Activation energy for diffusion of Ga in Si, cal/mol
// Putting Q in (ii) and solving for D0
D0 = exp(2.303*log10(D_1100)+Q/(R*T1))
// D0 = exp(2.303*log10(D_1300)+Q/(R*T2));    // Pre-exponential diffusion constant independent of temperature, cm square per sec
T = 1200+273;    // Temperature at which diffusion of Ga into Si is to be calculated, kelvin
// Substituting D0, Q, R and T in (a) and solving for D, we have
D = exp(2.303*log10(D0)-Q/(R*T));    // Diffusivity of the system, cm square per sec
printf("\nThe activation energy for diffusion of Ga in Si = %3d kcal/mol", Q/1000);
printf("\nThe pre-exponential diffusion constant, D0 = %5d cm square per sec", D0);
printf("\nThe diffusivity of the system = %4.2e cm square per sec", D);
// Result
// The activation energy for diffusion of Ga in Si = 103 kcal/mol
// The pre-exponential diffusion constant, D0 = 24893 cm square per sec
// The diffusivity of the system = 1.05e-011 cm square per sec