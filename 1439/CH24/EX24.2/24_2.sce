clc
//initialisation of variables
r= 1.07*10^-4 //ml g^-1 day^-1
N1= 3.4*10^10 //alpha particles g^-1 sec^-1
//CALCULATIONS
N= 22400*N1*24*60*60/r
//RESULTS
printf ('avagadro number = %.2e ',N)
