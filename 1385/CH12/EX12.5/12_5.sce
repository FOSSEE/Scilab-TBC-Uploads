clc
//initialisation of variables
T= 90 //C
T1= 25 //C
Cp= 6.9 //cal per mole per degree
CP1= 7.05 //cal per mole per degree
Cp2= 18 //cal per mole per degree
H= -68.37 //kcal
//CALCULATIONS
H1= H+(Cp2-Cp-0.5*Cp1)*((T-T1)/1000)
//RESULTS
printf (' heat of formation= %.2f cal',H1)
