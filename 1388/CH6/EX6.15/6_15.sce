clc
//initialisation of variables
G0 = 0 //cal
G= 13200 //cal
T1= 298.2
H1= 23100 //cal
//CALCULATIONS
T= 1/((H1/T1)-(G/T1)-(G0/T1))
//RESULTS
printf (' Temperature = %.3f K ',T)
