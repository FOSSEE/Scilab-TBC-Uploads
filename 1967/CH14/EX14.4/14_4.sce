clc
//initialisation of variables
clear
T1= 20 //C
T2= 80 //C
H1= 4540 //cal mole^-1
//CALCULATIONS
n= 10^(H1*(-T2+T1)/(4.576*(273+T1)*(273+T2)))
//RESULTS
printf ('ideal solubility of napthalene = %.3f ',n)
