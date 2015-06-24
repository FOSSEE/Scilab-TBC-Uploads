clc 
//initialisation of variables
Kc= 2.7*10^2
R= 1.987 //cal mole^-1 deg^-1
T= 43.9 //c
//CALCULATIONS
dG= -R*(273.1+T)*2.303*log10(Kc)
//RESULTS
printf ('dG= %.1f cal ',dG)
