// Scilab Code Ex 10.6 Electron probability above Fermi energy: Page-336 (2010)
k = 1.38D-23; // Boltzmann constant, in J/mol-K
FD = 0.10;    // Fermi-Dirac distribution probability for electrons
Efermi = 5.5;    // Fermi Energy of silver, in eV
E = Efermi + 0.01*Efermi;    // Allowed energy for electrons
dE = E - Efermi;    //Deviation of allowed energy from Fermi energy, in eV
DEeV = dE*1.6D-19; //Convert into joule
// The Fermi-Dirac distribution function as at any temperature T is given by
//            F(E) = FD = 1/(exp((E-Efermi)/kT)+1
// Solving for T 
T = DEeV/(k*log(1/FD-1)); // Absolute temperature at which result follows, in K
disp(DEeV, dE, E);
disp(T, "The temperature at which the given probability is expected, in K, is :");
//Result
//  The temperature at which the given probability is expected, in K, is :
//  290.2212