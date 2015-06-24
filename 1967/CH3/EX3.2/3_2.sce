clc
//initialisation of variables
clear
R= 8.314*10^7 //J/mol K
T= 298.2 //K
p1= 1 //atm
p2= 5 //atm
//CALCULATIONS
W= R*T*log(p1/p2)
//RESULTS
printf ('Work of expansion = %.2e ergs mole^-1 ',W)
