clc
//Intitalisation of variables
clear
T= 18 //C
n1= 7.5 
n2= 3
n3= 6
R= 2*10^-3 //kcal
dH= -783.4 //kcal
//CALCULATIONS
dE= dH+R*(273+T)*(n2+n3-n1)
//RESULTS
printf ('Heat of the reaction = %.1f kcal',dE)
