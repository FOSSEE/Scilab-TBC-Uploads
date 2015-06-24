// Scilab code Ex3.18 : Pg:125(2008)
clc;clear;
F = 5.0;    // Equivalent focal length of the combination of lenses, cm
// As F = 3*d/4, solving for d
d = 4/3*F;    // // Distance between the lenses of doublet, cm 
// The condition of minimum spherical aberration gives 
// 2*d = f1 + f2 and f1 - f2 = d, solving for f1 and f2
f1 = 3*d/2;    // Focal length of the first lens, cm
f2 = d/2;    // Focal length of the second lens, cm
printf("\nTo have no chromatic aberration and minimum spherical abberation, the doublet lens should be designed with the following parameters:\n");
printf(" d = %4.2f cm; f1 = %2d cm and f2 = %4.2f cm", d, f1, f2);

// Result 
// To have no chromatic aberration and minimum spherical abberation, the doublet lens should be designed with the following parameters:
//  d = 6.67 cm; f1 = 10 cm and f2 = 3.33 cm 