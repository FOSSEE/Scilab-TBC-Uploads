clc
//initialisation of variables
Cp= 2.7 //cal per mole per degree
CP1= 6.9 //cal per mole per degree
Cp2= 15.4 //cal per mole per degree
H= -20.24 //kcal
T= 200 //C
T1= 25 //C
//CALCULATIONS
H1= H+(Cp2-2*Cp-3*Cp1)*((T-T1)/1000)
//RESULTS
printf (' heat of formation= %.2f cal',H1)
