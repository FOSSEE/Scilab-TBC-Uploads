//All the quantities are expressed in SI units

M = 2;                        //Mach number

//for this value M, for a normal shock, from Appendix B
p0_ratio = 0.7209;

//thus
area_ratio = 1/p0_ratio;

printf("\nRESULTS\n---------\nThe diffuser throat to nozzle throat area ratio is:\n        At,2/At,1 = %1.3f",area_ratio)