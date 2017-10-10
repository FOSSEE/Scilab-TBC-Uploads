//Example number 7.2, Page number 146

clc;clear;
close;

//Variable declaration
A=100*10**-4;      //area(m**2)
epsilon0=8.85*10**-12;    
d=1*10**-2;     //separation(m)
V=100;     //potential(V)
//Calculation
C=A*epsilon0/d*10**12;     //capacitance(PF)
Q=(C/10**12)*V;         //charge on plates(C)
//Result
printf("capacitance is %.2f pF",C)
printf("\n charge on plates is %.2e C",Q)
