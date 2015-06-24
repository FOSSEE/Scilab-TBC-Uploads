
clc
//Initialization of variables
N1 = 1.6*10^-10 // mol/cm^2-sec
c1star = 0 // mol/cc
c1 = 2.7*10^-4/1000 // mol/cc
//Calculations
K = N1/(c1-c1star)// cm/sec
//Results
printf("The mass transfer co efficient is %.4f cm/sec",K)
