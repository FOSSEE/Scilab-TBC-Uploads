clc
//initialisation of variables
T= 273.2 //K
P= 0.0060 //atm
P1= 1 //atm
H= 3290 //cal
dV= -0.0907 //cc
//CALCULATIONS
dT= T*dV*(P-P1)/H
//RESULTS
printf (' triple point = %.4f C',dT) 
