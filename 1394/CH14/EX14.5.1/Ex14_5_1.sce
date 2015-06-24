
clc
//initialization of variables
F = 5 //kg feed
S = 2 // kg solvent
E = F-S // kg extract
W = 1 // kg waste
EG = 80 // ppm
y0 = (100-99)/100 // mole fraction of gold left
y1 = y0*EG*W/S // concentration in raffinate
//Calculations
xN = (EG*W - y1*S)/E // solvent concentration
xNminus1 = ((xN*(E+S)) - EG*W)/F//feed stage balance
N = 1 + ((log((xN-xNminus1)/(y1))/log(F/S)))//numner of stages including feed stage
//Results
printf("The number of stages including feed stage is %.f",N)
