// Scilab Code Ex4.13 Page-200  
clc;clear;
F = 50;....// Equivalent focal length of combination of two lenses, cm
//d = f1+f2/2, condition for no chromatic aberration....(1)
//d = f2-f1, condition for minimum spherical aberration....(2)
// From (1) and (2), f1 = 3*d/2, f2 = d/2
// As 1/F = 1/f1 + 1/f2 - d/(f1*f2), solving for d
d = 4/3*50;    // Distance of separation betwen two lenses, cm
f1 = 3*d/2, f2 = d/2;
printf("\nf1 = %3d cm, f2 = %5.2f cm", ceil(f1), f2);

// Result
// f1 = 100 cm, f2 = 33.33 cm 
