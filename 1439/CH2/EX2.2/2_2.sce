clc 
//initialisation of variables
G= 0.110 //gram
R= 0.08205 //l-atm /mole K
T= 26.1 //C
P= 743 //mm
V= 0.0270 //l
//CALCULATIONS
M= G*R*(273.15+T)*760/(P*V)
//RESULTS
printf ('molecular weight of hydrocarbon= %.f g mole^-1',M)
