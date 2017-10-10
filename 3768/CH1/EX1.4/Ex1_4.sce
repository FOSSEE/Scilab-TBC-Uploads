//Example number 1.4, Page number 11
clc;clear;
close;

//Variable declaration    
N=6.02*10**26;           //Avagadro Number
e=1.6*10**-19;      //charge(coulomb)
epsilon0=8.85*10**-12;   
r0=0.324*10**-9;    //equilibrium distance(m)
A=1.75;      //madelung constant
n=8.5;       //repulsive exponent value

//Calculations
U0=(A*e/(4*%pi*epsilon0*r0))*(1-1/n);     
U=U0*N*e/10**3;      //binding energy(kJ/kmol)

//Result
printf( "binding energy is %.1e kJ/mol",U)
//answer in the book is wrong
