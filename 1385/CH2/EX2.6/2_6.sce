clc
//initialisation of variables
P= 23.8 //mm
V= 0.5 //lit
R= 0.0821 //lit atm mole^-1
T= 25 //C
//CALCULATIONS
P1= 760-P
n= P1*V/(760*R*(273+T))
V1= V*1000*P1*273/(760*(T+273))
//RESULTS
printf (' Volume of oxygen = %.f ml',V1)
