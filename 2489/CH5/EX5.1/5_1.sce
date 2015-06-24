clc
//Intitalisation of variables
clear
m1= 1.947 //gms
V= 10 //lit
T= 22 //C
p= 752 //mm of Hg
T1= 28 //C
W= 46 //gms
R= 0.082 //lit-atm mole^-1 K^-1
//CALCULATIONS
P= (m1*p/W)/((m1/W)+((p/760)*V/(R*(273+T))))
P1= (m1*p/W)/(((p/760)*V/(R*(273+T))))
P2= (m1/W)*R*(273+T)*760/V
//RESULTS
printf ('Vapour pressure of ethanol = %.1f mm',P)
printf ('\n Vapour pressure of ethanol = %.f mm',P1)
printf ('\n Vapour pressure of ethanol = %.f mm',P2)
