// Scilab Code Ex4.19: Page-204 (2011)
clc;clear;
f = 10;....// Given focal length of each lens, cm
f1 = f;    // Focal length of first lens, cm 
f2 = f;    // Focal length of second lens, cm
d = 2/3*f;  // Separation distance between two lenses, cm
F = f1*f2/(f1+f2-d);    // Equivalent focal length of Ramsden eyepiece, cm
printf("\nThe equivalent focal length of the field lenses is = %3.1f cm", F);

// Result
// The equivalent focal length of the field lenses is = 7.5 cm 
