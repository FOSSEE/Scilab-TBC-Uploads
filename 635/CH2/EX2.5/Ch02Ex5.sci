// Scilab Code Ex2.5 Potential energy and dissociation energy of a diatomic molecule: Page-69 (2010)
e = 1.6D-19; // Electronic charge, C
A = 1.44D-39; // Constant corrsponding to the attractive term in potential energy, joule metre square
B = 2.19D-115; // Constant corresponding to the repulsive term in potential energy, joule metre raised to power 10
Re = (5*B/A)^(1/8); // Equilibrium spacing of diatomic molecule, m
n = 2;  // Power of R in the attractive term of potential energy of two particles
m = 10; // Power of R in the repulsive term of potential energy of two particles
D = A/(Re^2*e)*(1-n/m);// Dissociation energy of diatomic molecule, eV
printf("\nThe equilibrium spacing of diatomic molecule is %4.2e m", Re);
printf("\nThe dissociation energy of diatomic molecule is %4.2e eV", D);

//Result 
// The equilibrium spacing of diatomic molecule is 4.08e-010 m
// The dissociation energy of diatomic molecule is 4.34e-002 eV 