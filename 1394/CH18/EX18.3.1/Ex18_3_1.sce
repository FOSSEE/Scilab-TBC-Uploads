
clc
//initialization of variables
R = 0.082 // litre-atm/mol-K
T = 283 // Kelvin
V2 = 0.018 // litre/mol
//For first solution contents are sucrose and water
w1 = 0.01 // gm of sucrose
MW1 = 342 // MW of sucrose
w2 = 0.09 // gm of water
MW2 = 18 // MW of water
n1 = 1 // no of particles sucrose divides into in water
//Calculations
x1juice = (n1*w1/MW1)/((n1*w1/MW1)+(w2/MW2))// Mole fracion of sucrose
//For second solution , contents are NaCl and water
w1 = 35 // gm of NaCl
MW1 = 58.5 // MW of Nacl
w2 = 100 // gm of water
MW2 = 18 // MW of water
n1 = 2 // no of particles sucrose divides into in water
//Calculations
x1brine = (n1*w1/MW1)/((n1*w1/MW1)+(w2/MW2))// Mole fracion of sucrose
//Calculation of difference in Osmotic pressure
DeltaPi = (R*T/V2)*log((1-x1juice)/(1-x1brine))// atm
//Results
printf("The osmotic pressure difference is %.f atm",DeltaPi)
//answer wrong in textbook

