clc
//initialisation of variables
clear
p= 1.013*10^6 //dynecm^2
T= 273.16 //K
V= 773.4  //cc
n= 0.0687 //cal
//CALCCULATIONS
W= p*V/T
k= W/n
//RESULTS
printf ('Work of expansion = %.2e ergs',W)
printf ('\n 1 cal = %.2e ergs',k)
