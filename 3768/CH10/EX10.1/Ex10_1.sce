//Example number 10.1, Page number 224

clc;clear;
close;

//Variable declaration
T=5;     //temperature(K)
Tc=7.2;   //critical temperature(K)
H0=6.5*10**3;   //critical magnetic field(A/m)
//Calculation
Hc=H0*(1-(T/Tc)**2);    //critical field(A/m)
//Result
printf("critical field is %.3e A/m",Hc)
