//Example number 9.14, Page number 209

clc;clear;
close;

//Variable declaration
RH=3.66*10**-4;      //hall coefficient(m*3/c)
rho_i=8.93*10**-3;    //resistivity(ohm m)
e=1.602*10**-19;     //charge(c)
//Calculation
nh=1/(RH*e);      //density of charge carriers(per m**3)
mewh=1/(rho_i*nh*e);     //mobility of charge carriers(m**2/Vs)
//Result
printf("density of charge carriers is %.4e per m^3",nh)
printf("\n mobility of charge carriers is %.3f m^2/Vs",mewh)
