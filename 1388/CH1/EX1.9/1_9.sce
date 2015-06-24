clc
//initialisation of variables
P= 1 //at,
T= 300 //K
R= 82.05 //atm l/mol K
R1= 8.314
s= 4*10^-8
s1= 2*10^-8
m= 4 //gm
m1= 28 //gm
//CALCULATIONS
N= P*6.02*10^23/(R*T)
n= 2*s1^2*N^2*sqrt(%pi*R1*10^7*T/m)
n1= 2*s^2*N^2*sqrt(%pi*R1*10^7*T/m1)
//RESULTS
printf (' no of collisisons = %.e collisions sec^-1 mol^-1',n)
printf (' \n no of collisisons = %.2e collisions sec^-1 mol^-1',n1)
