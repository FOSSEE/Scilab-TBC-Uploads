//Example number 1.4, Page number 1.36

clc;clear;close


//Variable declaration
lamda=5893*10**-10           //Angstroms to mts
x=4*10**-2 // unitless
Beta=1*10**-3 // unitless

//Calculation
t=(lamda*x)/(2*Beta)

//Result
printf("t=%0.3f micron",(t*10**6))
