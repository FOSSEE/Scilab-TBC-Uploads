// Scilab code Ex3.17 : Pg:125(2008)
clc;clear;
F = 10;    // Equivalent focal length of the combination of lenses, cm
d = 2;    // Distance between the lenses of doublet, cm
// The condition of minimum spherical aberration gives 
// f1 = f2 = d or f2 = f1 - d
f1 = 2*F;    // Focal length of the first lens, cm
f2 = f1 - d;    // Focal length of the second lens, cm
printf("\nThe focal length of component lenses of a convergent doublet, f1 = %2d cm and f2 = %2d cm", f1, f2);

// Result 
// The focal length of component lenses of a convergent doublet, f1 = 20 cm and f2 = 18 cm 