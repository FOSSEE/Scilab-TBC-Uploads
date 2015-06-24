clc
//initialisation of variables
kf= 1.86
dT= 0.402 //K
T= 310 //K
R= 0.08205 //cal/mol K
//CALCULATIONS
P= dT*T*R/kf
//RESULTS
printf (' osmotic pressure = %.2f atm',P)
