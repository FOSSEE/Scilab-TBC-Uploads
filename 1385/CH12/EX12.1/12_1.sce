clc
//initialisation of variables
H= -771400 //cal
n= 7 //moles
n1= 7.5 //moles
T= 25 //C
R= 2 //cal mole per degree
//CALCULATIONS
E= H-(n-n1)*R*(273+T)
//RESULTS
printf (' difference between the heat of combustion = %.f cal',E)
