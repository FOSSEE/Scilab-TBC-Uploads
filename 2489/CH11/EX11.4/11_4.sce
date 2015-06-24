clc
//Intitalisation of variables
clear
dH= 12300 //cal
T= 25 //C
dS= -60.1 //cal deg^-1 mole^-1
//CALCULATIONS
dF= dH-dS*(273+T)
//RESULTS
printf ('Standard free energy of formation = %.f cal mole^-1 ',dF-10)
