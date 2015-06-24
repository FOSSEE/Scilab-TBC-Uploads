clc 
//initialisation of variables
K2500= 3.6*10^-3
K2000= 4.08*10^-4
R= 1.987 //cal mole^-1 K^-1
T1= 2500 //K
T2= 2000 //K
//CALCULATIONS
dH= log10(K2500/K2000)*2.303*R*T1*T2/(T1-T2)
//RESULTS
printf ('enthaly change= %.f cal ',dH)
