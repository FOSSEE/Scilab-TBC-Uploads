// Scilab Code Ex4.3: Page:193 (2011)
clc;clear;
f1 = 5;....// Focal length of thin convex lens, cm 
f2 = 3;....// Focal length of thin convex lens, cm 
d = 2;....// Separation between the lenses, cm
F = f1*f2/(f1+f2-d);....// Equivalent focal length of a combination of the two lenses, cm
printf("\nThe equivalent focal length of the combination of lenses = %3.1f cm", F) 

// Result
// The equivalent focal length of the combination of lenses = 2.5 cm 
