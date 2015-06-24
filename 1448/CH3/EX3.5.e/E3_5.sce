clc
//Initialization of variables
nCO2=6 //mol
nH2O=3 //mol
nO2=15/2 //mol
nC6H6=1 //mol
HC6H6=49 //kJ/mol
HH2O=-285.83
HO2=0
HCO2=-393.51 
//Calculations
H=nCO2*HCO2+nH2O*HH2O-nC6H6*HC6H6-nO2*HO2
//results
printf('Standard enthalpy of combustion of benzene is %d kJ/mol',H-1)
