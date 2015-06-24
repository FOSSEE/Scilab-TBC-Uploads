clc 
//initialisation of variables
R= 1.987 //cal/mole K
T= 100 //C
M1= 18.02 //gms
Hvap= 539.7 //cal g^-1
//CALCULATIONS
Kb= R*(273.1+T)^2*M1/(1000*M1*Hvap)
//RESULTS
printf ('molal boiling point constant= %.3f deg molal^-1',Kb)
