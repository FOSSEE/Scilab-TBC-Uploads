clc
//Intitalisation of variables
clear
T= 556 //K
E= 44300 //cal
R= 2 //cal /mole K
//CALCULATIONS
k= 10^8*T*%e^(-E/(R*T))
//RESULTS
printf ('Specific rate of reaction = %.1e litre mole^-1 sec^-1',k)
