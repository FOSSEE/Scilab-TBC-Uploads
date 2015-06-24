clc
//Intitalisation of variables
clear
dH= -327 //kcal
n1= 2 //moles
n2= 3 //moles
hf= 68.4 //kcal
hf1= 94 //kcal
//CALCULATIONS
x= -n1*hf1-n2*hf-dH
//RESULTS
printf ('Heat of the formation = %.1f kcal',x)
