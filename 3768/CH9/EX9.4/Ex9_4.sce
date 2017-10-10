//Example number 9.4, Page number 204

clc;clear;
close;

//Variable declaration
RH=3.66*10**-4;     //hall coefficient(m**3/c)
rho=8.93*10**-3;    //resistivity(m)
e=1.6*10**-19;     //charge(c)
//Calculation
mew=RH/rho;        //mobility(m**2/Vs)
n=1/(RH*e);      //density of atoms(per m**3)
//Result
printf("mobility is %.5f m^2/Vs",mew)
printf("\n density of atoms is %.1e per m^3",n)

//answer in the book varies due to rounding off errors
