
clc
//initialisation of variables
T=298//K
T1=537//R
P=2000//K
g=-98345//Btu/lb mole
gH2=-122483 //Btu/lb mole
gO2=-179373//Btu/lb mole
gH2O=-270494 //Btu/lb mole
//CALCULATIONS
DeltG=(gH2)+1/2*(gO2)-(gH2O)//Btu
//RESULTS
printf('The value of =% f Btu',DeltG)
