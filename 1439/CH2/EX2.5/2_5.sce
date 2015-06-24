clc 
//initialisation of variables
T= -88 //C
Tc= 154.4 //K
Pc= 49.7 //atm
P= 44.7 //atm
R= 0.08205 //atm m^3 mole^-1 K^-1
r= 0.8
//CALCULATIONS
V= r*R*(273.15+T)/P
//RESULTS
printf ('volume pccupied by mole of oxygen= %.3f litre mole^-1',V)
