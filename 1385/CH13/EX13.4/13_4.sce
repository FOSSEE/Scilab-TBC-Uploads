clc
//initialisation of variables
m= 14 //gms
M= 28 //gms
S= 6.94 //cal per mole
T= 127 //C
T1= 27 //C
S1= 4.94 //cal per mole
//CALCULATIONS
dS= (m/M)*S*log((273+T)/(273+T1))
dS1= (m/M)*S1*log((273+T)/(273+T1))
//RESULTS
printf (' Entropy change = %.2f E.U',dS-0.01)
printf (' \n Entropy change = %.2f E.U',dS1)
