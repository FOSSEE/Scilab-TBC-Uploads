clc 
//initialisation of variables
T= 25 //C
R= 1.987 //cal mole^-1 K^-1
n= 2
dH= -21.840 //cal mole^-1
HHCl= -37.73 //cal mole^-1
HH2= -24.44 //cal mole^-1
HCl= -45.95 //cal mole^-1
//CALCULATIONS
K= 10^((-1/(2.303*R))*((dH*n/(273.15+T))+n*HHCl-HH2-HCl))
//RESULTS
printf ('equilibrium constant= %.1e  ',K)


//ANSWER IN THE TEXTBOOK IS WRONG
