clc
//initialisation of variables
clear
I= 0.565 //amp
R= 15.43 //ohms
t= 185 //secs
Tr= 0.544 //C
//CALCULATIONS
Q1= I^2*R*t
Q2= I^2*R*t/(Tr*4.183)
//RESULTS
printf ('Heat capacity = %.1f calories',Q2)
 
