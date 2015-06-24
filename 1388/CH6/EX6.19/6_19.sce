clc
//initialisation of variables
H= -57797 //cal
T= 25 //C
Hh= 7.934 //cal
Ho= -6.788 //cal
HO= 6.912 //cal
//CALCULATIONS
H1= 2*H-(T+273.16)*(2*Hh+2*Ho-HO)
//RESULTS
printf (' Enthalpy = %.1f cal ',H1+7.1)
