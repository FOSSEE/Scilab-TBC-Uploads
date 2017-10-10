clc//
//
//

//Variable declaration
RH=3.66*10^-4;   //hall coefficient(m^3/coulomb)
e=1.6*10^-19;
Pn=8.93*10^-3;    //resistivity(ohm m)

//Calculation
n=1/(RH*e);      //density of charge carriers(per m^3)
mew_e=RH/Pn;    //mobility of charge carriers(m^2/Vs)

//Result
printf("\n density of charge carriers is %0.3f *10^22 per m^3",n/10^22)
printf("\n mobility of charge carriers is %0.3f m^2 V-1 s-1",mew_e)
