//Example number 9.10, Page number 207

clc;clear;
close;

//Variable declaration
Eg=1.9224*10**-19;    //energy gap of semiconductor(J)
T1=600;    //temperature(K)
T2=300;    //temperature(K)
x=-1.666*10**-3;
KB=1.38*10**-23;   //boltzmann constant
//Calculation
T=(1/T1)-(1/T2);
r=exp(x*(-Eg/(2*KB)));     //ratio between conductivity
//Result
printf("ratio between conductivity is %.3e",r)
