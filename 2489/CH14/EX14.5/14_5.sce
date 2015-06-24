clc
//Intitalisation of variables
clear
e= 0.761 //volt
e1= -0.34 //volt
k= 0.02958 //volt
//CALCULATIONS
r= 10^((e-e1)/k)
//RESULTS
printf ('K for the reaction = %.1e  ',r) 
