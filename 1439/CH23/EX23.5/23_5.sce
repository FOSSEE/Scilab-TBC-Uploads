clc
//initialisation of variables
h= 6.625*10^-27 //ergs/mole
f= 2.65*10^-5 //sec^-1
c= 3*10^10 //cm/sec
t= 2
N= 6*10^23 //molecules
M= 382 //gms
E1= 750 //ergs
//CALCULATIONS
E= h*c/f
n1= E1/E
m= n1/(t*7)
G= m*M/N
//RESULTS
printf ('number of quanta = %.2e ',n1)
printf ('\n number of quanta = %.2e molecules',m)
printf ('\n grams per day= %.2e gms',G)
