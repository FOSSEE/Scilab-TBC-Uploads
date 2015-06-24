clc
//initialisation of variables
T= 298 //K
R= 1.987 //atmcc/mol K
x= 128.16
y= 0.9241
H= -8739 //cal
n1= 10 //mol
n2= 12 //mol
//CALCULATIONS
E= (x/y)*H
H= (E+R*T*(n1-n2))/1000
//RESULTS
printf (' Enthalpy = %.f kcal mole^-1 ',H)
