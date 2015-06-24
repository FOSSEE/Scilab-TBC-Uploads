clc
//initialisation of variables
m= 14 //gms
M= 28 //gms
R= 1.99 // cal per mole per degree
V= 30 //lit
v1= 10 //lit
//CALCULATIONS
S1= (m/M)*R*2.303*log10(V/V1)
//RESULTS
printf (' Entropy change = %.2f E.U',S1)
