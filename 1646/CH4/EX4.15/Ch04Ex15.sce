// Scilab Code Ex4.15: Page-202  (2011)
clc;clear;
F = 10;....// Equivalent focal length of a combination of two lenses, cm
d = 2;....// Separation distance between two lenses, cm
// As d = f1-f2, condition for minimum spherical aberration => f1 = d+f2
// and F = f1*f2/(f1+f2-d), so solving for f2
f2 = 2*F-d;    // Focal length of second lens, cm
f1 = d+f2;    // Focal length of first lens, cm
printf("\nf1 = %2d cm, f2 = %2d cm", f1, f2);

// Result
// f1 = 20 cm, f2 = 18 cm 
