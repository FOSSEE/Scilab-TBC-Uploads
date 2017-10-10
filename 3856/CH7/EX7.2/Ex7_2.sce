//Calculate the Composition of the Vapor in Equilibrium of Liquid A and Liquid B

//Example 7.2

clc;

clear;

XA=36/100;  //Number of mole of Liquid A

XB=1-(36/100);  //Number of mole of liquid B

PdegA=66;  //Vapor pressure of pure A in torr

PdegB=88;  //Vapor pressure of pure B in torr

PA=XA*PdegA;  //Vapor pressure of A in solution in torr

PB=XB*PdegB;  //Vapor pressure of B in solution in torr

PT=PA+PB;  //Total Vapor pressure of solution in torr

XAv=PA/PT;  //Composition of Vapor of A in solution 

printf("Composition of Vapor of A = %.2f ",XAv);

XBv=PB/PT;  //Composition of Vapor B in solution

printf("\nComposition of Vapor of B = %.2f",XBv);
