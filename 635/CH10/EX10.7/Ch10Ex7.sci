// Scilab Code Ex 10.7 The Electroic Specific Heat of Cu: Page-341 (2010)
k = 1.38D-23;    //Boltzmann constant, in J/mol-K
N = 6.023D+23;    // Avogadro's Number
Efermi = 7.05;       // Fermi energy of copper, in eV
EFeV = Efermi*1.6D-19; // Fermi energy conversion, in J
T1 = 4;    //Lower value of temperature, in K
T2 = 300;    //Upper value of temperature, in K
Ce4 = (%pi^2*k^2*T1)/(2*EFeV)*N;    // Electronic specific heat at 4K, J/mol/K
Ce100 = (%pi^2*k^2*T2)/(2*EFeV)*N;    // Electronic specific heat at 100K, J/mol/K
disp(Ce4, "The Electronic specific heat at 4K, in J/mol/K is :");
disp(Ce100, "The Electronic specific heat at 100K, in J/mol/K is :");
//Result
// The Electronic specific heat at 4K, in J/mol/K is :
// 0.0020072
// The Electronic specific heat at 100K, in J/mol/K is :
// 0.1505404