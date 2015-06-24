clc 
//initialisation of variables
SH2O= 45.106 //cal deg^-1 mole^-1
SH2= 31.211 //cal deg^-1 mole^-1
SO2= 49.003 //cal deg^-1 mole^-1
//CALCULATIONS
dS= SH2O-SH2-0.5*SO2
//RESULTS
printf ('change in entropy= %.3f cal deg^-1 mole^-1',dS)
