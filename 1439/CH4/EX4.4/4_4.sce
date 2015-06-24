clc 
//initialisation of variables
dH= -310.615 //kcal
HfCO2= -94.52 //kcal
HfH2O= -68.3174 //kcal
//CALCULATIONS
HfCH2= -dH+2*HfCO2+HfH2O
//RESULTS
printf ('Enthalpy of formation of acetylene= %.3f kcal mole^-1',HfCH2)
