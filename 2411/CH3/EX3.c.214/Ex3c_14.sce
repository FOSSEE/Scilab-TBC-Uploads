// Scilab Code Ex3c.14: Page-188 (2008)
clc; clear;
D4 = 0.4;    // Diameter of 4th ring, cm
D12 = 0.7;    // Diameter of 12th ring, cm
m = 12-4;    // Difference between (m+n)th and nth rings
lambda_R = (D12^2 - D4^2)/(4*m);    // Wavelength-Radius product, Sq.cm
D20 = sqrt(80*lambda_R);    // Diameter of the 20th dark ring, cm
printf("\nThe diameter of the 20th dark ring = %5.3f cm", D20);

// Result
// The diameter of the 20th dark ring = 0.908 cm 