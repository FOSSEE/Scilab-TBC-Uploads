//Example number 10.5, Page number 225

clc;clear;
close;

//Variable declaration
T1=5;     //temperature(K)
T2=5.1;     //temperature(K)
M1=199.5;   //isotopic mass(amu)
//Calculation
M2=M1*(T1/T2)**2;    //isotopic mass(amu)
//Result
printf("isotopic mass is %.2f a.m.u.",M2)
