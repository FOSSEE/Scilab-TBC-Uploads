clc
//Intitalisation of variables
clear
T= 45 //C
E= 24.7 //kcal
R= 2 //cal 
//CALCULATIONS
k= 2*10^10*(273+T)*%e^-(E*1000/(R*(273+T)))
//RESULTS
printf ('Specific rate of reaction = %.e sec^-1',k)
