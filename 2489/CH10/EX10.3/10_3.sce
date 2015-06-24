clc
//Intitalisation of variables
clear
kc= 0.719
T= 1000 //K
n= 1 //mole
//CALCULATIONS
r= sqrt(kc)
p= r*100/(2*r+2*n)
p1= 50-p
//RESULTS
printf ('CO precentage = %.2f per cent ',p)
printf ('\n H2O precentage = %.2f per cent ',p)
printf ('\n CO2 precentage = %.2f per cent ',p1)
printf ('\n HH2 precentage = %.2f per cent ',p1)
