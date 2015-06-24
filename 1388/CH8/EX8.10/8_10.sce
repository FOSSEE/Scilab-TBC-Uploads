clc
//initialisation of variables
N= 6*10^23 //molecules
R= 2.82 //A
e= 4.8*10^-10 //ev
n= 9
z= 1.748
//CALCULATIONS
U= (N*z*e^2*(1-(1/n)))*182.2/(R*10^-8*7.63*10^12)
//RESULTS
printf (' latice energy = %.1f kcal mole^-1',U)
