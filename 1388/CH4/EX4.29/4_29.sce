clc
//initialisation of variables
G= 145 //cal
R= 1.987 //cal/mole K
T= 95 //C
//CALCULATIONS
P= 10^(-G/(2.303*R*(273+T)))*(624/0.820)
//RESULTS
printf (' vapour pressure= %.f atm',P)
