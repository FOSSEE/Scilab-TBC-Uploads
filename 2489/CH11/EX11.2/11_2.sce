clc
//Intitalisation of variables
clear
T= 500 //C
Kp= 1.43*10^-5 //atm
R= 1.987 //cal
//CALCULATIONS
dF= -2.303*R*(273+T)*log10(Kp)
//RESULTS
printf ('dF = %.f cal ',dF+3)
