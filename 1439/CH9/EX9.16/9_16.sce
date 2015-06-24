clc 
//initialisation of variables
G0= 1161 //cal 
R= 1.987 //cal mole^-1 deg^-1
T= 25 //C
P= 1 //atm
P1= 10 //atm
//CALCULATIONS
dG= G0+R*(273+T)*2.303*log10(P^2/P1)
//RESULTS
printf ('dG= %.f cal ',dG)
