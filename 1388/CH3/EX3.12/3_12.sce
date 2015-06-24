clc
//initialisation of variables
P= 100 //atm
P1= 1 //atm
R= 1.99 //cal/mol^-1 K^-1
k= 0.3 //atm^-1
E= 1600 //cal
T= -183 //C
T1= 0 //C
//CALCULATIONS
X= (k*3.5*R*(P-P1))/(3.5*R*(T1-T)+E)
//RESULTS
printf (' fraction of liquid = %.3f  ',X)
