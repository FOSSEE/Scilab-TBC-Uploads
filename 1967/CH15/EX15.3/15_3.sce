clc
//initialisation of variables
clear
R= 1.98*10^-4 //cal mole^-1 deg^-1
T= 20 //C
E= -0.11118 //volt
n2= 0.00326
n21= 0.0986
//CALCULATIONS
r= 10^((-E/(R*(273.16+T)))-log10(n21)+log10(n2))+n21
a2= r*n21
//RESULTS
printf ('a2/N2 = %.3f ',r)
printf ('\n a2 = %.4f ',a2)

