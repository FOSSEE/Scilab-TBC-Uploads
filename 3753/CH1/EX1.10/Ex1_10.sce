//Example number 1.10, Page number 1.38

clc;clear;close


//Variable declaration
lamda=5893; // in micron
n=3 // unitless
d_lamda=6 // in micron

//Calculation
N=(lamda)/(n*d_lamda)  // number of rulings

//Result
printf("N = %0.1f",N)
printf("\nThe number of rulings needed is 328. This is the minimum requirement.")
