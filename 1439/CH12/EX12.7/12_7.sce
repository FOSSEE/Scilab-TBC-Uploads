clc 
//initialisation of variables
T= 393.7 //C
k= 2.6*10^-4 //lit mol^-1 sec^-1
R= 1.987 //cal mole^-1 K^-1
E= 45.6 //kcal mole^-1
wl= 3.5 //A
N= 6*10^23 //molecules
R1= 8.31*10 //ergs mole^-1 K^-1
M= 127.9 //g mole^-1
//CALCULATIONS
k= 2*10^2*N*sqrt(%pi*R1*(273.1+T)/M)*(wl*10^-8)^2*%e^(-E*10^3/(R*(273.1+T)))
//RESULTS
printf ('second order rate for this constant= %.1e lit mol^-1 sec^-1',k)
