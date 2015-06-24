clc 
//initialisation of variables
pN2O4= 1 //atm
pNO2= 0.141 //atm
R= 1.987 //cal mole^-1 deg^-1
T= 25 //C
//CALCULATIONS
dG= -R*2.303*(273.1+T)*log10(pN2O4/pNO2)
//RESULTS
printf ('dG= %.f cal ',dG)
