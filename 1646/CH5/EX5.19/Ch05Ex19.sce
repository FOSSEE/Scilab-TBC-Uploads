// Scilab Code Ex5.19: Page:306 (2011)
clc;clear;
D = 1.7;....// Distance between the slit and the screen, m
W = 2.5e-003;....// Given fringe width, m 
a = 8e-005;....// Width of the first slit, m
b = 4e-004;....// Width of the second slit, m
n = b;    //      
p = [1 2 3 4 5 6];
// In a double slit experiment Fraunhoffer diffraction pattern,the fringe width is given by W = lambda*D/n 
lambda = b*W/D;    // Wavelength of the light used, m
printf("\nThe wavelength of light = %4d angstrom", lambda/1e-010);
printf("\nThe missing orders are:\n");
for i = 1:1:6
s = [(a+b)/a]*p(i);
printf("\t%d", s);
end
printf("  etc.")
// Result
// The wavelength of light = 5882 angstrom
// The missing orders are:
// 	6	12	18	24	30	36  etc. 
 
