clc 
//initialisation of variables
AHcl= 426.1 //cm^2 equiv^-1 ohm^-1
ANaC2H3O2= 91 //cm^2 equiv^-1 ohm^-1
ANaCl= 126.5 //cm^2 equiv^-1 ohm^-1
//CALCULATIONS
AHC2H3O2= AHcl+ANaC2H3O2-ANaCl
//RESULTS
printf ('equivalent conductance of acetic acid= %.1f cm^2 equiv^-1 ohm^-1',AHC2H3O2)
