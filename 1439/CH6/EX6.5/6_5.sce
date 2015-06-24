clc 
//initialisation of variables
H= 342 //cal mole^-1 g^-1
G= 21 //gms
T= 60 //C
R= 1.987 //cal / mol K
//CALCULATIONS
Hvap= G*H
P1= 1/(%e^(Hvap*9/(2.303*R*(273.1+T)*H)))
//RESULTS
printf ('molar heat of vapourization = %.f cal mole^-1',Hvap)

