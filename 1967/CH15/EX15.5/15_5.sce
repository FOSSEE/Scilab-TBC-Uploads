clc
//initialisation of variables
clear
e= 0.7865 //volt
emf= 0.8085 //emf
T= 500 //C
R= 1.98*10^-4 //cal mol6-1 deg^-1
n2= 0.5937
//CALCULATIONS
a2= 10^((e-emf)/(R*(273+T)))
r= a2/n2
//RESULTS
printf ('activity coefficient = %.2f ',r)
