//Example number 10.3, Page number 225

clc;clear;
close;

//Variable declaration
Hc=5*10**3;    //critical magnetic field(A/m)
T=6;     //temperature(K)
H0=2*10**4;   //critical magnetic field(A/m)
//Calculation
Tc=T/sqrt(1-(Hc/H0));     //critical temperature(K)
//Result
printf("critical temperature is %.3f K",Tc)
//answer given in the book is wrong
