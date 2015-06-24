// Scilab Code Ex6.10 Activation energy for diffusion rates at different temperatures: Page 208 (2010)
R = 8.314;    // Molar gas constant, J/mol/K
T1 = 500+273;    // First temperature at which diffusion of A into B takes place, kelvin
T2 = 850+273;    // Second temperature at which diffusion of A into B takes place, kelvi
PDR = 1/4;    // Penetration depth ratio at 500 degree celsius and 850 degree celsius
// x1/x2 = sqrt(D1/D2) i.e. PDR = sqrt(DRR), DRR is the diffusion rate ratio
// solving for DRR
DRR = PDR^2;    // Diffusion rate ratio D1/D2 of A in B
// As diffusion coefficient at temperature T1 is D1 = D0*exp(-Q/(R*T1))
// and that at temperature T2 is D1 = D0*exp(-Q/(R*T2)), so that the diffusion rates ratio
// D1/D2 = DRR = exp(Q/R*(1/T2-1/T1)), solving for Q, we have
Q = R*log(DRR)/((1/T2-1/T1)*1000);    // Activation energy for diffusion of A in B, kJ/mol
printf("\nThe activation energy for diffusion of A in B = %5.2f kJ/mol", Q);
// Result
// The activation energy for diffusion of A in B = 57.17 kJ/mol
