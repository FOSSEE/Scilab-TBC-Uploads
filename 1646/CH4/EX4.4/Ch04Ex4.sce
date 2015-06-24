// Scilab Code Ex4.4: Page:194 (2011) 
clc;clear;
P1 = 5;....// Power of first converging lens, diopter
P2 = 4;....// Power of second converging lens, diopter
d = 0.1;....// Separation distance between two lenses, cm
P = P1+P2-d*P1*P2;
f = 1/P*100;....// The corresponding value of the focal length of the lens combination, cm
printf("\nThe focal length of the combination of lenses of given powers = %5.2f cm", f);

// Result
// The focal length of the combination of lenses of given powers = 14.29 cm 
