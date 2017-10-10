//Example number 6.3, Page number 117

clc;clear;
close;

//Variable declaration
rho=1.43*10**-8;    //resistivity(ohm m)
n=6.5*10**28;       //conduction electrons(per m**3)
e=1.6*10**-19;      //charge(c)
m=9.1*10**-34;      //mass(kg)
//Calculation
towr=m/(n*e**2*rho);     //relaxation time(sec)
//Result
printf("relaxation time is %.3e sec",towr)
//answer in the book varies due to rounding off errors
