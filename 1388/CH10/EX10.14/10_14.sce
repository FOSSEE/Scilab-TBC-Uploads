  clc
//initialisation of variables
R= 1.987 //atm lit/mol K
T= 573.2 //K
T1= 594.6 //K
k= 3.95*10^-6 //mol^-1 sec^-1
k1= 1.07*10^-6 //mol^-1 sec^-1
//CALCULATIONS
H= R*T*T1*2.303*log10((k/k1))/(T1-T)
//RESULTS
printf (' activation energy= %.f calmol^-1',H-39)
