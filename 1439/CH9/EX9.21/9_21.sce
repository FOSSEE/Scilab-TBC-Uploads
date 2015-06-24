clc 
//initialisation of variables
R= 1.987 //cal mole^-1 K^-1
T= 2000 //K
dH= 117172 //cal mole^-1
H= -43 //cal mole^-1
n= 2
H1= -56.12 //cal mole^-1
//CALCULATIONS
K= 10^(-(1/(2.303*R))*((dH/T)+n*H-H1))
//RESULTS
printf ('equilibrium constant= %.1e  ',K)
