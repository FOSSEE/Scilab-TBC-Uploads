clc 
//initialisation of variables
n= 2 //moles
p= 1 //atm
p1= 0.1 //atm
T= 25 //C
R= 1.987 //cal mole^-1 K^-1
//CALCULATIONS
dG= n*R*2.303*log10(p1/p)*(273+T)
//RESULTS
printf ('change in Gibbs free energy= %.f cal ',dG)
