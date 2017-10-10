clc
clear
//initialisation of variables
H= 1436.3 //cal mole^-1
d= 0.9999 //g ml^-1
d1= 0.9168 //g ml^-1
P= 1 //atm
m= 18.02 //gm
R= 1.987 //cal/mole K
T= 2 //C
//CALCULATIONS
V= (P/d)-(P/d1)
H1= H*82.05/(m*R) 
P1= H1*(-T)/(273*V)
//RESULTS
printf (' pressure required to decrease= %.f atm',P1)