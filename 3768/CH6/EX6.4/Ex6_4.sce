//Example number 6.4, Page number 117

clc;clear;
close;

//Variable declaration
PE=1/100;     //probability
E_EF=0.5;     //energy difference
//Calculation
x=log((1/PE)-1);
T=E_EF/x;     //temperature(K)
//Result
printf("temperature is %.4f K",T)
//answer given in the book is wrong
