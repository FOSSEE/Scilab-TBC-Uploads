clc 
//initialisation of variables
dH= -687.982 //kcal
HCO2= -94.0518 //kcal 
HH2O= -68.3174 //kcal
//CALCULATIONS
H= -dH+4*HCO2+5*HH2O
//RESULTSn
printf ('Enthalpy of formation of n butane= %.3f kcal mole^-1',H)
