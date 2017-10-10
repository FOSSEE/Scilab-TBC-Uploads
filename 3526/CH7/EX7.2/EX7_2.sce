clc;funcprot(0);//EXAMPLE 7.2
//page 183
// Initialisation of Variables
T=60000;........//Tensile strength Of Sialon (acronym   for silicon aluminum oxynitride) in psi
sigma=500;.....//The stress at which the part unexpectedly fails in psi
a=0.01;.........//Depth of thin crack in in
//CALCULATIONS
r=a/(T/(2*sigma))^2;.....//The radius of the crack tip  in in
disp(r*2.54*10^8,"The radius of the crack tip in Angstroms")
