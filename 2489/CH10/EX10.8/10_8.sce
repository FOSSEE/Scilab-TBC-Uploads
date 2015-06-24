clc
//Intitalisation of variables
clear
Kc= 1.08*10^-5 
n= 2 //moles
v= 0.45 //lit
n1= 0.5 //mole
//CALCULATIONS
y= (-Kc*v+sqrt(Kc^2*v^2+4*Kc*v*n1*n^2))/(2*n^2)
c= 2*y/v
//RESULTS
printf ('y = %.2e mole',y)
printf ('\n concentration of NO2 = %.2e mole per liter',c)
