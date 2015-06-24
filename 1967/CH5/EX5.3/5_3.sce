clc
//initialisation of variables
clear
dH= -1228.2 //kcal
n1= 10
n2= 4
dH1= -94.05 //kcal
dH2= -68.32 //kcal
//CALCULATIONS
x= n1*dH1+n2*dH2-dH
//RESULTS
printf ('Heat of formation = %.1f kcal',x)
