// Scilab Code Ex2.6 Binding force and critical separation of a diatomic molecule: Page-69 (2010)
Re = 3D-10; // Equilibrium spacing of diatomic molecule, m
e = 1.6D-19; // Electronic charge, C
D = 4*e; // Dissociation energy of diatomic molecule, eV
n = 2;  // Power of R in the attractive term of potential energy of two particles
m = 10; // Power of R in the repulsive term of potential energy of two particles
Ue = -D; // Potential energy of diatomic molecule at equilibrium separation, joule
A = -(Ue*Re^n)/(1-n/m); // Constant corrsponding to the attractive term in potential energy, joule metre square
B = A*Re^8/5; // Constant corresponding to the repulsive term in potential energy, joule metre raised to power 10
Rc = (55/3*B/A)^(1/8); // Critical separation between the nuclei, m
F_min = -2*A/Rc^3*(1-(Re/Rc)^8); // The minimum force required to dissociate the moleule, N
disp(A,"The constant A corresponding to the attractive potential energy, in joule metre square, is :");
disp(B,"The constant B corresponding to the repulsive potential energy, in joule metre raised to power 10, is :");
disp(Rc/1d-10, "The critical separation between the nuclei, in angstrom, is : ");
disp(F_min, "The minimum force required to dissociate the molecule, in N, is : ");

//Result 
// The constant A corresponding to the attractive potential energy, in joule metre square, is :               //   7.200D-38  
// The constant B corresponding to the repulsive potential energy, in joule metre raised to power 10, is :    //   9.44D-115  
// The critical separation between the nuclei, in angstrom, is :    
// 3.529D-10 
// The minimum force required to dissociate the molecule, in N, is :    
// -2.383D-09 