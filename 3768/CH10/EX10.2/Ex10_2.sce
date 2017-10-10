//Example number 10.2, Page number 225

clc;clear;
close;

//Variable declaration
T=2.5;     //temperature(K)
Tc=3.5;   //critical temperature(K)
H0=3.2*10**3;   //critical magnetic field(A/m)
//Calculation
Hc=H0*(1-(T/Tc)**2);    //critical field(A/m)
//Result
printf("critical field is %.3e A/m",Hc)
