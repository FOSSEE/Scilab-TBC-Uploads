clc
//initialisation of variables
clear
h= 23070 //cal volt^-1 g equiv^-1
n= 2 //electrons
e= 1.005 //volts
T= 25 //C
e1= 1.015 //volts
//CALCULATIONS
dH= (-n*h*(e-((273.2+T)*(e-e1)/T)))/1000
//RESULTS
printf ('Heat change in the cell reaction = %.2f kcal',dH)
