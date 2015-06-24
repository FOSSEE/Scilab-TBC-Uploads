clc
//initialisation of variables
Q= 52 //gpm
v= 3.75 //in^3
N= 3300 //rpm
//CALCULATIONS
ev= 231*Q*100/(v*N)
//RESULTS
printf ('volumetric efficiency = %.2f percent',ev)
