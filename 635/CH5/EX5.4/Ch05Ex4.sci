// Scilab Code Ex5.4 Number of Schottky imperfections in NaCl crystal Page-160 (2010)
N = 6.023D23;    // Avogadro's number
k = 8.614D-5;    // Boltzmann's constant, eV/K
T = 27+273;    // Absolute room temperature, K
Ep = 2;    // Energy required to remove a pair of Na+ and Cl- ions, electron-volt
// Now Concentration of imperfections in a crystal is given by
// n/N = exp(-Ep/(2*k*T)), solving for n
n = N*exp(-Ep/(2*k*T));    // No. of Schottky imperfections present in NaCl crystal
printf("\nNo. of Schottky imperfections present in NaCl crystal is : %4.2e", n);
V = 26.83;    // Volume of one mole of the crystal, cm cube
n = n/V;    // Number per mole volume of the crystal, per cm cube
printf("\nConcentration of Schottky imperfections present in NaCl crystal is : %4.2e per cm cube", n);
//Result
// No. of Schottky imperfections present in NaCl crystal is : 9.42e+006
// Concentration of Schottky imperfections present in NaCl crystal is : 3.51e+005 per cm cube 