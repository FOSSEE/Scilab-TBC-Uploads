//Example number 6.8, Page number 119

clc;clear;
close;

//Variable declaration
rho=10**4;      //density of silver(kg/m**3)
N=6.02*10**26;    //avagadro number
e=1.6*10**-19;      //charge(c)
m=9.1*10**-31;      //mass(kg)
MA=107.9;     //atomic weight(kg)
sigma=7*10**7;    //conductivity(per ohm m)
//Calculation
n=rho*N/MA;       //density of electrons(per m**3)
mew=sigma/(n*e*10**2);    //mobility of electrons(m**2/Vs)
tow=sigma*m*10**15/(n*e**2);    //collision time(n sec)
//Result
printf("density of electrons is %.1e m^3",n)
printf("\n mobility of electrons is %.4e m^2/Vs",mew)
printf("\n collision time is %.1f sec",tow)
