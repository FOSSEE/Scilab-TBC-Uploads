// Scilab Code Ex5.6 Ratio of Frenkel defects at two different temperatures in an ionic crystal Page-161 (2010)
k = 8.614D-5;    // Boltzmann's constant, eV/K
Ef = 1.4;    // Average energy required to create a Frenkel defect, eV
T1 = 300;    // First absoluite temperature, K
T2 = 600;    // Second absolute temperature, K
// The concentration of Frenkel defect for given Ef and absolute temperature T is given by
// n = A*exp(-Ef/(2*k*T)), per metre cube, so that
// n1 = A*exp(-Ef/(2*k*T1)), per metre cube, and
// n2 = A*exp(-Ef/(2*k*T2)), per metre cube, therefore,
// n1/n2 = exp((-Ef/k)*(1/T1 - 1/T2)), the ratio of Frenkel defects is
n300_r_n600 = exp((-Ef/(2*k))*(1/T1 - 1/T2)); // Frenkel defect ratio 
printf("\nThe ratio of Frenkel defect, n300_r_n600, is : %5.3e", n300_r_n600);
//Result
// The ratio of Frenkel defect, n300_r_n600, is : 1.312e-006 