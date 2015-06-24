clc 
//initialisation of variables
R= 1.987 //cal mole^-1 K^-1
T= -10 //C
P1= 2.149 //mm
P2= 1.950 //mm
//CALCULATIONS
dG= R*2.303*(273+T)*log10(P2/P1)
//RESULTS
printf ('change in Gibbs free energy= %.f cal mole^-1',dG)
