//Example number 1.2, Page number 10

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;      //charge(coulomb)
epsilon0=8.85*10**-12;   
r0=0.41*10**-3;    //equilibrium distance(m)
A=1.76;      //madelung constant
n=0.5;       //repulsive exponent value

//Calculation
Beta=72*%pi*epsilon0*r0**4/(A*e**2*(n-1));    //compressibility

//Result
printf( "compressibility =  %.4e",Beta)
//answer in the book is wrong
