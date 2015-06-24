clc
//initialisation of variables
T= 298.16 //K
M= 4.003 //gm
S= 2.3151 //cal mol^-1 deg^-1
R= 1.987 //cal/molK
//CALCULATIONS
S1= 2.5*R*log(T)+1.5*R*log(M)-S
//RESULTS
printf (' Absolute Entropy= %.3f cal mol^-1 deg^-1',S1)
