clc
//Intitalisation of variables
clear
R= 1.987 //cal
T= 25 //C
p= 23.76 //mm
//CALCULATIONS
dF= R*(273.2+T)*log(760/p)
//RESULTS
printf ('Free energy change = %.f cal mole^-1',dF+1)
