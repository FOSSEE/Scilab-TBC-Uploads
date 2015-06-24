clc
//Initialization of variables
alpha=4.92*10^-5 //deg^-1
beta=7.85*10^-7 //atm^-1
d=8.93 //g/cm^3
T=298.15 //K
//calculations
dC=63.54*T*alpha^2 *1.987/(d*beta*82.06)
//results
printf("Change in c values = %.3f cal/deg mol",dC)
