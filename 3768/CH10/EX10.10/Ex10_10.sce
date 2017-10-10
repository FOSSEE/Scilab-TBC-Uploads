//Example number 10.10, Page number 227

clc;clear;
close;

//Variable declaration
Hc=6*10**5;    //critical magnetic field(A/m)
Tc=8.7;     //critical temperature(K)
H0=3*10**6;   //critical magnetic field(A/m)
//Calculation
T=Tc*sqrt(1-(Hc/H0));     //maximum critical temperature(K)
//Result
printf("maximum critical temperature is %.3f K",T)
//answer given in the book is wrong
