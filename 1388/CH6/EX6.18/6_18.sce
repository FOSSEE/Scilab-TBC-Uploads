clc
//initialisation of variables
H= -57240 //cal
T= 2257 //C
Hh= -54.60 //cal
Ho= -38.56 //cal
HO= -57.08 //cal
//CALCULATIONS
H1= H-T*(2*Hh-2*Ho-HO)
//RESULTS
printf (' Enthalpy = %.1f cal ',H1+5)
