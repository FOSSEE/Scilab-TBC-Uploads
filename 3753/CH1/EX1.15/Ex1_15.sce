//Example number 1.15, Page number 1.39

clc;clear;close


//Variable declaration
N=20// unitless
lamda=5000*10**-10       //Angstroms to meters
t=2.5*10**-5 // in m

//Calculation
mu_1=(N*lamda)/t// unitless
mu=1+(mu_1)// unitless

//Result
printf("mu-1=%.1f",mu_1)
printf("\nRefractive index, mu=%1f",mu)
