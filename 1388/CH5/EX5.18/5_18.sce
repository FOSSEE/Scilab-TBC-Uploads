clc
//initialisation of variables
R= 0.08205 //cal/mol K
v1= 0.0180//cc
N= 0.9820
T= 273.2
//CALCULATIONS
P= -R*T*log(N)/v1
//RESULTS
printf (' osmotic pressure = %.1f atm',P)
