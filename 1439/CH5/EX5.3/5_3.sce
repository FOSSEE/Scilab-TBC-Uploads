clc 
//initialisation of variables
Cp= 6.09 //cal deg^-1 mole^-1
T1= 30 //C
T2= 0 //C
//CALCULATIONS
dS= 2.303*Cp*log10((273+T1)/(273+T2))
//RESULTS
printf ('increase in entropy= %.3f cal deg^-1 mole^-1',dS)
