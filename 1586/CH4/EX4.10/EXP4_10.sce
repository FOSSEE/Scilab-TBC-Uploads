clc;funcprot(0);//EXAMPLE 4.10
// Initialisation of Variables
g=16;.......// No. of grains per square inch in a photomicrograph
M=250;..........//Magnification in a photomicrograph
N=(M/g)*100;........//The number of grains per square   inch
n=(log10(100)/log10(2))+1;........//the ASTM grain size number
disp(n,"the ASTM grain size number:")
