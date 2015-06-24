clc
//initialisation of variables
H= 21600 //cal
S= 50.339 //cal
S1= 49.003 //cal
S2= 45.767 //cal
T= 298.2 //K
//CALCULATIONS
H1= 2*H
S1= 2*S-S1-S2
G= H1-T*S1
Gj= G/(2*1000)
//RESULTS
printf (' free energy of formation = %.3f kcal  ',Gj)
