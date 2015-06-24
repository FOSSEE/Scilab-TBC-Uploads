clc
//Intitalisation of variables
clear
h= -1.35 //kcal
e= 44.3 //kcal
n= 2
//CALCULATIONS
dH= -n*h
E= e-dH
//RESULTS
printf ('Enthalpy of reaction = %.1f kcal',dH)
printf ('\n Energy of activation = %.1f kcal',E)
