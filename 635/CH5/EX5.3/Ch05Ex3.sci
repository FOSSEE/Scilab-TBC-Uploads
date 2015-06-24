// Scilab Code Ex5.3 Concentration of Schottky imperfections Page-159 (2010)
N = 6.023D23;    // Avogadro's number
k = 8.614D-5;    // Boltzmann's constant, eV/K
T1 = 27+273;    // First absolute temperature, K
T2 = 1000;    // Second absolute temperature, K
C_300 = 1D-10;    // Concentration of Schottky defects in an fcc crystal at 300 K temperature
n = C_300*N;    // Number of Schottky imperfections per mole
d = 1D-10;    // Interatomic spacing assumed to be unit angstrom, m
V = d^3;    // Volume of the unit cube, metre cube
V_mole = V*N;    // Volume occupied by one mole of atoms in fcc crystal, metre cube
V_per_defect = V_mole/n;    // Volume per defect, metre cube
a = (V_per_defect)^(1/3);    // Average separation between the defects, m
E_v = 23.03*k*T1;    // Energy of the solid, electron-volt
C_1000 = exp(-E_v/(k*T2));    // Schottky defect concentration at 1000 K
printf("\nThe average separation between the defects, is : %3.1e m", a);
printf("\nThe expected concentration of Schottky defect at 1000 K, n/N, is : %3.1e", C_1000);
//Result
// The average separation between the defects, is : 2.2e-007 m
// The expected concentration of Schottky defect at 1000 K, n/N, is : 1.0e-003 