// Problem 3.1,Page no.54

clc;clear;
close;

P=40 //mm //Force applied to stretch a tape
L=30 //m //Length of steel tape
A=6*1 //mm //Cross section area
E=200*10**9*10**-6 //KN/m**2 //Modulus of Elasticity

//Calculations

sigma_L=(P*L*10**3)*(A*E)**-1 //mm 

//Result
printf("The Elongation of steel tape is %.1f mm",sigma_L)
