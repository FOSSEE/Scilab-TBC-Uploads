// Scilab Code Ex2.1 Stability of molecule based on bond dissociation energy: Page-61 (2010)
e = 1.6D-19; // Electronic charge, C
N = 6.023D+23; // Avogadro's number
e0 = 8.854D-12; // Absolute Electrical permitivitty of free space, coulomb square per newton per metre square
Re = 3D-10;    // Equilibrium separation, m 
IE = 502;    // First ionization energy of A, kJ/mol
EA = 335;    // Electron affinity for atom B, kJ/mol
IS = 3D-10;    // Interatomic separation between A+ and B-, m
Ue = -(e^2*N)/(4*%pi*e0*Re*1D+3); // Potential energy at equilibrium separation of A+B- molecule, kJ/mol
DE = Ue + IE - EA; // Bond dissociation energy of A+B- molecule, kJ/mol
printf("\nThe bond dissociation energy of A+B- molecule is : %d kJ/mol", DE);
if (DE < 0)
    disp("The molecule A+B- is stable..");
else 
    disp("The molecule A+B- is unstable..");
end   
   
//Result 
//    The bond dissociation energy of A+B- molecule, in kJ/mol, is : -294
//   The molecule A+B- is stable..
