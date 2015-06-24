clc 
//initialisation of variables
G= 20 //gram
R= 0.08205 //l-atm /mole K
T= 30 //C
P= 740 //mm
M= 44.01 //l
//CALCULATIONS
V= G*R*(273.15+T)*760/(P*M)
//RESULTS
printf ('volume occupied by 20 grmas of carbon dioxide= %.1f litre',V)
