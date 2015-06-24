clc
//Intitalisation of variables
clear
R= 8.314 //J/mole K
n= 1 //mole
v1= 10 //lit
v2= 20 //lit
T= 25 //C
//CALCULATIONS
W= R*10^7*(273.2+T)*log(v2/v1)
//RESULTS
printf ('Maximum work done = %.3e ergs mole^-1',W)
