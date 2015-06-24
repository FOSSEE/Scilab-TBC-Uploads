clc
//initialisation of variables
clear
Sco= 47.3 //cal deg^-1 
Sh2= 31.21 //cal deg^-1
Sc= 1.36 //cal deg^-1
Sho = 16.75 //cal deg^-1
//CALCULATIONS
S= Sco+Sh2-Sc-Sho
//RESULTS
printf ('Standard entropy = %.2f cal deg^-1 mole^-1',S)
