//Example number 10.7, Page number 226

clc;clear;
close;

//Variable declaration
Tc1=4.185;     //critical temperature(K)
M1=199.5;   //isotopic mass(amu)
M2=203.4;   //isotopic mass(amu)
//Calculation
Tc2=Tc1*sqrt(M1/M2);      //critical temperature(K)
//Result
printf("critical temperature is %.4f K",Tc2)
