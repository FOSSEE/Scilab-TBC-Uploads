//Example number 6.10, Page number 120

clc;clear;
close;

//Variable declaration
A=10*10**-6;     //area(m**2)
i=100;    //current(amp)
n=8.5*10**28;    //number of electrons
e=1.6*10**-19;      //charge(c)
//Calculation
vd=i/(n*A*e);     //drift velocity(m/s)
//Result
printf("drift velocity is %.4e m/s",vd)
