// Scilab code Exa15.7 : : Page-655 (2011)
clc; clear;
B_sqr = 65;        // Geometrical buckling
a = sqrt(3*%pi^2/B_sqr)*100;    // Side of the cubical reactor, centi metre
R = round(%pi/sqrt(B_sqr)*100); // Radius of the cubical reactor,centi metre
printf("\nThe side of the cubical reactor = %4.1f cm\nThe critical radius of the reactor = %d cm", a, R);

// Result
// The side of the cubical reactor = 67.5 cm
// The critical radius of the reactor = 39 cm 