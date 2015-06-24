clc
//initialisation of variables
H= 9720 //cal mole^-1
P= 1 //atm
R= 1.987 //cal /mole K
T= 100 //C
T1= 95 //C
//CALCULATIONS
r= P*H/(R*(273+T)^2)
dP= r*(T1-T)
P1= (P+dP)*626/0.824
//RESULTS
printf (' vapour pressure= %.f atm',P1)
