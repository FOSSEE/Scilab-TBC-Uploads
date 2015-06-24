// Scilab Code Ex4.5: Page:194 (2011)
clc;clear;
f1 = 30;....// Focal length first convex lens, cm 
f2 = -50;....// Focal length of second convex lens, cm 
d = 20;....// Separation distance between lenses, cm  
F = f1*f2/(f1+f2-d);....// Equivalent focal length of a combination of the two lenses, cm
printf("\nThe equivalent focal length of the combination = %4.1f cm", F);

// Result
// The equivalent focal length of the combination = 37.5 cm 
