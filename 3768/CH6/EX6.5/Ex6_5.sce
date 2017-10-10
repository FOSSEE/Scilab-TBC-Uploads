//Example number 6.5, Page number 117

clc;clear;
close;

//Variable declaration
d=8.92*10**3;     //density(kg/m**3)
rho=1.73*10**-8;    //resistivity(ohm m)
M=63.5;    //atomic weight
N=6.02*10**26;    //avagadro number
e=1.6*10**-19;      //charge(c)
m=9.1*10**-31;      //mass(kg)
//Calculation
n=d*N/M;
mew=1/(rho*n*e);      //mobility(m/Vs)
tow=m/(n*e**2*rho);   //average time(sec)
//Result
printf("mobility is %.3e m/Vs",mew)
printf("\n average time is %.2e sec",tow)
