clc 
//initialisation of variables
s= 3.61*10^-8 //cm
v= 4.44*10^4 //cm/sec
n= 2.46*10^19 //molecules
N= 6.02*10^23 //molecules
Z1= 13.6*10^16 //collisions cm^-3 sec^-1
N= 6*10^23 //molecules
//CALCULATIONS
Z= sqrt(2)*%pi*s^2*v*n^2*10^3/(2*N)
Z2= Z1*10^3/N
//RESULTS
printf ('Z= %.2e moles of collisons litre^-1 sec^-1',Z)
printf ('\n Z= %.2e moles of collisons litre^-1 sec^-1',Z2)
