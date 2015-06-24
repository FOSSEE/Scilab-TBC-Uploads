// Scilab Code Ex5.5 Average energy required to create one Schottky defect in NaCl Page-160 (2010)
N = 6.023D23;    // Avogadro's number
k = 8.614D-5;    // Boltzmann's constant, eV/K
T = 27+273;    // Absolute room temperature, K
r = 2.82D-10;    // Interatomic separation of NaCl cryastal, m
n = 5D+11;        // Density of defects, per metre cube
//Ep = 2;        // Energy required to remove a pair of Na+ and Cl- ions, electron-volt
a = 2*r;        // Lattice parameter of unit cell of NaCl, m
V = a^3;        // Volume of the unit cell of sodium, metre cube
n_ip = 4;     // Number of ion-pairs of NaCl 
N = n_ip/V;    // No. of ion-pairs in unit volume of an ideal NaCl crystal
// Now n/N = exp(-Ep/(2*k*T)), solving for Ep
Ep = 2*k*T*log(N/n);    // Average energy required to create one Schottky defect, electron-volt
printf("\nThe Average energy required to create one Schottky defect in NaCl crystal is : %4.2f eV", Ep);
//Result
// The Average energy required to create one Schottky defect in NaCl crystal is : 1.98 eV