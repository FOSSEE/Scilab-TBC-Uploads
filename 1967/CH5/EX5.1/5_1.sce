clc
//initialisation of variables
clear
Q1= -1227 //kcal
R= 2*10^-3 //kcal
T= 25 //C
dn= -2
//CALCULATIONS
Qp= Q1+R*(273+T)*dn
//RESULTS
printf ('Heat of reaction = %.1f kcal',Qp)
