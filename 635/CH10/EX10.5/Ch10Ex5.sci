//Scilab Code Ex 10.5 Fermi energy of zinc at absolute zero: Page-335 (2010)
d = 7.13D+3;   // Density of Zn, in kg per m cube
M = 65.4D-3;      // Atomic weight of Zn, kg/mol
me = 9.1D-31;  // Mass of an electron, kg
meff = 0.85*me;  // Effective mass of the electron in zinc, kg
v = 2;    // valency of divalent (Zn) metal
N = 6.023D+23;    // Avogadro's Number
h = 6.626D-34;    //Plank's constant, in Js
n = v*d*N/M;    // Number of electrons per unit volume
Ef = h^2/(2*meff)*(3*n/(8*%pi))^(2/3);  //Fermi energy in zinc at absolute zero, J
EfeV = Ef/1.6D-19;    // Fermi energy in eV
Ebar = (3/5)*EfeV;    // Average energy of an electron at 0K, eV
disp(EfeV,"The fermi energy in zinc at absolute zero,in eV, is : ");
disp(Ebar,"The average energy of an electron at 0K,in eV, is : ");
//Result
// The fermi energy in zinc at absolute zero,in eV, is :
// 11.110065
// The average energy of an electron at 0K,in eV, is :
// 6.6660389