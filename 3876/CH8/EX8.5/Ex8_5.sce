//Chapter 8 Chemical Equlibrium

clc;
clear;

//Initialisation of Variables
T= 65 //C
R= 1.98 //cal/mol K
kp= 2.8
kp1= 0.141
T1= 25 //C

//CALCULATIONS
H= log10(kp/kp1)*2.303*R*(273+T1)*(273+T)/(T-T1)
H= H+62 

//RESULTS
mprintf("Average Heat of reaction= %.2f cal",H)
