clc
//initialisation of variables
C= 0.1 //M
V= 0.3524 //volt
V1= 0.2224 //volt
V2= 0.1183 //volt
//CLACULATIONS
r= 10^((-V+V1+V2)/V2)
//RESULTS
printf ('mean ionic activity = %.3f ',r)
