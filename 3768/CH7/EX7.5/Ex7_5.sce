//Example number 7.5, Page number 147

clc;clear;
close;

//Variable declaration
A=650*10**-4;      //area(m**2)
epsilon0=8.85*10**-12;    
d=4*10**-2;     //seperation(m)
Q=2*10**-10;    //charge(C)
epsilonr=3.5;   //dielectric constant
//Calculation
C=A*epsilon0/d;    
V=Q/C;    //voltage(V)
//Result
printf("voltage is %.1f V",V)
