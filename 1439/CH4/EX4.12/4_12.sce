clc 
//initialisation of variables
dH273= -79.7 //cal g^-1
T1= 263 //K
T2= 273 //K
dCp= -0.51 //cal mole^-1 deg^-1
//CALCULATIONS
H263= dH273+dCp*(T1-T2)
//RESULTS
printf ('H263= %.1f cal g^-1',H263)
