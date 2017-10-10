//Example number 6.1, Page number 116

clc;clear;
close;

//Variable declaration
rho=1.54*10**-8;    //resistivity(ohm m)
n=5.8*10**28;       //conduction electrons(per m**3)
e=1.6*10**-19;      //charge(c)
m=9.1*10**-31;      //mass(kg)
//Calculation
towr=m/(n*e**2*rho);     //relaxation time(sec)
//Result
printf("relaxation time is %.4e sec",towr)
