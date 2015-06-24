// Scilab Code Ex6.8 Activation energy for diffusion of silver in silicon: Page 206 (2010)
R = 8.314;    // Molar gas constant, J/mol/K
T1 = 1350+273;    // First temperature at which difuusion of Ag into Si takes place, kelvin
T2 = 1100+273;    // Second temperature at which difuusion of Ag into Si takes place, kelvin
DRR = 8;    // Ratio of diffusion rates of Ag in Si at T1 and T2
// As diffusion coefficient at temperature T1 is D1 = D0*exp(-Q/(R*T1))
// and that at temperature T2 is D1 = D0*exp(-Q/(R*T2)), so that the diffusion rates ratio
// D1/D2 = DRR = exp(Q/R*(1/T2-1/T1)), solving for Q, we have
Q = R*log(DRR)/((1/T2-1/T1)*1000);    // Activation energy for diffusion of Ag in Si, kJ/mol
printf("\nThe activation energy for diffusion of Ag in Si = %3d kJ/mol", Q);
// Result
// The activation energy for diffusion of Ag in Si = 154 kJ/mol 